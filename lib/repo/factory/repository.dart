
import 'package:itunes_tracks/repo/factory/network_repository.dart';
import 'package:itunes_tracks/repo/managers/track_manager.dart';
// import 'test_repository.dart';

enum _Implementation {
    test,
    networked
}

abstract class Repository {
    TrackManager get trackManager;

    static final gatewayImplementation = _Implementation.networked;

    static Repository? _repository;

    static get repository {
        if(_repository != null) return _repository;
        switch(gatewayImplementation) {
        // case _Implementation.test:
        //     _repository = TestRepository();
        //     break;
        case _Implementation.networked:
            _repository =  NetworkRepository();
            break;
        }
        return _repository;
    }
}