library default_connector;
import 'package:firebase_data_connect/firebase_data_connect.dart';
import 'dart:convert';

part 'create_movie.dart';

part 'create_movie_metadata.dart';

part 'list_movies.dart';

part 'get_movie_by_id.dart';







class DefaultConnector {
  
  
  CreateMovieVariablesBuilder createMovie ({required String title,required String genre,required String imageUrl,}) {
    return CreateMovieVariablesBuilder(dataConnect, title: title,genre: genre,imageUrl: imageUrl,);
  }
  
  
  CreateMovieMetadataVariablesBuilder createMovieMetadata ({required String movieId,}) {
    return CreateMovieMetadataVariablesBuilder(dataConnect, movieId: movieId,);
  }
  
  
  ListMoviesVariablesBuilder listMovies () {
    return ListMoviesVariablesBuilder(dataConnect, );
  }
  
  
  GetMovieByIdVariablesBuilder getMovieById ({required String id,}) {
    return GetMovieByIdVariablesBuilder(dataConnect, id: id,);
  }
  

  static ConnectorConfig connectorConfig = ConnectorConfig(
    'asia-northeast1',
    'default',
    'playground-data-connect',
  );

  DefaultConnector({required this.dataConnect});
  static DefaultConnector get instance {
    return DefaultConnector(
        dataConnect: FirebaseDataConnect.instanceFor(
            connectorConfig: connectorConfig,
            sdkType: CallerSDKType.generated));
  }

  FirebaseDataConnect dataConnect;
}

