import UIKit

struct Movie:Equatable{
    let name:String
    let release_date : String
    let IMDB_ratting : Double
    let description : String
}

var movies = [Movie]()

let Specter = Movie(name: "Specter", release_date: "November 6, 2015", IMDB_ratting: 6.8, description: "James Bond receives an obscure message from M about a sinister organisation, 'SPECTRE'. With the help of Madeleine, he uncovers the conspiracy, only to face an ugly truth.")

let NoTimeToDie = Movie(name: "No Time to Die", release_date: "September 30, 2021", IMDB_ratting: 7.4, description: "James Bond is enjoying a tranquil life in Jamaica after leaving active service. However, his peace is short-lived as his old CIA friend, Felix Leiter, shows up and asks for help.")

let NewHope = Movie(name: "Star Wars: A New Hope ", release_date: "May 25, 1977", IMDB_ratting: 8.6, description: "Princess Leia gets abducted by the insidious Darth Vader. Luke Skywalker then teams up with a Jedi Knight, a pilot and two droids to free her and to save the galaxy from the violent Galactic Empire.")

let EmpireStrikesBack = Movie(name: "Star Wars: The Empire Strikes Back ", release_date: "May 21, 1980", IMDB_ratting: 8.7, description: "Darth Vader is adamant about turning Luke Skywalker to the dark side. Master Yoda trains Luke to become a Jedi Knight while his friends try to fend off the Imperial fleet.")

let ReturnOFTheJedi = Movie(name: "Star Wars: Return of the Jedi", release_date: "May 25, 1983", IMDB_ratting: 8.3, description: "Luke Skywalker attempts to bring his father back to the light side of the Force. At the same time, the rebels hatch a plan to destroy the second Death Star.")

let PhantomMenanace = Movie(name: "Star Wars: The Phantom Menace ", release_date: "May 19, 1999", IMDB_ratting: 6.5, description: "Jedi Knights Qui-Gon Jinn and Obi-Wan Kenobi set out to stop the Trade Federation from invading Naboo. While travelling, they come across a gifted boy, Anakin, and learn that the Sith have returned.")

movies.append(NoTimeToDie)
movies.append(Specter)
movies.append(NewHope)
movies.append(EmpireStrikesBack)
movies.append(ReturnOFTheJedi)
movies.append(PhantomMenanace)

class Matcher{
    let likedMovies1:[Movie]?
    let likedMovies2:[Movie]?
    
    init(movies1:[Movie]?, movies2:[Movie]?) {
        self.likedMovies1 = movies1
        self.likedMovies2 = movies2
    }
}
