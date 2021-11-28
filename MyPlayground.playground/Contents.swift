import UIKit

//Defining the type Movie that adheres to the protocol Equatabale
struct Movie:Equatable{
    let name:String
    let release_date : String
    let IMDB_ratting : Double
    let description : String
}

//Initialize an empty array of type Movie
var movies = [Movie]()

//Defining a few movies
let Specter = Movie(name: "Specter", release_date: "November 6, 2015", IMDB_ratting: 6.8, description: "James Bond receives an obscure message from M about a sinister organisation, 'SPECTRE'. With the help of Madeleine, he uncovers the conspiracy, only to face an ugly truth.")

let NoTimeToDie = Movie(name: "No Time to Die", release_date: "September 30, 2021", IMDB_ratting: 7.4, description: "James Bond is enjoying a tranquil life in Jamaica after leaving active service. However, his peace is short-lived as his old CIA friend, Felix Leiter, shows up and asks for help.")

let NewHope = Movie(name: "Star Wars: A New Hope ", release_date: "May 25, 1977", IMDB_ratting: 8.6, description: "Princess Leia gets abducted by the insidious Darth Vader. Luke Skywalker then teams up with a Jedi Knight, a pilot and two droids to free her and to save the galaxy from the violent Galactic Empire.")

let EmpireStrikesBack = Movie(name: "Star Wars: The Empire Strikes Back ", release_date: "May 21, 1980", IMDB_ratting: 8.7, description: "Darth Vader is adamant about turning Luke Skywalker to the dark side. Master Yoda trains Luke to become a Jedi Knight while his friends try to fend off the Imperial fleet.")

let ReturnOFTheJedi = Movie(name: "Star Wars: Return of the Jedi", release_date: "May 25, 1983", IMDB_ratting: 8.3, description: "Luke Skywalker attempts to bring his father back to the light side of the Force. At the same time, the rebels hatch a plan to destroy the second Death Star.")

let PhantomMenanace = Movie(name: "Star Wars: The Phantom Menace ", release_date: "May 19, 1999", IMDB_ratting: 6.5, description: "Jedi Knights Qui-Gon Jinn and Obi-Wan Kenobi set out to stop the Trade Federation from invading Naboo. While travelling, they come across a gifted boy, Anakin, and learn that the Sith have returned.")

//Filling the movies array
movies.append(NoTimeToDie)
movies.append(Specter)
movies.append(NewHope)
movies.append(EmpireStrikesBack)
movies.append(ReturnOFTheJedi)
movies.append(PhantomMenanace)

//Defining protocol Matchable
protocol Matchable{
    var likedMovies1:[Movie]? { get }
    var likedMovies2:[Movie]? { get }
    func generate() -> Movie
}

//Defining class Matcher that adheres to the Matchable protocol
class Matcher:Matchable{
    
    //Define two like Movie variables with optional type of Movie
    var likedMovies1:[Movie]?
    var likedMovies2:[Movie]?
    
    //Initilize likedMovies
    init(movies1:[Movie]?, movies2:[Movie]?) {
        self.likedMovies1 = movies1
        self.likedMovies2 = movies2
    }
}

//Extend Matcher to include generate function
extension Matcher{
    //iterate through both likedMovies and check if the movies are same
    func generate() -> Movie {
        for movie1 in likedMovies1!{
            for movie2 in likedMovies2!{
                if(movie1 == movie2){
                    return movie1
                }
            }
        }
        return movies.randomElement()!
    }
}

//Defining class Card
class Card{
    //Defining the stored values
    let movieName:String
    let movieRelease : String
    let movieRatting : Double
    let movieDescription : String
    
    //Defining a computed property data
    var data:  String  {
        get{
            return "The movie \(movieName) was released on \(movieRelease). It's summary is \(movieDescription) It was so liked by fans that it's IMDB ratting is \(movieRatting)"
        }
    }
    //Intilizer to initialize the card with the movie data
    init(movie:Movie) {
        self.movieName = movie.name
        self.movieRelease = movie.release_date
        self.movieRatting = movie.IMDB_ratting
        self.movieDescription = movie.description
    }
}

//instansiate likedMovies for Stefan and Jude
let StefanMovies = [Specter,NoTimeToDie,EmpireStrikesBack]
let JudeMovies = [PhantomMenanace,ReturnOFTheJedi,NoTimeToDie]

//Initialize the class Matcher
let matcher = Matcher(movies1: StefanMovies, movies2: JudeMovies)
//Store the selected Movie after running matcher.generate
let selectedMovie = Card(movie: matcher.generate())
print(selectedMovie.data)
