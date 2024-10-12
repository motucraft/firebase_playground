part of default_connector;

class CreateMovieMetadataVariablesBuilder {
  String movieId;
Optional<String> _description = Optional.optional(nativeFromJson, nativeToJson);
Optional<double> _rating = Optional.optional(nativeFromJson, nativeToJson);

  
  FirebaseDataConnect _dataConnect;
  CreateMovieMetadataVariablesBuilder description(String? t) {
this._description.value = t;
return this;
}
CreateMovieMetadataVariablesBuilder rating(double? t) {
this._rating.value = t;
return this;
}

  CreateMovieMetadataVariablesBuilder(this._dataConnect, {required String this.movieId,});
  Deserializer<CreateMovieMetadataData> dataDeserializer = (dynamic json)  => CreateMovieMetadataData.fromJson(jsonDecode(json));
  Serializer<CreateMovieMetadataVariables> varsSerializer = (CreateMovieMetadataVariables vars) => jsonEncode(vars.toJson());
  Future<OperationResult<CreateMovieMetadataData, CreateMovieMetadataVariables>> execute() {
    return this.ref().execute();
  }
  MutationRef<CreateMovieMetadataData, CreateMovieMetadataVariables> ref() {
    CreateMovieMetadataVariables vars=CreateMovieMetadataVariables(movieId: movieId,description: _description,rating: _rating,);

    return _dataConnect.mutation("CreateMovieMetadata", dataDeserializer, varsSerializer, vars);
  }
}


  class CreateMovieMetadataMovieMetadataInsert {
  
   String id;

  
  
    
    
    CreateMovieMetadataMovieMetadataInsert.fromJson(dynamic json):
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

  CreateMovieMetadataMovieMetadataInsert({
    
      required this.id,
    
  });
}



  class CreateMovieMetadataData {
  
   CreateMovieMetadataMovieMetadataInsert movieMetadata_insert;

  
  
    
    
    CreateMovieMetadataData.fromJson(dynamic json):
        movieMetadata_insert = 
 
    CreateMovieMetadataMovieMetadataInsert.fromJson(json['movieMetadata_insert'])
  

        
        
       {
      
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['movieMetadata_insert'] = 
  
      movieMetadata_insert.toJson()
  
;
      
    
    return json;
  }

  CreateMovieMetadataData({
    
      required this.movieMetadata_insert,
    
  });
}



  class CreateMovieMetadataVariables {
  
   String movieId;

  
   late Optional<String>description;

  
   late Optional<double>rating;

  
  
    
    
    CreateMovieMetadataVariables.fromJson(Map<String, dynamic> json):
        movieId = 
 
    nativeFromJson<String>(json['movieId'])
  

        
        
       {
      
        
      
        
          description = Optional.optional(nativeFromJson, nativeToJson);
          description.value = json['description'] == null ? null : 
 
    nativeFromJson<String>(json['description'])
  
;
        
      
        
          rating = Optional.optional(nativeFromJson, nativeToJson);
          rating.value = json['rating'] == null ? null : 
 
    nativeFromJson<double>(json['rating'])
  
;
        
      
    }


  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    
      
      json['movieId'] = 
  
    nativeToJson<String>(movieId)
    
;
      
    
      
        if(description.state == OptionalState.set) {
          json['description'] = description.toJson();
        }
     
    
      
        if(rating.state == OptionalState.set) {
          json['rating'] = rating.toJson();
        }
     
    
    return json;
  }

  CreateMovieMetadataVariables({
    
      required this.movieId,
    
      required this.description,
    
      required this.rating,
    
  });
}







