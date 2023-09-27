# FB13208225: Picker Tap Area in List different for .automatic and .menu


## Scenario

A Picker of style .menu is displayed in a List.


## Issue

Without .pickerStyle() or with .pickerStyle(.automatic) it shows as .menu, but behaves differently than when .pickerStyle(.menu) is applied.

In the automatic style the whole label is tapable, which does not work with .menu applied.
When .menu is applied the picker automatically gets the apps tintColor, which does not happen for .automatic. 


## Example Code

The example shows a List with all 3 options of declaration.
 

## Tested on

 - Xcode Version 15.0 (15A240d): iPhone 15 Pro (iOS 17.0 (21A328)) Simulator, iPad Pro (11-inch) (iOS 17.0 (21A328)) Simulator, iPhone 13 Pro (iOS 17.0 (21A329)) Device
