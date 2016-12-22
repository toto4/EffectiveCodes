//
//  UIControl+SAMAddAction.m
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/22.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import "UIControl+SAMAddAction.h"

#import <objc/runtime.h>

static const void *kaAction = &kaAction;

static const void *kUIControlEventTouchDown                 = &kUIControlEventTouchDown;
static const void *kUIControlEventTouchDownRepeat           = &kUIControlEventTouchDownRepeat;
static const void *kUIControlEventTouchDragInside           = &kUIControlEventTouchDragInside;
static const void *kUIControlEventTouchDragOutside          = &kUIControlEventTouchDragOutside;
static const void *kUIControlEventTouchDragEnter            = &kUIControlEventTouchDragEnter;
static const void *kUIControlEventTouchDragExit             = &kUIControlEventTouchDragExit;
static const void *kUIControlEventTouchUpInside             = &kUIControlEventTouchUpInside;
static const void *kUIControlEventTouchUpOutside            = &kUIControlEventTouchUpOutside;
static const void *kUIControlEventTouchCancel               = &kUIControlEventTouchCancel;

static const void *kUIControlEventValueChanged              = &kUIControlEventValueChanged;
static const void *kUIControlEventPrimaryActionTriggered    = &kUIControlEventPrimaryActionTriggered;

static const void *kUIControlEventEditingDidBegin           = &kUIControlEventEditingDidBegin;
static const void *kUIControlEventEditingChanged            = &kUIControlEventEditingChanged;
static const void *kUIControlEventEditingDidEnd             = &kUIControlEventEditingDidEnd;
static const void *kUIControlEventEditingDidEndOnExit       = &kUIControlEventEditingDidEndOnExit;

static const void *kUIControlEventAllTouchEvents            = &kUIControlEventAllTouchEvents;
static const void *kUIControlEventAllEditingEvents          = &kUIControlEventAllEditingEvents;

static const void *kUIControlEventApplicationReserved       = &kUIControlEventApplicationReserved;
static const void *kUIControlEventSystemReserved            = &kUIControlEventSystemReserved;

static const void *kUIControlEventAllEvents                 = &kUIControlEventAllEvents;


@implementation UIControl (SAMAddAction)



- (void)sam_addActionForEvents:(UIControlEvents)events aAction:(action)aAction
{
    
    [self addTarget:nil action:@selector(handleAction:) forControlEvents:events];
    
    switch (events)
    {
        case UIControlEventTouchDown:
        {
            if (aAction) {
                self.aTouchDown = aAction;
            }
        }
            break;
            
        case UIControlEventTouchDownRepeat:
        {
            if (aAction) {
                self.aTouchDownRepeat = aAction;
            }
        }
            break;
        case UIControlEventTouchDragInside:
        {
            if (aAction) {
                self.aTouchDragInside = aAction;
            }
        }
            break;
        case UIControlEventTouchDragOutside:
        {
            if (aAction) {
                self.aTouchDragOutside = aAction;
            }
        }
            break;
        case UIControlEventTouchDragEnter:
        {
            if (aAction) {
                self.aTouchDragEnter = aAction;
            }
        }
            break;
        case UIControlEventTouchDragExit:
        {
            if (aAction) {
                self.aTouchDragExit = aAction;
            }
        }
            break;
        case UIControlEventTouchUpInside:
        {
            if (aAction) {
                self.aTouchUpInside = aAction;
            }
        }
            break;
        case UIControlEventTouchUpOutside:
        {
            if (aAction) {
                self.aTouchUpOutside = aAction;
            }
        }
            break;
        case UIControlEventTouchCancel:
        {
            if (aAction) {
                self.aTouchCancel = aAction;
            }
        }
            break;
        case UIControlEventValueChanged:
        {
            if (aAction) {
                self.aValueChanged = aAction;
            }
        }
            break;
        case UIControlEventPrimaryActionTriggered:
        {
            if (aAction) {
                self.aPrimaryActionTriggered = aAction;
            }
        }
            break;
            
        case UIControlEventEditingDidBegin:
        {
            if (aAction) {
                self.aEditingDidBegin= aAction;
            }
        }
            break;
            
        case UIControlEventEditingChanged:
        {
            if (aAction) {
                self.aEditingChanged = aAction;
            }
        }
            break;
            
        case UIControlEventEditingDidEnd:
        {
            if (aAction) {
                self.aEditingDidEnd = aAction;
            }
        }
            break;
            
        case UIControlEventEditingDidEndOnExit:
        {
            if (aAction) {
                self.aEditingDidEndOnExit = aAction;
            }
        }
            break;
            
        case UIControlEventAllTouchEvents:
        {
            if (aAction) {
                self.aAllTouchEvents = aAction;
            }
        }
            break;
            
            
        case UIControlEventAllEditingEvents:
        {
            if (aAction) {
                self.aAllEditingEvents = aAction;
            }
        }
            break;
            
            
        case UIControlEventApplicationReserved:
        {
            if (aAction) {
                self.aApplicationReserved = aAction;
            }
        }
            break;
            
            
        case UIControlEventSystemReserved:
        {
            if (aAction) {
                self.aSystemReserved = aAction;
            }
        }
            break;
            
        case UIControlEventAllEvents:
        {
            if (aAction) {
                self.aEventAllEvents = aAction;
            }
        }
            break;
            
        default:
            break;
    }
    
}


