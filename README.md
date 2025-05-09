# CapFun

CapFun is a simple and elegant iOS application built with SwiftUI that allows users to transform text into different capitalization formats. The app provides a clean and intuitive interface for text manipulation.

## Features

- **Text Transformation Options:**
  - ALL CAPS: Converts text to uppercase
  - First Letter: Capitalizes the first letter of each word
  - lowercase: Converts text to lowercase

- **User-Friendly Interface:**
  - Clean and modern SwiftUI design
  - Custom-styled buttons with distinct colors
  - Real-time text preview
  - Copy functionality with visual feedback

## Technical Details

### Architecture
- Built using SwiftUI framework
- Follows MVVM (Model-View-ViewModel) architecture pattern
- Uses Swift's native string manipulation capabilities

### Components

1. **CapFunApp.swift**
   - Main application entry point
   - Sets up the primary window and scene

2. **ContentView.swift**
   - Main view controller
   - Handles user input and text transformation
   - Manages state for text and capitalization mode
   - Implements copy functionality with clipboard integration

3. **CustomButtonView.swift**
   - Reusable button component
   - Customizable title and color
   - Consistent styling with rounded corners and padding

## Requirements

- iOS 15.0 or later
- Xcode 13.0 or later
- Swift 5.5 or later

## Usage

1. Enter your text in the text field at the bottom of the screen
2. Choose your desired capitalization format using the buttons:
   - ALL CAPS (red button)
   - First Letter (green button)
   - lowercase (blue button)
3. Use the Copy button (orange) to copy the transformed text to your clipboard
4. A confirmation message will appear when text is copied

## Development

The project is structured for easy maintenance and future enhancements. Each component is modular and follows SwiftUI best practices.
