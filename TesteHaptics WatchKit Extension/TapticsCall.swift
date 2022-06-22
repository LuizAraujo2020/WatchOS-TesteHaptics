//
//  TapticsCall.swift
//  TesteHaptics WatchKit Extension
//
//  Created by Luiz Araujo on 22/06/22.
//

import WatchKit
import Foundation
import WatchConnectivity

enum HapticTypes: Int, CaseIterable {
    case notification
    case directionUp
    case directionDown
    case success
    case failure
    case retry
    case start
    case stop
    case click
    
    var name: String {
        switch self {
        case .notification:
            return "Alerts the user to an arrived notification when the Watch app is not running in the foreground."
            
        case .directionUp:
            return "Indicates an increase in a specific value or when a value has gone above a certain threshold."
            
        case .directionDown:
            return "Indicates a decrease in a specific value or when a value has gone below a certain threshold."
            
        case .success:
            return "Indicates the successful completion of a task or the answering of a question."
            
        case .failure:
            return "Indicates the failed completion of a task or answering of a question."
            
        case .retry:
            return "Indicates that the user should retry a task that temporarily failed."
            
        case .start:
            return "Indicates the beginning of an action."
            
        case .stop:
            return "Indicates the end of an action."
            
        case .click:
            return "Indicates a simple click type of feedback."
            
        }
    }
}

class TapticsCall: NSObject {

    func giveNotification()->Void{
        WKInterfaceDevice.current().play(WKHapticType.notification)
    }

    func giveDirectionUp()->Void{
        WKInterfaceDevice.current().play(WKHapticType.directionUp)
    }
    
    func giveDirectionDown()->Void{
        WKInterfaceDevice.current().play(WKHapticType.directionDown)
    }
    
    func giveSuccess()->Void{
        WKInterfaceDevice.current().play(WKHapticType.success)
    }
    
    func giveFailure()->Void{
        WKInterfaceDevice.current().play(WKHapticType.failure)
    }
    
    func giveRetry()->Void{
        WKInterfaceDevice.current().play(WKHapticType.retry)
    }
    
    func giveStart()->Void{
        WKInterfaceDevice.current().play(WKHapticType.start)
    }
    
    func giveStop()->Void{
        WKInterfaceDevice.current().play(WKHapticType.stop)
    }
    
    func giveClick()->Void{
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
}
