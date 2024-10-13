part of default_connector;

class CreateMovieVariablesBuilder {
  String title;
String genre;
String imageUrl;

  
  FirebaseDataConnect _dataConnect;
  
  CreateMovieVariablesBuilder(this._dataConnect, {required String this.title,required String this.genre,required String this.imageUrl,});
  Deserializer<CreateMovieData> dataDeserializer = (dynamic json)  => CreateMovieData.fromJson(jsonDecode(json));
  Serializer<CreateMovieVariables> varsSerializer = (CreateMovieVariables vars) => jsonEncode(vars.toJson());
  Future<OperationResult<CreateMovieData, CreateMovieVariables>> execute() {
    return this.ref().execute();
  }
  MutationRef<CreateMovieData, CreateMovieVariables> ref() {
    CreateMovieVariables vars=CreateMovieVariables(title: title,genre: genre,imageUrl: imageUrl,);

    return _dataConnect.mutation("CreateMovie", dataDeserializer, varsSerializer, vars);
  }
}


  class CreateMovieMovieInsert {
  
   String id;

  
  
    
    
    CreateMovieMovieInsert.fromJson(dynamic json):
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

  CreateMovieMovieInsert({
    
      required this.id,
    
  });
}



  class CreateMovieData {
  
   CreateMovieMovieInsert movie_insert;

  
  
    
    
    CreateMovieData.fromJson(dynamic json):
        movie_insert = 
 
    CreateMovieMovieInsert.fromJson(json['movie_insert'])
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['movie_insert'] = 
  
      movie_insert.toJson()
  
;
      
    
    return json;
  }

  CreateMovieData({
    
      required this.movie_insert,
    
  });
}



  class CreateMovieVariables {
  
   String title;

  
   String genre;

  
   String imageUrl;

  
  
    
    
    CreateMovieVariables.fromJson(Map<String, dynamic> json):
        title = 
 
    nativeFromJson<String>(json['title'])
  

        
        ,
      
        genre = 
 
    nativeFromJson<String>(json['genre'])
  

        
        ,
      
        imageUrl = 
 
    nativeFromJson<String>(json['imageUrl'])
  

        
        
       {
      
        
      
        
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['title'] = 
  
    nativeToJson<String>(title)
    
;
      
    
      
      json['genre'] = 
  
    nativeToJson<String>(genre)
    
;
      
    
      
      json['imageUrl'] = 
  
    nativeToJson<String>(imageUrl)
    
;
      
    
    return json;
  }

  CreateMovieVariables({
    
      required this.title,
    
      required this.genre,
    
      required this.imageUrl,
    
  });
}







