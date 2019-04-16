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
//  Created by Elias Abel on 01/10/15.
//  Copyright © 2015 Elias Abel. All rights reserved.
//

import Foundation
import UIKit

public struct JustLayoutDSL<T: UIView> {
    internal var associated: T
}

public extension JustLayoutDSL {
    @discardableResult
    func left(_ offset: CGFloat = 0) -> T {
        return associated.left(offset)
    }
    
    @discardableResult
    func right(_ offset: CGFloat = 0) -> T {
        return associated.right(offset)
    }
    
    @discardableResult
    func top(_ offset: CGFloat = 0) -> T {
        return associated.top(offset)
    }
    
    @discardableResult
    func bottom(_ offset: CGFloat = 0) -> T {
        return associated.bottom(offset)
    }
    
    @discardableResult
    func width(_ offset: CGFloat) -> T {
        return associated.width(offset)
    }
    
    @discardableResult
    func height(_ offset: CGFloat) -> T {
        return associated.height(offset)
    }
    
    @discardableResult
    func size(_ offset: CGFloat) -> T {
        return associated.size(offset)
    }
    
    @discardableResult
    func center(_ offset: CGFloat = 0) -> T {
        return associated.centerVertically(offset).centerHorizontally(offset)
    }
    
    @discardableResult
    func centerX(_ offset: CGFloat = 0) -> T {
        return associated.centerHorizontally(offset)
    }
    
    @discardableResult
    func centerY(_ offset: CGFloat = 0) -> T {
        return associated.centerVertically(offset)
    }
}

public extension JustLayoutDSL {
    @discardableResult
    func left(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.left(view, offset)
    }
    
    @discardableResult
    func right(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.right(view, offset)
    }
    
    @discardableResult
    func top(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.top(view, offset)
    }
    
    @discardableResult
    func bottom(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.bottom(view, offset)
    }
    
    @discardableResult
    func width(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.width(view, offset)
    }
    
    @discardableResult
    func height(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.height(view, offset)
    }
    
    @discardableResult
    func size(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.size(view, offset)
    }
    
    @discardableResult
    func center(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.center(view, offset)
    }
    
    @discardableResult
    func centerX(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.centerX(view, offset)
    }
    
    @discardableResult
    func centerY(_ view: UIView, _ offset: CGFloat = 0) -> T {
        return associated.centerY(view, offset)
    }
}

// MARK: - Percentage

public extension JustLayoutDSL {
    @discardableResult
    func left(_ p: JustLayoutPercentage) -> T {
        return associated.left(p)
    }
    
    @discardableResult
    func right(_ p: JustLayoutPercentage) -> T {
        return associated.right(p)
    }
    
    @discardableResult
    func top(_ p: JustLayoutPercentage) -> T {
        return associated.top(p)
    }
    
    @discardableResult
    func bottom(_ p: JustLayoutPercentage) -> T {
        return associated.bottom(p)
    }
    
    @discardableResult
    func width(_ p: JustLayoutPercentage) -> T {
        return associated.width(p)
    }
    
    @discardableResult
    func height(_ p: JustLayoutPercentage) -> T {
        return associated.height(p)
    }
    
    @discardableResult
    func size(_ p: JustLayoutPercentage) -> T {
        return associated.size(p)
    }
}

public extension JustLayoutDSL {
    @discardableResult
    func left(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.left(view, p)
    }
    
    @discardableResult
    func right(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.right(view, p)
    }
    
    @discardableResult
    func top(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.top(view, p)
    }
    
    @discardableResult
    func bottom(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.bottom(view, p)
    }
    
    @discardableResult
    func width(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.width(view, p)
    }
    
    @discardableResult
    func height(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.height(view, p)
    }
    
    @discardableResult
    func size(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.size(view, p)
    }
    
    @discardableResult
    func center(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.center(view, p)
    }
    
    @discardableResult
    func centerX(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.centerX(view, p)
    }
    
