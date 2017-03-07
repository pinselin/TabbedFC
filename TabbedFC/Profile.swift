//
//  Profile.swift
//  TabbedFC
//
//  Created by 竹内将大 on 2017/03/07.
//  Copyright © 2017年 feelingCouplePBL. All rights reserved.
//

import Foundation

class Profile: NSObject{
    var deligate: GetProfileDeligate?
    static let sharedProfile = Profile()
    private override init(){
        super.init()
        initProfile()
    }
    
    private func initProfile(){
        
    }
    
    var  name: String = ""
    
    func getProfile(deligate: GetProfileDeligate) -> String{
        self.deligate = deligate
        return name
    }

}
