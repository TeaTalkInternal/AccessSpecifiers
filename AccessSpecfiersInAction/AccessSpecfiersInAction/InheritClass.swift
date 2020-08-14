//
//  InheritClass.swift
//  AccessSpecfiersInAction
//
//  Created by Kevin Vishal Saldanha on 14/08/20.
//  Copyright © 2020 TuffyTiffany. All rights reserved.
//

import Foundation
import SharedFunctionality


class CustomOpenClass: ExternalOpenClass {
    
    override func methodWithExplicitAccessSpecifier() {
        print("I am overriden")
    }
  /*  Uncomment the below code and see we cannot override methodMarkedPublic() as it is defined  as public in SharedFunctionality module*/
//    override func methodMarkedPublic() {
//    }
}

 /* Uncomment the below code and see we cannot subclass ExternalPublicClass as it is defined  as public in SharedFunctionality module.*/
//class CustomPublicClass: ExternalPublicClass {
//
//}