    @discardableResult
    func centerY(_ view: UIView, _ p: JustLayoutPercentage) -> T {
        return associated.centerY(view, p)
    }
}

// MARK: - FlexibleMargin

public extension JustLayoutDSL {
    @discardableResult
    func left(_ fm: JustLayoutFlexibleMargin) -> T {
        return associated.left(fm)
    }
    
    @discardableResult
    func right(_ fm: JustLayoutFlexibleMargin) -> T {
        return associated.right(fm)
    }
    
    @discardableResult
    func top(_ fm: JustLayoutFlexibleMargin) -> T {
        return associated.top(fm)
    }
    
    @discardableResult
    func bottom(_ fm: JustLayoutFlexibleMargin) -> T {
        return associated.bottom(fm)
    }
    
    @discardableResult
    func width(_ fm: JustLayoutFlexibleMargin) -> T {
        return associated.width(fm)
    }
    
    @discardableResult
    func height(_ fm: JustLayoutFlexibleMargin) -> T {
        return associated.height(fm)
    }
    
    @discardableResult
    func size(_ fm: JustLayoutFlexibleMargin) -> T {
        return associated.width(fm).height(fm)
    }
}

public extension JustLayoutDSL {
    @discardableResult
    func left(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.left(view, fm)
    }
    
    @discardableResult
    func right(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.right(view, fm)
    }
    
    @discardableResult
    func top(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.top(view, fm)
    }
    
    @discardableResult
    func bottom(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.bottom(view, fm)
    }
    
    @discardableResult
    func width(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.width(view, fm)
    }
    
    @discardableResult
    func height(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.height(view, fm)
    }
    
    @discardableResult
    func size(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.size(view, fm)
    }
    
    @discardableResult
    func center(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.center(view, fm)
    }
    
    @discardableResult
    func centerX(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.centerX(view, fm)
    }
    
    @discardableResult
    func centerY(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> T {
        return associated.centerY(view, fm)
    }
}

public extension JustLayoutDSL {
    @discardableResult
    func centerInContainer() -> T {
        return associated.centerInContainer()
    }
    
    @discardableResult
    func centerVertically() -> T {
        return associated.centerVertically()
    }
    
    @discardableResult
    func centerHorizontally() -> T {
        return associated.centerHorizontally()
    }
    
    @discardableResult
    func centerVertically(_ offset: CGFloat) -> T {
        return associated.centerVertically(offset)
    }
    
    @discardableResult
    func centerHorizontally(_ offset: CGFloat) -> T {
        return associated.centerHorizontally(offset)
    }
}

// MARK: - AspectRatio

public extension JustLayoutDSL {
    /// width = ratio / 100 * height
    @discardableResult
    func aspectratio(_ ratio: CGFloat = 1) -> T {
        return associated.aspectratio(followHeight: ratio)
    }
    
    /// width = ratio * height
    @discardableResult
    func aspectratio(_ ratio: JustLayoutPercentage) -> T {
        return associated.aspectratio(followHeight: ratio)
    }
}

// MARK: - Following/Leading/Below/Above

public extension JustLayoutDSL {
    
    @discardableResult
    func following(_ view: UIView, offset: CGFloat = 0) -> T {
        return associated.following(view, offset: offset)
    }
    
    @discardableResult
    func leading(_ view: UIView, offset: CGFloat = 0) -> T {
        return associated.leading(view, offset: offset)
    }
    
    @discardableResult
    func below(_ view: UIView, offset: CGFloat = 0) -> T {
        return associated.below(view, offset: offset)
    }
    
    @discardableResult
    func above(_ view: UIView, offset: CGFloat = 0) -> T {
        return associated.above(view, offset: offset)
    }
}

// MARK: - JustLayoutDslable

public protocol JustLayoutDslable { }

extension JustLayoutDslable where Self: UIView {
    public typealias T = Self
    public var just: JustLayoutDSL<T> {
        return JustLayoutDSL.init(associated: self)
    }
}

extension UIView: JustLayoutDslable {}