- (void)handleAction:(id)sender
{
    if (self.aTouchDown) {
        self.aTouchDown(sender);
    }
    
    if (self.aTouchDownRepeat) {
        self.aTouchDownRepeat(sender);
    }
    
    if (self.aTouchDragInside) {
        self.aTouchDragInside(sender);
    }
    
    if (self.aTouchDragOutside) {
        self.aTouchDragOutside(sender);
    }
    
    if (self.aTouchDragEnter) {
        self.aTouchDragEnter(sender);
    }
    
    if (self.aTouchDragExit) {
        self.aTouchDragExit(sender);
    }
    
    if (self.aTouchUpInside) {
        self.aTouchUpInside(sender);
    }
    
    if (self.aTouchUpOutside) {
        self.aTouchUpOutside(sender);
    }
    
    if (self.aTouchCancel) {
        self.aTouchCancel(sender);
    }
    
    if (self.aValueChanged) {
        self.aValueChanged(sender);
    }
    
    if (self.aPrimaryActionTriggered) {
        self.aPrimaryActionTriggered(sender);
    }
    
    if (self.aEditingDidBegin) {
        self.aEditingDidBegin(sender);
    }
    
    if (self.aEditingChanged) {
        self.aEditingChanged(sender);
    }
    
    
    if (self.aEditingDidEnd) {
        self.aEditingDidEnd(sender);
    }
    
    if (self.aEditingDidEndOnExit) {
        self.aEditingDidEndOnExit(sender);
    }
    
    if (self.aAllTouchEvents) {
        self.aAllTouchEvents(sender);
    }
    
    if (self.aAllEditingEvents) {
        self.aAllEditingEvents(sender);
    }
    
    if (self.aApplicationReserved) {
        self.aApplicationReserved(sender);
    }
    
    if (self.aSystemReserved) {
        self.aSystemReserved(sender);
    }
    
    if (self.aEventAllEvents) {
        self.aEventAllEvents(sender);
    }
    
}




#pragma mark - setter getter


