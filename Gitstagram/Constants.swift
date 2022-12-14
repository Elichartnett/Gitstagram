//
//  AssetConstants.swift
//  Gitstagram
//
//  Created by Eli Hartnett on 7/29/22.
//

import UIKit

struct Constants {
    
    struct Images {
        static let appLogo = "logo"
        static let emptyStateLogo = "empty-state-logo"
        static let avatarPlaceholder = "avatar-placeholder"
    }
    
    struct SFSymbols {
        static let mapPin = "mappin.and.ellipse"
        static let repos = "folder"
        static let gists = "text.alignleft"
        static let followers = "heart"
        static let following = "person.2"
    }
    
    // Not a fan of this solution, but inlcuding in project for reference
    struct ScreenSize {
        static let width = UIScreen.main.bounds.size.width
        static let height = UIScreen.main.bounds.size.height
        static let maxLength = max(ScreenSize.width, ScreenSize.height)
        static let minLength = min(ScreenSize.width, ScreenSize.height)
    }
    
    struct DeviceType {
        static let idiom = UIDevice.current.userInterfaceIdiom
        static let nativeScale = UIScreen.main.nativeScale
        static let scale = UIScreen.main.scale
        
        static let isiPhoneSE = idiom == .phone && ScreenSize.maxLength == 568.0
        static let isiPhone8Standard = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
        static let isiPhone8Zoomed = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
        static let isiPhone8PlusStandard = idiom == .phone && ScreenSize.maxLength == 736.0
        static let isiPhone8PlusZoomed = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
        static let isiPhoneX = idiom == .phone && ScreenSize.maxLength == 812.0
        static let isIphoneXsMaxAndXr = idiom == .phone && ScreenSize.maxLength == 896.0
        static let isiPad = idiom == .phone && ScreenSize.maxLength >= 1024.0
        
        static func isiphoneXAspectRatio() -> Bool {
            return isiPhoneX || isIphoneXsMaxAndXr
        }
    }
}
