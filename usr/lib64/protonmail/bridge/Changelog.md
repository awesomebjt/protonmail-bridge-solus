# ProtonMail Bridge Changelog

Changelog [format](http://keepachangelog.com/en/1.0.0/)

## Unpublished


## [v1.0.3] - 2018-03-26
* All from silent updates plus following

### Changed
* Okay -> "Remind me later"
* Imported message with `text/html` body was imported as `text/plain`
* Reload cache when labeling Seen/Unseen
* Merge with Import-Export branch
    * Inheritable Bug report window
    * Common functions: WriteHeader (parse PM mail) and CustomMessage (when incorrect keys)
    * Updates refactor
    * Bug report window
    * Checkbox and with label (only I/E)
    * Error dialog and Info tooltip (only I/E)
    * Add user modal formating (colors, text)
    * Account view style
    * Input box style (used in bug report)
    * Input field style (used in add account and change port)
    * Added style variables for I/E
    * Tab button style
    * Window bar style and functionality (closing / minimize window)

### Release notes
* Improved responsiveness in the UI

### Fixed bugs
* Fixed some formatting issues with imports
* Fixed port changing via CLI

## Silent update - 2018-03-13

### Changed
* Remove firewall error message


## [v1.0.2] - 2018-03-12
* All from silent updates plus following

### Added
* UTF-7 support
* Message when communication between bridge and email client is blocked by firewall (Windows only)

### Changed
* Added gnome-keyring dejavu fonts into linux dependency
* Corrected parentID when reply/forward: taken from `protonmail.internalid` reference
* Update user object in backend after unlock to apply address changes

### Release notes
* UTF7 encoding support for older imported emails

### Fixed bugs
* Fixed issues with conversation threading
* Support for multiple "ReplyTo" addresses
* Fixed issue where some address updates would not register immediately



## [v1.0.1-4 (linux only)] Silent deploy - 2018-02-28

### Changed
* More similar look of window title bar to Windows 10 style.
* Qt 5.10 Button Controls 2 conflict (`icon`->`iconText`)

### Added
* Linux default font
* Multiple reply-to addresses support (also API)
* Command line interface
* Credits are generated automatically from glide.lock
* Created script to build linux packages (dep,rpm,PKGBUILD)
* Correct config folders with env variable `$XDG_CONFIG_HOME`

### Fixed bugs
* Clearing global cache
* Default linux font problems
* Support Reply-To multiple addresses

### Release notes
* Improved visual appearance for win and linux



## [v1.0.1] Silent deploy - 2017-12-30

### Changed
* Fixed bug with parsing address list (CC became BCC)



## [v1.0.1] - 2017-12-20

### Added
* When current log file is more than 10MB open new one, checked every 15min
* Keep only last three log files including current one, triggered every start and when switching log files
* Translation context
* Accessibility objects for button and static text
* All objects are accessible including focus scope for modals and messages
* Automatically fill the email client in bug report form
* Catch corrupted MacOS keychain error and show the link to FAQ
* Unlabel message
* Update emptying and filtering routes
* Parse the address comment as defined in RFC

### Changed
* Default log level set to Warning
* Info logs during adding account and connecting client promoted to warning level
* Log only when email client was changed (previously logged on every assign)
* Force upgrade bubble notification only when requested by API
* Don't show warning systray icon when "You have then newest version!" bubble message is showed
* Header date format  RFC822Z -> RFC1123Z
* IMAP ID and QUOTA responses forced to use quoted strings (fixing SparkMail issue)
* Avoid AddressChanged bubble when no address was changed

### Release notes
* Reduced log file size and log file history
* Accessibility support for MacOS VoiceOver and Windows Narrator
* Improved notification system
* Supported imports with older address format



## [v1.0.0] - 2017-12-06

### Added
* Encoding support of message body, title items, attachment name, for all standard charsets 
* Force update API message handled as new version event

### Changed
* Refactor `bridge-qtfronted` -> `frontend`
* Only one main file and basic support of CLI (not finished)
* Common QML package `ProtonUI`, which is used by `BridgeUI` and `ImportExportUI`
* ChangedUser signal contain address and event type to distinguish between logout, internet off/on, address_change
* API address changed event handled gracefully (if not possible, logout)
* Update mac keychain (should resolve problem with adding new account to bridge, NOT CONFIRMED)
* Solved hanging GUI on keychain error (should solve all win-7, no-gui errors)
* New systray icons for Mac (black and white no background)
* GUI cosmetics:
    - "Click here to start" triangle position
    - Wrong cursor type on link
    - Create main window before notification

### Release notes
* Better notification when new version is needed or when account address is changed.
* Encoding support for the standard charsets.
* Improved visual appearance.

### Fixed bugs
* Fixed missing GUI for Windows with empty keychain.

