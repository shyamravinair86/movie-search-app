public with sharing class MovieSearcherController {
    @AuraEnabled(cacheable=true)
    public static List<MovieWrapper> searchMovies(String searchTerm) {
        List<MovieWrapper> movies = new List<MovieWrapper>();
        if(String.isEmpty(searchTerm)){
            Http http = new Http();
            String url = '&t= '+searchTerm;

            HttpRequest request = new HttpRequest();
            //request.setEndpoint('callout:OMDB_API'+url);
            request.setEndpoint('http://www.omdbapi.com/?apikey=4fe98cb1'+url);
            request.setHeader('Content-Type', 'application/json');
            request.setMethod('GET');

            HttpResponse response = http.send(request);

            if(response.getStatusCode() == 200) {
                movies = (List<MovieWrapper>) JSON.deserialize(response.getBody(), MovieWrapper.class);
            }
        }
        return movies;
    } 

    public class MovieWrapper{
		public String Title;	//Joker
		public String Year;	//2019
		public String Rated;	//R
		public String Released;	//04 Oct 2019
		public String Runtime;	//121 min
		public String Genre;	//Crime, Drama, Thriller
		public String Director;	//Todd Phillips
		public String Writer;	//Todd Phillips, Scott Silver
		public String Actors;	//Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy
		public String Plot;	//A gritty character study of Arthur Fleck, a man disregarded by society.
		public String Language;	//English
		public String Country;	//USA, Canada
		public String Awards;	//N/A
		public String Poster;	//https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg
		public cls_Ratings[] Ratings;
		public String Metascore;	//58
		public String imdbRating;	//9.1
		public String imdbVotes;	//87,202
		public String imdbID;	//tt7286456
		public String Type;	//movie
		public String DVD;	//N/A
		public String BoxOffice;	//N/A
		public String Production;	//Warner Bros. Pictures
		public String Website;	//N/A
		public String Response;	//True
	}
    
	public class cls_Ratings {
		public String Source;	//Internet Movie Database
		public String Value;	//9.1/10
	}
}