//
//  File.swift
//  
//
//  Created by Shrey Shrivastava on 27/03/23.
//

import Foundation
import pcaf_mbl_cb
import pcaf_mbl_sf_intfc_pkg

class SPPDependencies{
    let couchbaseManager: CouchbaseManager
    let authManager: AuthManagerProtocol
    
    init(couchbaseManager: CouchbaseManager, authManager: AuthManagerProtocol) {
        self.couchbaseManager = couchbaseManager
        self.authManager = authManager
    }
}
