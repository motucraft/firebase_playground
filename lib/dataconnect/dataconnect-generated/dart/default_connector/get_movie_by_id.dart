part of default_connector;

class GetMovieByIdVariablesBuilder {
  String id;

  
  FirebaseDataConnect _dataConnect;
  
  GetMovieByIdVariablesBuilder(this._dataConnect, {required String this.id,});
  Deserializer<GetMovieByIdData> dataDeserializer = (dynamic json)  => GetMovieByIdData.fromJson(jsonDecode(json));
  Serializer<GetMovieByIdVariables> varsSerializer = (GetMovieByIdVariables vars) => jsonEncode(vars.toJson());
  Future<QueryResult<GetMovieByIdData, GetMovieByIdVariables>> execute() {
    return this.ref().execute();
  }
  QueryRef<GetMovieByIdData, GetMovieByIdVariables> ref() {
    GetMovieByIdVariables vars=GetMovieByIdVariables(id: id,);

    return _dataConnect.query("GetMovieById", dataDeserializer, varsSerializer, vars);
  }
}


  class GetMovieByIdMovie {
  
   String id;

  
   String title;

  
   String imageUrl;

  
   String? genre;

  
   GetMovieByIdMovieMetadata? metadata;

  
  
    
    
    
    GetMovieByIdMovie.fromJson(dynamic json):
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
  

        
        ,
      
        metadata = json['metadata'] == null ? null : 
 
    GetMovieByIdMovieMetadata.fromJson(json['metadata'])
  

        
        
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
      
    
      
        if (metadata != null) {
          json['metadata'] = 
  
      metadata!.toJson()
  
;
        }
      
    
    return json;
  }

  GetMovieByIdMovie({
    
      required this.id,
    
      required this.title,
    
      required this.imageUrl,
    
       this.genre,
    
       this.metadata,
    
  });
}



  class GetMovieByIdMovieMetadata {
  
   double? rating;

  
   int? releaseYear;

  
   String? description;

  
  
    
    
    
    GetMovieByIdMovieMetadata.fromJson(dynamic json):
        rating = json['rating'] == null ? null : 
 
    nativeFromJson<double>(json['rating'])
  

        
        ,
      
        releaseYear = json['releaseYear'] == null ? null : 
 
    nativeFromJson<int>(json['releaseYear'])
  

        
        ,
      
        description = json['description'] == null ? null : 
 
    nativeFromJson<String>(json['description'])
  

        
        
       {
      
        
      
        
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
        if (rating != null) {
          json['rating'] = 
  
    nativeToJson<double?>(rating)
    
;
        }
      
    
      
        if (releaseYear != null) {
          json['releaseYear'] = 
  
    nativeToJson<int?>(releaseYear)
    
;
        }
      
    
      
        if (description != null) {
          json['description'] = 
  
    nativeToJson<String?>(description)
    
;
        }
      
    
    return json;
  }

  GetMovieByIdMovieMetadata({
    
       this.rating,
    
       this.releaseYear,
    
       this.description,
    
  });
}



  class GetMovieByIdData {
  
   GetMovieByIdMovie? movie;

  
  
    
    
    
    GetMovieByIdData.fromJson(dynamic json):
        movie = json['movie'] == null ? null : 
 
    GetMovieByIdMovie.fromJson(json['movie'])
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
        if (movie != null) {
          json['movie'] = 
  
      movie!.toJson()
  
;
        }
      
    
    return json;
  }

  GetMovieByIdData({
    
       this.movie,
    
  });
}



  class GetMovieByIdVariables {
  
   String id;

  
  
    
    
     @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
    
    
    GetMovieByIdVariables.fromJson(Map<String, dynamic> json):
        id = 
 
    nativeFromJson<String>(json['id'])
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['id'] = 
  
    nativeToJson<String>(id)
    
;
      
    
    return json;
  }

  GetMovieByIdVariables({
    
      required this.id,
    
  });
}







