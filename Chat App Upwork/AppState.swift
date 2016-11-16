//
//  AppState.swift
//  Chat App Upwork
//
//  Created by Dustin Allen on 10/28/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import Foundation
import Firebase

class AppState: NSObject {
    
    static let sharedInstance = AppState()
    
    var signedIn = false
    var displayName: String?
    var photoUrl: NSURL?
    var currentUser: FIRDataSnapshot?
    var currentUserImage: UIImage?
    //var friendID: String?
    //var friend: UserData?
    
    let appBlueColor = UIColor.init(colorLiteralRed: (22.0/255.0), green: (22.0/255.0), blue: (22.0/255.0), alpha: 1)
    
    var friendReqCount = 0
    var unreadChatCount = 0
}

let globalGroup = dispatch_group_create();
let queue = NSOperationQueue()


let myUserID = {
    //return LoggedInUser?.uid
    return FIRAuth.auth()?.currentUser?.uid
}()

//Globals
var myGroups:[Dictionary<String,AnyObject>] = []
var Users:[Dictionary<String,AnyObject>] = []
var selectedUser:[Dictionary<String,AnyObject>] = []
var filteredUser:[Dictionary<String,AnyObject>] = []
var searchedUser:[Dictionary<String,AnyObject>] = []