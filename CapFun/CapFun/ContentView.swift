//
//  ContentView.swift
//  CapFun
//
//  Created by m1 on 27/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = "your text here..."
    @State var capMode = 0
    @State var showCopiedMessage = false

    
    var body: some View {
        //Text(view) means simple text
        //TextField means taking values from user or a user can type
        
        VStack {
            //MARK: - MAIN TEXT RESULT
            Spacer()
            if capMode == 1 {
                Text(userText.uppercased())
                    .font(.largeTitle)
                    .padding()
            }
            
            if capMode == 2 {
                Text(userText.capitalized)
                    .font(.largeTitle)
                    .padding()
            }
            
            if capMode == 3 {
                Text(userText.lowercased())
                    .font(.largeTitle)
                    .padding()
            }
            
            
            Spacer()
           //MARK: - BUTTONS
            
            if showCopiedMessage {
                Text("Copied!👍")
                    .foregroundColor(.green)
                    .bold()
                    .transition(.opacity)
                    .padding(.bottom, 5)
            }

            
            // COPY Button
            Button(action: {
                    var textToCopy = userText

                    switch capMode {
                    case 1:
                        textToCopy = userText.uppercased()
                    case 2:
                        textToCopy = userText.capitalized
                    case 3:
                        textToCopy = userText.lowercased()
                    default:
                        break
                    }

                    UIPasteboard.general.string = textToCopy
                    showCopiedMessage = true
                    
                    // Hide the message after 2 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        showCopiedMessage = false
                    }
                    
                    print("Copied: \(textToCopy)")
                }) {
                    CustomButtonView(title: "Copy", color: .orange)
                }

            
            HStack {
                
                // ALL CAPS Button
                Button(action: {
                    capMode = 1
                    print("ALL CAPS tapped")
                }) {
                    CustomButtonView(title: "ALL CAPS", color: .red)
                }
                
                // First letter Button
                Button(action: {
                    capMode = 2
                    print("First letter tapped")
                }) {
                    CustomButtonView(title: "First Letter", color: .green)
                }
                
                //lowercase Button
                Button(action: {
                    capMode = 3
                    print("lowecase tapped")
                }) {
                    CustomButtonView(title: "lowercase", color: .blue)
                }
                
            }//: - HSTACK
            
            //MARK: - TEXT FIELD
            TextField("Tap a button to change how this sentence looks", text: $userText)
                .padding()
            
        }//: - VSTACK
    }
}

#Preview {
    ContentView()
}
