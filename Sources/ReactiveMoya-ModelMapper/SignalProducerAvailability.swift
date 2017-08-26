//
//  SignalProducerAvailability.swift
//  Pods
//
//  Created by sunshinejr on 26.08.2017.
//  Copyright © 2017 sunshinejr. All rights reserved.
//

import ReactiveSwift
import Moya
import Mapper
#if !COCOAPODS
    import Moya_ModelMapper
#endif

/// Extension for processing Responses into Mappable objects through ObjectMapper
extension SignalProducerProtocol where Value == Moya.Response, Error == MoyaError {

    @available(*, unavailable, renamed: "map(to:keyPath:)")
    public func mapObject<T: Mappable>(type: T.Type, keyPath: String? = nil) -> SignalProducer<T, MoyaError> { fatalError() }

    @available(*, unavailable, renamed: "map(to:keyPath:)")
    public func mapArray<T: Mappable>(type: T.Type, keyPath: String? = nil) -> SignalProducer<[T], MoyaError> { fatalError() }
}
