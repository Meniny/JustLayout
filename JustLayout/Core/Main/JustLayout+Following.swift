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
//  Created by Elias Abel on 10/02/16.
//  Copyright © 2016 Elias Abel. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Offset
public extension UIView {
    
    @discardableResult
    func left(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        leftAttribute == view.leftAttribute + offset
        return self
    }
    
    @discardableResult
    func right(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        rightAttribute == view.rightAttribute + offset
        return self
    }
    
    @discardableResult
    func top(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        topAttribute == view.topAttribute + offset
        return self
    }
    
    @discardableResult
    func bottom(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        bottomAttribute == view.bottomAttribute + offset
        return self
    }
    
    @discardableResult
    func width(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        widthAttribute == view.widthAttribute + offset
        return self
    }
    
    @discardableResult
    func height(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        heightAttribute == view.heightAttribute + offset
        return self
    }
    
    @discardableResult
    func size(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        return width(view, offset).height(view, offset)
    }
    
    @discardableResult
    func center(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        return centerX(view, offset).centerY(view, offset)
    }
    
    @discardableResult
    func centerX(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        centerXAttribute == view.centerXAttribute + offset
        return self
    }
    
    @discardableResult
    func centerY(_ view: UIView, _ offset: CGFloat = 0) -> Self {
        centerYAttribute == view.centerYAttribute + offset
        return self
    }
}

// MARK: - Percentage
public extension UIView {
    @discardableResult
    func left(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        leftAttribute == percentage.value % view.leftAttribute
        return self
    }
    
    @discardableResult
    func right(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        rightAttribute == percentage.value % view.rightAttribute
        return self
    }
    
    @discardableResult
    func top(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        topAttribute == percentage.value % view.topAttribute
        return self
    }
    
    @discardableResult
    func bottom(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        bottomAttribute == percentage.value % view.bottomAttribute
        return self
    }
    
    @discardableResult
    func width(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        widthAttribute == percentage.value % view.widthAttribute
        return self
    }
    
    @discardableResult
    func height(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        heightAttribute == percentage.value % view.heightAttribute
        return self
    }
    
    @discardableResult
    func size(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        return width(view, percentage).height(view, percentage)
    }
    
    @discardableResult
    func center(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        return centerX(view, percentage).centerY(view, percentage)
    }
    
    @discardableResult
    func centerX(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        centerXAttribute == percentage.value % view.centerXAttribute
        return self
    }
    
    @discardableResult
    func centerY(_ view: UIView, _ percentage: JustLayoutPercentage) -> Self {
        centerYAttribute == percentage.value % view.centerYAttribute
        return self
    }
}

// MARK: - Flexible Margin
public extension UIView {
    @discardableResult
    func left(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return flexible(.left, fm.relation, to: view, points: fm.points)
    }
    
    @discardableResult
    func right(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return flexible(.right, fm.relation, to: view, points: fm.points)
    }
    
    @discardableResult
    func top(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return flexible(.top, fm.relation, to: view, points: fm.points)
    }
    
    @discardableResult
    func bottom(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return flexible(.bottom, fm.relation, to: view, points: fm.points)
    }
    
    @discardableResult
    func width(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return flexible(.width, fm.relation, to: view, points: fm.points)
    }
    
    @discardableResult
    func height(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return flexible(.height, fm.relation, to: view, points: fm.points)
    }
    
    @discardableResult
    func size(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return width(view, fm).height(view, fm)
    }
    
    @discardableResult
    func center(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return centerX(view, fm).centerY(view, fm)
    }
    
    @discardableResult
    func centerX(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return flexible(.centerX, fm.relation, to: view, points: fm.points)
    }
    
    @discardableResult
    func centerY(_ view: UIView, _ fm: JustLayoutFlexibleMargin) -> Self {
        return flexible(.centerY, fm.relation, to: view, points: fm.points)
    }
    
    fileprivate func flexible(_ attribute: NSLayoutConstraint.Attribute,
                           _ relation: NSLayoutConstraint.Relation,
                           to view: UIView,
                           points: CGFloat) -> Self {
        let c =  NSLayoutConstraint(item: self, attribute: attribute,
                                    relatedBy: relation,
                                    toItem: view, attribute: attribute,
                                    multiplier: 1, constant: points)
        c.priority = UILayoutPriority(rawValue: UILayoutPriority.defaultHigh.rawValue + 1)
        if let spv = superview {
            spv.addConstraint(c)
        } else {
            addConstraint(c)
        }
        return self
    }
}

// MARK: - Aspect Ratio
public extension UIView {
    @discardableResult
    func width(followHeight offset: CGFloat = 0) -> Self {
        return aspectratio(followHeight: offset)
    }
    
    @discardableResult
    func height(followWidth offset: CGFloat = 0) -> Self {
        return aspectratio(followWidth: offset)
    }
    
    @discardableResult
    func width(followHeight percentage: JustLayoutPercentage, of view: UIView? = nil) -> Self {
        return aspectratio(followHeight: percentage, of: view)
    }
    
    @discardableResult
    func height(followWidth percentage: JustLayoutPercentage, of view: UIView? = nil) -> Self {
        return aspectratio(followWidth: percentage, of: view)
    }
}

// MARK: - Following/Leading/Below/Above
public extension UIView {
    
    @discardableResult
    func following(_ view: UIView, offset: CGFloat = 0) -> Self {
        leftAttribute == view.rightAttribute + offset
        return self
    }
    
    @discardableResult
    func leading(_ view: UIView, offset: CGFloat = 0) -> Self {
        view.following(self, offset: offset)
        return self
    }
    
    @discardableResult
    func below(_ view: UIView, offset: CGFloat = 0) -> Self {
        bottomAttribute == view.rightAttribute + offset
        return self
    }
    
    @discardableResult
    func above(_ view: UIView, offset: CGFloat = 0) -> Self {
        view.below(self, offset: offset)
        return self
    }
}
