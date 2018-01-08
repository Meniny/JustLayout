//
//  JustLayout
//
//  Blog  : https://meniny.cn
//  Github: https://github.com/Meniny
//
//  No more shall we pray for peace
//  Never ever ask them why
//  No more shall we stop their visions
//  Of selfdestructing genocide
//  Dogs on leads march to war
//  Go ahead end it all...
//
//  Blow up the world
//  The final silence
//  Blow up the world
//  I don't give a damn!
//
//  Screams of terror, panic spreads
//  Bombs are raining from the sky
//  Bodies burning, all is dead
//  There's no place left to hide
//  Dogs on leads march to war
//  Go ahead end it all...
//
//  Blow up the world
//  The final silence
//  Blow up the world
//  I don't give a damn!
//
//  (A voice was heard from the battle field)
//
//  "Couldn't care less for a last goodbye
//  For as I die, so do all my enemies
//  There's no tomorrow, and no more today
//  So let us all fade away..."
//
//  Upon this ball of dirt we lived
//  Darkened clouds now to dwell
//  Wasted years of man's creation
//  The final silence now can tell
//  Dogs on leads march to war
//  Go ahead end it all...
//
//  Blow up the world
//  The final silence
//  Blow up the world
//  I don't give a damn!
//
//  When I wrote this code, only I and God knew what it was.
//  Now, only God knows!
//
//  So if you're done trying 'optimize' this routine (and failed),
//  please increment the following counter
//  as a warning to the next guy:
//
//  total_hours_wasted_here = 0
//
//  Created by Elias Abel on 12/10/15.
//  Copyright © 2015 Elias Abel. All rights reserved.
//

import UIKit

public extension NSObject {
    
    /// Send notification
    ///
    /// - Parameters:
    ///   - event: Event name
    ///   - object: Object
    /// - Returns: `NSNotification.Name`
    @discardableResult
    public func notify(_ event: String, object: Any? = nil) -> NSNotification.Name {
        let name = NSNotification.Name(rawValue: event)
        NotificationCenter.default.post(name: name, object: object)
        return name
    }
    
    /// Add observer for event
    ///
    /// - Parameters:
    ///   - event: Event name
    ///   - object: Object
    ///   - queue: Operation queue
    ///   - callback: Callback closure
    /// - Returns: `NSNotification.Name`
    @discardableResult
    public func observe(_ event: String, object: Any? = nil, queue: OperationQueue?, callback: @escaping () -> Void) -> NSNotification.Name {
        let name = NSNotification.Name(rawValue: event)
        _ = NotificationCenter.default.addObserver(forName: name, object: object, queue: queue) { _ in
            callback()
        }
        return name
    }
    
    /// Remove observer for event
    ///
    /// - Parameters:
    ///   - event: Event name
    ///   - object: Object
    /// - Returns: `NSNotification.Name`
    @discardableResult
    public func unobserve(_ event: String, object: Any? = nil) -> NSNotification.Name {
        let name = NSNotification.Name(rawValue: event)
        NotificationCenter.default.removeObserver(self, name: name, object: object)
        return name
    }
}
