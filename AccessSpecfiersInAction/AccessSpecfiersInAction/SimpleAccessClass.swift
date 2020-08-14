//
//  SimpleAccessClass.swift
//  AccessSpecfiersInAction
//
//  Created by Kevin Vishal Saldanha on 13/08/20.
//  Copyright © 2020 TuffyTiffany. All rights reserved.
//

import Foundation

/*open access allows type to be accessed as well as subclassed outside the defining module*/
open class MyOpenClass {
    func methodWithDefaultAccessSpecifier() {}
    open func methodWithExplicitAccessSpecifier() {}
}

/*public access allows type to be accessed outside the defining module*/
public class MyPublicClass {
    func methodWithDefaultAccessSpecifier() {}
    public func methodWithExplicitAccessSpecifier() {}
}

/*Internal allows access anywhere with the module we define. Here Module is AccessSpecfiersInAction */
internal class MyInternalClass {
    func methodWithDefaultAccessSpecifier() {}
    internal func methodWithExplicitAccessSpecifier() {}
}

/*By default, access is Internal*/
class MyDefaultClass {
    func methodWithDefaultAccessSpecifier() {}
    func methodWithExplicitAccessSpecifier() {}
}

/* fileprivate allows access within the same file and not outside this file*/
fileprivate class MyFilePrivateClass {
    func methodWithDefaultAccessSpecifier() {}
    fileprivate func methodWithExplicitAccessSpecifier() {}
}

/* fileprivate allows access within the scope where its is used and not outside that scope. Here file is SimpleAccessClass.swift*/
private class MyPrivateClass {
    func methodWithDefaultAccessSpecifier() {}
    private func methodWithExplicitAccessSpecifier() {}
}


class AccessWithinSameFile {
    
    
    func simpleCheckMethod() -> Void {
        
        
        let openClass = MyOpenClass()
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
        
        let filePrivateClass = MyFilePrivateClass()
        filePrivateClass.methodWithDefaultAccessSpecifier()
        filePrivateClass.methodWithExplicitAccessSpecifier()
        
        let privateClass = MyPrivateClass()
        privateClass.methodWithDefaultAccessSpecifier()
        /*uncomment the following and observe methodWithExplicitAccessSpecifier is declared as private and is accessible only within MyPrivateClass */
        //privateClass.methodWithExplicitAccessSpecifier()
    }
}
