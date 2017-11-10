package vo {
    
    [Bindable]
    public class IMDbvo {
        
        public static function buildFromObject(o:Object):IMDbvo {
            var imdbvo:IMDbvo = new IMDbvo(o.Actors, o.Director, o.Genre, o.ID, o.Plot, o.Rating, o.
                Runtime, o.Title, o.Year, o.Writer, o.Poster);
            
            return imdbvo
        }
        
        public function IMDbvo(actors:String, director:String, genre:String, id:String, plot:String,
            rating:String, runtime:String, title:String, year:String, writer:String = "", poster:String =
            "") {
            this.actors = actors;
            this.director = director;
            this.genre = genre;
            this.id = id;
            this.plot = plot;
            this.rating = Number(rating);
            this.runtime = runtime;
            this.us = title;
            this.year = year;
            
            this.writer = writer;
            this.poster = poster;
        }
        
        public var actors:String;
        public var director:String;
        public var genre:String;
        public var id:String;
        public var plot:String;
        public var poster:String;
        public var rating:Number;
        public var runtime:String;
        public var us:String;
        public var writer:String;
        public var year:String;
        
        public function toString():String {
            return us + ' ' + actors + ' ' + director + ' ' + genre + ' ' + id + ' ' + plot + ' ' + rating +
                ' ' + runtime + ' ' + year + ' ' + writer + ' ' + poster;
        }
    }
}
