# Pre-work - *Tip Calculator*

**Tipsy** is a tip calculator application for iOS.

Submitted by: **Tyler Dakin**

Time spent: **1** hour spent for content up to commit "6d4ffb6" (the required content).

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Settings Menu (implemented via Navigation Controller)
	- [X] Default Percentage option
	- [ ] Currency option
	- [ ] Dark Mode option

## Demo
![Demo Gif of Tip Calculator](https://raw.githubusercontent.com/tylerdak/CP-Prework/main/demo.gif)

## Notes

Going back to UIKit after doing some work with SwiftUI for a while is difficult. I've noticed some properties of certain frameworks have been deprecated in newer versions, such as UITableViewCell.textLabel which created a challenge when I was doing some work for the Settings page. I'm interested to see how they've replaced it using UIListContentConfiguration.

## License

    Copyright 2022 Tyler Dakin

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
