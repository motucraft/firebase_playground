part of default_connector;

class ListMoviesVariablesBuilder {
  
  
  FirebaseDataConnect _dataConnect;
  
  ListMoviesVariablesBuilder(this._dataConnect, );
  Deserializer<ListMoviesData> dataDeserializer = (dynamic json)  => ListMoviesData.fromJson(jsonDecode(json));
  
  Future<QueryResult<ListMoviesData, void>> execute() {
    return this.ref().execute();
  }
  QueryRef<ListMoviesData, void> ref() {
    
    return _dataConnect.query("ListMovies", dataDeserializer, emptySerializer, null);
  }
}


  class ListMoviesMovies {
  
   String id;

  
   String title;

  
   String imageUrl;

  
   String? genre;

  
  
    
    
    
    ListMoviesMovies.fromJson(dynamic json):
        id = 
 
    nativeFromJson<String>(json['id'])
  

        
        ,
      
        title = 
 
    nativeFromJson<String>(json['title'])
  

        
        ,
      
        imageUrl = 
 
    nativeFromJson<String>(json['imageUrl'])
  

        
        ,
      
        genre = json['genre'] == null ? null : 
 
    nativeFromJson<String>(json['genre'])
  

        
        
       {
      
        
      
        
      
        
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['id'] = 
  
    nativeToJson<String>(id)
    
;
      
    
      
      json['title'] = 
  
    nativeToJson<String>(title)
    
;
      
    
      
      json['imageUrl'] = 
  
    nativeToJson<String>(imageUrl)
    
;
      
    
      
        if (genre != null) {
          json['genre'] = 
  
    nativeToJson<String?>(genre)
    
;
        }
      
    
    return json;
  }

  ListMoviesMovies({
    
      required this.id,
    
      required this.title,
    
      required this.imageUrl,
    
       this.genre,
    
  });
}



  class ListMoviesData {
  
   List<ListMoviesMovies> movies;

  
  
    
    
    
    ListMoviesData.fromJson(dynamic json):
        movies = 
 
    
      (json['movies'] as List<dynamic>)
        .map((e) => ListMoviesMovies.fromJson(e))
        .toList()
    
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['movies'] = 
  
    
      movies.map((e) => e.toJson()).toList()
    
  
;
      
    
    return json;
  }

  ListMoviesData({
    
      required this.movies,
    
  });
}







