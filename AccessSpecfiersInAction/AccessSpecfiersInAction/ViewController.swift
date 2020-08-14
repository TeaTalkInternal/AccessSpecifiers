//
//  ViewController.swift
//  AccessSpecfiersInAction
//
//  Created by Kevin Vishal Saldanha on 13/08/20.
//  Copyright © 2020 TuffyTiffany. All rights reserved.
//

import UIKit
import SharedFunctionality

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*    let openClass = MyOpenClass()
         openClass.methodWithDefaultAccessSpecifier()
         openClass.methodWithExplicitAccessSpecifier()
         
         let publicClass = MyPublicClass()
         publicClass.methodWithDefaultAccessSpecifier()
         publicClass.methodWithExplicitAccessSpecifier()
         
         let internalClass = MyInternalClass()
         internalClass.methodWithDefaultAccessSpecifier()
         internalClass.methodWithExplicitAccessSpecifier()
         
         let defaultClass = MyDefaultClass()
         defaultClass.methodWithDefaultAccessSpecifier()
         defaultClass.methodWithExplicitAccessSpecifier()
         
         //        let filePrivateClass = MyFilePrivateClass()
         //
         //        let privateClass = MyPrivateClass()
         */
        
        
        let openClass = ExternalOpenClass.init()
        /* since by default acccess is internal methodWithDefaultAccessSpecifier is inaccessible. Uncomment to see the error cause due to internal protection level*/
        //openClass.methodWithDefaultAccessSpecifier()
        openClass.methodWithExplicitAccessSpecifier()
        
        let publicClass = ExternalPublicClass()
        /* since by default acccess is internal methodWithDefaultAccessSpecifier is inaccessible. Uncomment to see the error cause due to internal protection level*/
        //publicClass.methodWithDefaultAccessSpecifier()
        publicClass.methodWithExplicitAccessSpecifier()
        
        
        /* Since by ExternalInternalClass and ExternalDefaultClass acccess is internal, We cannot access  ExternalInternalClass, since it is declared in other module (SharedFunctionality).. Uncomment to see the error cause due to internal protection level*/
        //let internalClass = ExternalInternalClass()
        
        // let defaultClass = ExternalDefaultClass()
        
    }
    
    
}

