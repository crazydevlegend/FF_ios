//
//  Constants.swift
//  ChannelBusiness

import Foundation
import UIKit

struct API_URL {
    
    static let StatusCode = 200
    
    static let BASE_URL = "https://friendsfield.in/apis/v1"
    static let Base_url_s3_Bucket = "https://friendsfield.s3.ap-south-1.amazonaws.com/"
    
    //MARK: - OTP
    static let Url_SendOtp = BASE_URL+"/register/sendotp"
    static let Url_VerifyOtp = BASE_URL+"/register/verifyotp"

    //MARK: - Create Profile
    static let Url_CreatePersonalProfile = BASE_URL+"/profile/setprofile"
    static let Url_FetchPersonalProfile = BASE_URL+"/profile/getprofile"
    
    //MARK: - Create Bussines Profile
    static let Url_CreateBussinesProfile = BASE_URL+"/business/setbusiness"
    static let Url_FetchBussinesProfile = BASE_URL+"/business/getbusiness"
    
    //MARK: - Product
    static let Url_Product = BASE_URL+"/product/create"
    static let Url_ProductUpdate = BASE_URL+"/product/edit"
    static let Url_FetchProduct = BASE_URL+"/product/list"

    static let Url_FetchProductDesc = BASE_URL+"/product/single"
    
    //MARK: - Upload Image
    static let Url_UploadImage = BASE_URL+"/profile/setprofilepic"
    static let Url_UploadPDF = BASE_URL+"/business/setbrochure"
    static let Url_UploadBussinessProfile = BASE_URL+"/business/setbusinessprofile"
    
    //MARK: - Setting
    ///ContactUs
    static let Url_ContactUS = BASE_URL+"/contact-us"

}
