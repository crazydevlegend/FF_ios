//
//  ModelBussinesProfile.swift
//  FriendsField
//
//  Created by Scalelot Technologies on 26/05/22.
//

import Foundation

class ModelBussinesProfile : NSObject {
    
    var Message = ""
    var IsSuccess = false
    var Status = 0
    var Data = ModelBussinesData()
    
    override init() {
        super.init()
    }
    
    init(dic:[String:Any]) {
        
        Status = dic["Status"] as? Int ?? 0
        Message = dic["Message"] as? String ?? ""
        IsSuccess = dic["IsSuccess"] as? Bool ?? false
        Data = ModelBussinesData.init(dic: dic["Data"] as? [String:Any] ?? ["":""])
    }
}

class ModelBussinesData : NSObject {
    
    var _id = ""
    var businessimage = ""
    var name = ""
    var category = ""
    var subCategory = ""
    var Description = ""
    var interestedCategory = ""
    var interestedSubCategory = ""
    var userid = ""
    var brochure = ""
    var createdAt = ""
    var createdBy = ""
    var updatedBy = ""
    var updatedAt = ""
    var longitude = 0.0
    var latitude = 0.0
    var __v = 0

    override init() {
        super.init()
    }
    
    init(dic:[String:Any]) {
        
        _id = dic["_id"] as? String ?? ""
        businessimage = dic["businessimage"] as? String ?? ""
        name = dic["name"] as? String ?? ""
        category = dic["category"] as? String ?? ""
        subCategory = dic["subCategory"] as? String ?? ""
        Description = dic["description"] as? String ?? ""
        interestedCategory = dic["interestedCategory"] as? String ?? ""
        interestedSubCategory = dic["interestedSubCategory"] as? String ?? ""
        userid = dic["userid"] as? String ?? ""
        createdAt = dic["createdAt"] as? String ?? ""
        brochure = dic["brochure"] as? String ?? ""
        createdBy = dic["createdBy"] as? String ?? ""
        updatedBy = dic["updatedBy"] as? String ?? ""
        updatedAt = dic["updatedAt"] as? String ?? ""
        longitude = dic["longitude"] as? Double ?? 0.0
        latitude = dic["latitude"] as? Double ?? 0.0
        __v = dic["__v"] as? Int ?? 0

    }
    
}

