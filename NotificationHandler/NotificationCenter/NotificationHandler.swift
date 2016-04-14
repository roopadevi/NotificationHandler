//
//  NotificationHandler.swift
//  PWCLogin
//
//  Created by rboopathi001 on 13/04/16.
//  Copyright © 2016 PWC SDC Bangalore. All rights reserved.
//

import Foundation

let kUpdateNotificationHandler = "UpdateNotificationHandler"
let kLoginSuccessfulNotification = "LoginSuccessfulNotification"
let kReasonForNotification = "ReasonForNotification"


public class NotificationHandler: NSObject {
   public let  defaultCenter =  NSNotificationCenter.defaultCenter()
    
    public static let sharedInstance = NotificationHandler()
    
    override init() {
        super.init()
        defaultCenter.addObserver(self, selector: "postNotification:", name: kUpdateNotificationHandler, object: nil)
        
    }
    
    public func postNotification(notification: NSNotification) {
        print("MyNotification was handled")
        let notificationName = notification.userInfo![kReasonForNotification] as! String
        defaultCenter.postNotificationName(notificationName, object: nil, userInfo: notification.userInfo!)
    }
    
    deinit {
        defaultCenter.removeObserver(self)
    }
    
}