//
//  ModelPersonalProfile.swift
//  FriendsField
//
//  Created by Scalelot Technologies on 25/05/22.
//

import Foundation

class ModelPersonalProfile : NSObject {
    
    var Message = ""
    var IsSuccess = false
    var Status = 0
    var Data = 0
    
    override init() {
        super.init()
    }
    
    init(dic:[String:Any]) {
        
        Status = dic["Status"] as? Int ?? 0
        Message = dic["Message"] as? String ?? ""
        IsSuccess = dic["IsSuccess"] as? Bool ?? false
        Data = dic["Data"] as? Int ?? 0
    }
}

class ModelPersonalProfileData : NSObject {
    
    var Message = ""
    var IsSuccess = false
    var Status = 0
    var Data = ModelUserData()
    
    override init() {
        super.init()
    }
    
    init(dic:[String:Any]) {
        
        Status = dic["Status"] as? Int ?? 0
        Message = dic["Message"] as? String ?? ""
        IsSuccess = dic["IsSuccess"] as? Bool ?? false
        Data = ModelUserData.init(dic: dic["Data"] as? [String:Any] ?? ["":""])
    }
}

class ModelUploadImage : NSObject {
    
    var Message = ""
    var IsSuccess = false
    var Status = 0
    var Data = ModelUploadImageData()
    
    override init() {
        super.init()
    }
    
    init(dic:[String:Any]) {
        
        Status = dic["Status"] as? Int ?? 0
        Message = dic["Message"] as? String ?? ""
        IsSuccess = dic["IsSuccess"] as? Bool ?? false
        Data = ModelUploadImageData.init(dic: dic["Data"] as? [String:Any] ?? ["":""])
    }
}

class ModelUploadImageData : NSObject {
    
    var s3_url = ""
    var Key = ""
    
    override init() {
        super.init()
    }
    
    init(dic:[String:Any]) {
        
        s3_url = dic["s3_url"] as? String ?? ""
        Key = dic["Key"] as? String ?? ""
    }
}
