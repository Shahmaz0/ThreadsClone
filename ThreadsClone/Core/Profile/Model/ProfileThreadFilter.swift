//
//  ProfileThreadFilter.swift
//  ThreadsClone
//
//  Created by Shahma Ansari on 17/08/24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case Threads
    case Replies
    
    var title: String {
        switch self {
        case .Threads: "Threads"
        case .Replies: "Replies"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
