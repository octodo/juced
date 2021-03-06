/*
  ==============================================================================

   This file is part of the JUCE library - "Jules' Utility Class Extensions"
   Copyright 2004-9 by Raw Material Software Ltd.

  ------------------------------------------------------------------------------

   JUCE can be redistributed and/or modified under the terms of the GNU General
   Public License (Version 2), as published by the Free Software Foundation.
   A copy of the license is included in the JUCE distribution, or can be found
   online at www.gnu.org/licenses.

   JUCE is distributed in the hope that it will be useful, but WITHOUT ANY
   WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
   A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

  ------------------------------------------------------------------------------

   To release a closed-source product which uses JUCE, commercial licenses are
   available: visit www.rawmaterialsoftware.com/juce for more information.

  ==============================================================================
*/

#ifndef __JUCE_BROWSERPLUGINCOMPONENT_JUCEHEADER__
#define __JUCE_BROWSERPLUGINCOMPONENT_JUCEHEADER__

#include "../../../../juce/juce_amalgamated.h"


//==============================================================================
/**
    Base class for a browser plugin object.

    You need to implement a createBrowserPlugin() function that the host will call
    when it needs a new instance of your BrowserPluginComponent subclass. The host will
    delete the BrowserPluginComponent later when the user navigates away from the
    page.
*/
class BrowserPluginComponent    : public Component
{
public:
    //==============================================================================
    /**
        Creates a browser plugin object.
        @see createBrowserPlugin
    */
    BrowserPluginComponent();

    /** Destructor. */
    ~BrowserPluginComponent();

    //==============================================================================
    /** Returns a string describing the host browser version.
    */
    const String getBrowserVersion() const;

    /** Returns the URL that the browser is currently showing.
    */
    const String getBrowserURL() const;

    /** The plugin must implement this method to return a variant object whose
        properties and methods can be accessed by javascript in the browser.

        If your plugin doesn't need to represent itself, you can just return
        a void var() object here.
    */
    virtual const var getJavascriptObject() = 0;

    //==============================================================================
    juce_UseDebuggingNewOperator
};


//==============================================================================
/**
    This function must be implemented somewhere in your code to create the actual
    plugin object that you want to use.

    Obviously multiple instances may be used simultaneously, so be VERY cautious
    in your use of static variables!
*/
BrowserPluginComponent* JUCE_CALLTYPE createBrowserPlugin();


#endif   // __JUCE_BROWSERPLUGINCOMPONENT_JUCEHEADER__
