//
//  MockSession.swift
//  DogYears
//
//  Created by Quang Ly Hoang on 6/12/19.
//  Copyright © 2019 Quang Ly Hoang. All rights reserved.
//

import Foundation

class MockSession: URLSessionProtocol {
  func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
    completionHandler(Data(), nil, nil)
    return MockDataTask()
  }
}
