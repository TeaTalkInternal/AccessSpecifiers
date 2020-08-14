//
//  SharedFeature.swift
//  SharedFunctionality
//
//  Created by Kevin Vishal Saldanha on 13/08/20.
//  Copyright © 2020 TuffyTiffany. All rights reserved.
//

import Foundation

/*open access allows type to be accessed as well as subclassed outside the defining module*/

open class ExternalOpenClass {
    public init() {}
    /*
     We cannot use open access level to init.
     open init() { // error: only classes and overridable class members can be declared 'open'; use 'public'

    }*/
    func methodWithDefaultAccessSpecifier() {}
    open func methodWithExplicitAccessSpecifier() {}
    public func methodMarkedPublic() {}
}

/*public access allows type to be accessed outside the defining module*/

public class ExternalPublicClass {
    public init() {}
    func methodWithDefaultAccessSpecifier() {}
    public func methodWithExplicitAccessSpecifier() {}
}

/*Internal allows access anywhere with the module we define. Here Module is SharedFunctionality */
internal class ExternalInternalClass {
    public init() {}
    func methodWithDefaultAccessSpecifier() {}
    internal func methodWithExplicitAccessSpecifier() {}
}

/*By default, access is Internal*/
class ExternalDefaultClass {
    public init() {}
    func methodWithDefaultAccessSpecifier() {}
    func methodWithExplicitAccessSpecifier() {}
}
