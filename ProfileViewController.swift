//
//  ProfileViewController.swift
//  TabbedFC
//
//  Created by 竹内将大 on 2017/03/07.
//  Copyright © 2017年 feelingCouplePBL. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    var  profile = Profile.sharedProfile
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else{
            return
        }
        if identifier == "start"{
            let FVC = segue.destination as! FirstViewController
            FVC.myName = self.nameText.text!
        }
    }
    
//    override func touchBegan(_ touches: Set<UITouch>, with event: UIEvent?){
//        if(self.nameText.isFirstResponder){
//            self.nameText.resignFirstResponder()
//        }
//    }
    
   
    @IBAction func finishButton(_ sender: Any) {
        profile.name = nameText.text!
    }

    }
