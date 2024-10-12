library default_connector;
import 'package:firebase_data_connect/firebase_data_connect.dart';
import 'dart:convert';

part 'list_movies.dart';

part 'get_movie_by_id.dart';







class DefaultConnector {
  
  
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

