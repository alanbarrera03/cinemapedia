import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/infrastructure/datasources/actordb_datasources.dart';
import 'package:cinemapedia/infrastructure/repositories/actor_repository_impl.dart';



final actorsRepositoryProvider = Provider( ( ref ) {

  return ActorRepositoryImpl( ActorMovieDbDatasource() );

} );