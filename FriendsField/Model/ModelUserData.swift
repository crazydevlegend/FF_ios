//
//  ModelUserData.swift
//  FriendsField
//
//  Created by iMac on 26/08/22.
//

import Foundation

class ModelUserData : NSObject  {
    
    var _id = ""
    var profileimage = ""
    var contact_no = ""
    var fullName = ""
    var userName = ""
    var nickName = ""
    var emailId = ""
    var dob = ""
    var gender = ""
    var interestedin = ""
    var aboutUs = ""
    var areaRange = 0
    var targetAudienceAgeMin = 0
    var targetAudienceAgeMax = 0
    var last_sent_otp = ""
    var otp_timestamp = 0
    var createdAt = ""
    var updatedAt = ""
    var __v = 0
    var latitude = 0.0
    var longitude = 0.0
    var hobbies = [""]
    var socialMediaLinks = [ModelSocialMediaLinks]()

    override init() {
        super.init()
    }
    
    init(dic:[String:Any]) {
        
        _id = dic["_id"] as? String ?? ""
        profileimage = dic["profileimage"] as? String ?? ""
        contact_no = dic["contact_no"] as? String ?? ""
        fullName = dic["fullName"] as? String ?? ""
        userName = dic["userName"] as? String ?? ""
        nickName = dic["nickName"] as? String ?? ""
        emailId = dic["emailId"] as? String ?? ""
        dob = dic["dob"] as? String ?? ""
        gender = dic["gender"] as? String ?? ""
        interestedin = dic["interestedin"] as? String ?? ""
        aboutUs = dic["aboutUs"] as? String ?? ""
        last_sent_otp = dic["last_sent_otp"] as? String ?? ""
        createdAt = dic["createdAt"] as? String ?? ""
        updatedAt = dic["updatedAt"] as? String ?? ""
        targetAudienceAgeMin = dic["targetAudienceAgeMin"] as? Int ?? 0
        targetAudienceAgeMax = dic["targetAudienceAgeMax"] as? Int ?? 0
        areaRange = dic["areaRange"] as? Int ?? 0
        otp_timestamp = dic["otp_timestamp"] as? Int ?? 0
        __v = dic["__v"] as? Int ?? 0
        latitude = dic["latitude"] as? Double ?? 0.0
        longitude = dic["longitude"] as? Double ?? 0.0
        hobbies = dic["hobbies"] as? [String] ?? [""]
        if let arr = dic["socialMediaLinks"] as? [[String:Any]] {
            socialMediaLinks = arr.map(ModelSocialMediaLinks.init)
        }
    }

}

class ModelSocialMediaLinks : NSObject {
    
    var id = ""
    var platform = ""
    var link = ""
    var active = ""
    var createdAt = ""
    var updatedAt = ""
    var user_id = ""
    
    init(dic:[String:Any]) {
        
        id = dic["id"] as? String ?? ""
        platform = dic["platform"] as? String ?? ""
        link = dic["link"] as? String ?? ""
        active = dic["active"] as? String ?? ""
        createdAt = dic["createdAt"] as? String ?? ""
        updatedAt = dic["updatedAt"] as? String ?? ""
        user_id = dic["user_id"] as? String ?? ""
    }
}

