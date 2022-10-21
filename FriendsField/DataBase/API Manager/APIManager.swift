//
//  APIManager.swift

import UIKit
import Alamofire


let headers: HTTPHeaders = [
    .accept("application/json")
]

class APIManager: NSObject {
    
    // API Get Call Manager
    class func APIGetCalling(_ url: String, headers: HTTPHeaders? = nil, isShowProgress:Bool = true, success:@escaping (Any)->()) {
        
        if isShowProgress {
            showProgress("")
        }
        
        if (isConnectedToNetwork()) {
            AF.request(url, headers: headers).responseJSON { response in
                debugPrint(response)
                
                if isShowProgress {
                    dismissProgress()
                }
                
                if let json = response.value {
                    success(json)
                } else if response.error != nil {
                    dismissProgress()
                    
                } else {
                    dismissProgress()
                    
                }
            }
        }
        else {
            if isShowProgress {
                dismissProgress()
            }
        }
    }
    
    // API Post Call Manager
    class func APIPostCalling(_ url: String, headers: HTTPHeaders? = nil, params:[String : Any]? = nil,isShowProgress:Bool = true, success:@escaping (Any)->()) {
        
        if isShowProgress {
            showProgress("")
        }
        
        if (isConnectedToNetwork()) {
            
            AF.request(url, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
                debugPrint(response.result)
                print("\n\n\nRequest URL :- \(url)\nParameters :- \(params)")
                
                if isShowProgress {
                    dismissProgress()
                }
                
                if let json = response.value {
                    success(json)
                } else if response.error != nil {
                    dismissProgress()
                } else {
                    dismissProgress()
                }
            }
        }
        else {
            if isShowProgress {
                dismissProgress()
            }
        }
    }
    
    // API PUT Call Manager
    class func APIPutCalling(_ url: String, headers: HTTPHeaders? = nil, params:[String : Any]? = nil,isShowProgress:Bool = true, success:@escaping (Any)->()) {
        
        if isShowProgress {
            showProgress("")
        }
        
        if (isConnectedToNetwork()) {
            
            AF.request(url, method: .put, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
                debugPrint(response.result)
                print("\n\n\nRequest URL :- \(url)\nParameters :- \(params)")
                
                if isShowProgress {
                    dismissProgress()
                }
                
                if let json = response.value {
                    success(json)
                } else if response.error != nil {
                    dismissProgress()
                } else {
                    dismissProgress()
                }
            }
        }
        else {
            if isShowProgress {
                dismissProgress()
            }
        }
    }
    
    // API Delete Call Manager
    class func APIDeleteCalling(_ url: String, headers: HTTPHeaders? = nil, params:[String : Any]? = nil,isShowProgress:Bool = true, success:@escaping (Any)->()) {
        
        if isShowProgress {
            showProgress("")
        }
        
        if (isConnectedToNetwork()) {
            
            AF.request(url, method: .delete, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
                debugPrint(response.result)
                print("\n\n\nRequest URL :- \(url)\nParameters :- \(params)")
                
                if isShowProgress {
                    dismissProgress()
                }
                
                if let json = response.value {
                    success(json)
                } else if response.error != nil {
                    dismissProgress()
                } else {
                    dismissProgress()
                }
            }
        }
        else {
            if isShowProgress {
                dismissProgress()
            }
        }
    }
    
    // API Post Call Manager
    class func APIPostCallingWithProfile(_ url: String, headers: HTTPHeaders? = nil, params:[String : Any],isShowProgress:Bool = true,image: Data?, fileName: String, mimeType:String, success:@escaping (NSDictionary)->()) {
        
        if isShowProgress {
            showProgress("")
        }
        
        if (isConnectedToNetwork()) {
            
            AF.upload(multipartFormData: { (multipart: MultipartFormData) in
                
                multipart.append(image ?? Data(), withName: "file", fileName: fileName, mimeType: mimeType)
                
                for (key, value) in params {
                    multipart.append((value as? String ?? "").data(using: .utf8)!, withName: key)
                }
            }, to: url, method: .post, headers: headers).responseJSON { (response) in
                
                if isShowProgress {
                    dismissProgress()
                }
                if let json = response.value {
                    success(json as! NSDictionary)
                } else if response.error != nil {
                    dismissProgress()
                } else {
                    dismissProgress()
                }
            }
        }
        else {
            if isShowProgress {
                dismissProgress()
            }
        }
    }
    
    class func APIPatchCalling(_ url: String, headers: HTTPHeaders? = nil, params:[String : Any]? = nil,isShowProgress:Bool = true, success:@escaping (Any)->()) {
        
        if isShowProgress {
            showProgress("")
        }
        
        if (isConnectedToNetwork()) {
            
            AF.request(url, method: .patch, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
                debugPrint(response.result)
                print("\n\n\nRequest URL :- \(url)\nParameters :- \(params)")
                
                if isShowProgress {
                    dismissProgress()
                }
                
                if let json = response.value {
                success(json)
                } else if response.error != nil {
                    dismissProgress()
                } else {
                    dismissProgress()
                }
            }
        }
        else {
            if isShowProgress {
                dismissProgress()
            }
        }
    }
    
}

