@isTest
public class MovieSearcherController_Test {
    @isTest static void testSearchMovies() {
        String json = '{\"Search\":[{\"Title\":\"Batman v Superman: Dawn of Justice\",\"Year\":\"2016\",\"imdbID\":\"tt2975590\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BYThjYzcyYzItNTVjNy00NDk0LTgwMWQtYjMwNmNlNWJhMzMyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg\"},{\"Title\":\"Superman Returns\",\"Year\":\"2006\",\"imdbID\":\"tt0348150\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BNzY2ZDQ2MTctYzlhOC00MWJhLTgxMmItMDgzNDQwMDdhOWI2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg\"},{\"Title\":\"Superman\",\"Year\":\"1978\",\"imdbID\":\"tt0078346\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BMzA0YWMwMTUtMTVhNC00NjRkLWE2ZTgtOWEzNjJhYzNiMTlkXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg\"},{\"Title\":\"Superman II\",\"Year\":\"1980\",\"imdbID\":\"tt0081573\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BMWUzNDJjMDUtNGEzMi00YThlLTlkMmEtNjVlOGQwOWM3MjM3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg\"},{\"Title\":\"Superman III\",\"Year\":\"1983\",\"imdbID\":\"tt0086393\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BMzI3ZDllMTctNmI2Mi00OGQ4LTk2ZTQtYTJhMjA5ZGI2YmRkXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg\"},{\"Title\":\"Superman IV: The Quest for Peace\",\"Year\":\"1987\",\"imdbID\":\"tt0094074\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BMmIwZWY1YTYtNDlhOS00NDRmLWI4MzItNjk2NDc1N2NhYzNlXkEyXkFqcGdeQXVyNTUyMzE4Mzg@._V1_SX300.jpg\"},{\"Title\":\"Superman/Batman: Apocalypse\",\"Year\":\"2010\",\"imdbID\":\"tt1673430\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BMjk3ODhmNjgtZjllOC00ZWZjLTkwYzQtNzc1Y2ZhMjY2ODE0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\"},{\"Title\":\"Superman/Batman: Public Enemies\",\"Year\":\"2009\",\"imdbID\":\"tt1398941\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BZDc5NTFiMzgtZWJiOS00N2M1LWJmOGYtZmNjMzFhMzcxZjRiXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\"},{\"Title\":\"Lois & Clark: The New Adventures of Superman\",\"Year\":\"1993–1997\",\"imdbID\":\"tt0106057\",\"Type\":\"series\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BZTU1ZGFjNzEtZWYzZC00ZmI0LTg2NmMtN2YyNTY4YzhlODIyXkEyXkFqcGdeQXVyMjExMjk0ODk@._V1_SX300.jpg\"},{\"Title\":\"Superman/Doomsday\",\"Year\":\"2007\",\"imdbID\":\"tt0934706\",\"Type\":\"movie\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BZjU4MzIyZWUtNWQ4Yy00YTU4LTk5NjUtNDBiNDkxZTVlZDgwXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_SX300.jpg\"}],\"totalResults\":\"215\",\"Response\":\"True\"}'; 
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGeneratorForMovies());
        MovieResultsParser parser = MovieSearcherController.searchMovies('Batman');
    }
    
    @isTest static void testSearchMovie() {
        String json = '{\"Title\":\"Batman Beyond: Return of the Joker\",\"Year\":\"2000\",\"Rated\":\"PG-13\",\"Released\":\"N/A\",\"Runtime\":\"76 min\",\"Genre\":\"Animation, Action, Crime, Sci-Fi, Thriller\",\"Director\":\"Curt Geda\",\"Writer\":\"Bob Kane (character created by: Batman), Paul Dini (story), Glen Murakami (story), Bruce Timm (story), Paul Dini (screenplay)\",\"Actors\":\"Will Friedle, Kevin Conroy, Mark Hamill, Angie Harmon\",\"Plot\":\"The Joker is back with a vengeance, and Gotham\'s newest Dark Knight needs answers as he stands alone to face Gotham\'s most infamous Clown Prince of Crime.\",\"Language\":\"English\",\"Country\":\"USA\",\"Awards\":\"3 wins & 5 nominations.\",\"Poster\":\"https://m.media-amazon.com/images/M/MV5BNmRmODEwNzctYzU1MS00ZDQ1LWI2NWMtZWFkNTQwNDg1ZDFiXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_SX300.jpg\",\"Ratings\":[{\"Source\":\"Internet Movie Database\",\"Value\":\"7.8/10\"},{\"Source\":\"Rotten Tomatoes\",\"Value\":\"90%\"}],\"Metascore\":\"N/A\",\"imdbRating\":\"7.8\",\"imdbVotes\":\"21,428\",\"imdbID\":\"tt0233298\",\"Type\":\"movie\",\"DVD\":\"12 Dec 2000\",\"BoxOffice\":\"N/A\",\"Production\":\"Warner Home Video\",\"Website\":\"N/A\",\"Response\":\"True\"}';
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGeneratorForMovie());
        MovieResultParser parser = MovieSearcherController.searchMovie('Batman');
    }

}