- (void)setATouchDown:(action)aTouchDown
{
    objc_setAssociatedObject(self, kUIControlEventTouchDown, aTouchDown, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchDown
{
    return objc_getAssociatedObject(self, kUIControlEventTouchDown);
}



- (void)setATouchDownRepeat:(action)aTouchDownRepeat
{
    objc_setAssociatedObject(self, kUIControlEventTouchDownRepeat, aTouchDownRepeat, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchDownRepeat
{
    return objc_getAssociatedObject(self, kUIControlEventTouchDownRepeat);
}


- (void)setATouchDragInside:(action)aTouchDragInside
{
    objc_setAssociatedObject(self, kUIControlEventTouchDragInside, aTouchDragInside, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchDragInside
{
    return objc_getAssociatedObject(self, kUIControlEventTouchDragInside);
}


- (void)setATouchDragOutside:(action)aTouchDragOutside
{
    objc_setAssociatedObject(self, kUIControlEventTouchDragOutside, aTouchDragOutside, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchDragOutside
{
    return objc_getAssociatedObject(self, kUIControlEventTouchDragOutside);
}


- (void)setATouchDragEnter:(action)aTouchDragEnter
{
    objc_setAssociatedObject(self, kUIControlEventTouchDragEnter, aTouchDragEnter, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchDragEnter
{
    return objc_getAssociatedObject(self, kUIControlEventTouchDragEnter);
}

- (void)setATouchDragExit:(action)aTouchDragExit
{
    objc_setAssociatedObject(self, kUIControlEventTouchDragExit, aTouchDragExit, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchDragExit
{
    return objc_getAssociatedObject(self, kUIControlEventTouchDragExit);
}


- (void)setATouchUpInside:(action)aTouchUpInside
{
    objc_setAssociatedObject(self, kUIControlEventTouchUpInside, aTouchUpInside, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchUpInside
{
    return objc_getAssociatedObject(self, kUIControlEventTouchUpInside);
}


- (void)setATouchUpOutside:(action)aTouchUpOutside
{
    objc_setAssociatedObject(self, kUIControlEventTouchUpOutside, aTouchUpOutside, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchUpOutside
{
    return objc_getAssociatedObject(self, kUIControlEventTouchUpOutside);
}


- (void)setATouchCancel:(action)aTouchCancel
{
    objc_setAssociatedObject(self, kUIControlEventTouchCancel, aTouchCancel, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aTouchCancel
{
    return objc_getAssociatedObject(self, kUIControlEventTouchCancel);
}


- (void)setAValueChanged:(action)aValueChanged
{
    objc_setAssociatedObject(self, kUIControlEventValueChanged, aValueChanged, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (action)aValueChanged
{
    return objc_getAssociatedObject(self, kUIControlEventValueChanged);
}


- (void)setAPrimaryActionTriggered:(action)aPrimaryActionTriggered
{
    objc_setAssociatedObject(self, kUIControlEventPrimaryActionTriggered, aPrimaryActionTriggered, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aPrimaryActionTriggered
{
    return objc_getAssociatedObject(self, kUIControlEventPrimaryActionTriggered);
}


- (void)setAEditingDidBegin:(action)aEditingDidBegin
{
    objc_setAssociatedObject(self, kUIControlEventEditingDidBegin, aEditingDidBegin, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aEditingDidBegin
{
    return objc_getAssociatedObject(self, kUIControlEventEditingDidBegin);
}


- (void)setAEditingChanged:(action)aEditingChanged
{
    objc_setAssociatedObject(self, kUIControlEventEditingChanged, aEditingChanged, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aEditingChanged
{
    return objc_getAssociatedObject(self, kUIControlEventEditingChanged);
}


- (void)setAEditingDidEnd:(action)aEditingDidEnd
{
    objc_setAssociatedObject(self, kUIControlEventEditingDidEnd, aEditingDidEnd, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aEditingDidEnd
{
    return objc_getAssociatedObject(self, kUIControlEventEditingDidEnd);
}


- (void)setAEditingDidEndOnExit:(action)aEditingDidEndOnExit
{
    objc_setAssociatedObject(self, kUIControlEventEditingDidEndOnExit, aEditingDidEndOnExit, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aEditingDidEndOnExit
{
    return objc_getAssociatedObject(self, kUIControlEventEditingDidEndOnExit);
}


- (void)setAAllTouchEvents:(action)aAllTouchEvents
{
    objc_setAssociatedObject(self, kUIControlEventAllTouchEvents, aAllTouchEvents, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aAllTouchEvents
{
    return objc_getAssociatedObject(self, kUIControlEventAllTouchEvents);
}


- (void)setAAllEditingEvents:(action)aAllEditingEvents
{
    objc_setAssociatedObject(self, kUIControlEventAllEditingEvents, aAllEditingEvents, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aAllEditingEvents
{
    return objc_getAssociatedObject(self, kUIControlEventAllEditingEvents);
}


- (void)setAApplicationReserved:(action)aApplicationReserved
{
    objc_setAssociatedObject(self, kUIControlEventApplicationReserved, aApplicationReserved, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aApplicationReserved
{
    return objc_getAssociatedObject(self, kUIControlEventApplicationReserved);
}


- (void)setASystemReserved:(action)aSystemReserved
{
    objc_setAssociatedObject(self, kUIControlEventSystemReserved, aSystemReserved, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aSystemReserved
{
    return objc_getAssociatedObject(self, kUIControlEventSystemReserved);
}


- (void)setAEventAllEvents:(action)aEventAllEvents
{
    objc_setAssociatedObject(self, kUIControlEventAllEvents, aEventAllEvents, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
}

- (action)aEventAllEvents
{
    return objc_getAssociatedObject(self, kUIControlEventAllEvents);
}







@end










