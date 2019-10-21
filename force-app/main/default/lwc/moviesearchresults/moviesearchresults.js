import { LightningElement, api, wire, track } from 'lwc';
import getMovies from '@salesforce/apex/MovieSearcherController.searchMovies';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Moviesearchresults extends LightningElement {
    @api moviesearchtext;
    @track movies;

    @wire(getMovies, {searchTerm: '$moviesearchtext'}) 
    wiredMovies({data, error}) {
        console.log('movie ', data);
        if(data) {
            this.movies = data;
        }
        else if(error) {
            this.showToast('Movies not found!!', error.body.message, 'error');
        }
    }

    showToast(title, message, variant){
        const evt = new ShowToastEvent({
            title : title,
            message : message,
            variant : variant,
        });
        this.dispatchEvent(evt);
    }

    get moviesFound() {
        if(this.movies) {
            return true;
        }
        return false;
    }
    
}