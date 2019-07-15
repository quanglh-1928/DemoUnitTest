//
//  URLSessionProtocol.swift
//  DogYears
//
//  Created by Quang Ly Hoang on 6/12/19.
//  Copyright © 2019 Quang Ly Hoang. All rights reserved.
//

import Foundation

protocol URLSessionProtocol {
  func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol
}

extension URLSession: URLSessionProtocol {
  
  func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
    
    let task = dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTask
    return task as URLSessionDataTaskProtocol
    
  }
}

extension URLSessionDataTask: URLSessionDataTaskProtocol {

}




