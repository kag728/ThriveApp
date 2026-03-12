//
//  ContentView.swift
//  ThriveApp
//
//  Created by Katherine Griffin on 1/31/20.
//  Copyright © 2020 Katherine Griffin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var themeManager: ThemeManager
    
    var body: some View {
        NavigationView {
            VStack {
                Image("cropped").resizable()
                    .frame(width: 130.0, height: 130.0)
                    .clipShape(Circle())
                Text("Thrive")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ThriveText"))
                    .padding(5)
                Text("Thriving on the Spectrum")
                    .font(.title)
                    .foregroundColor(Color("ThriveText"))
                    .padding(5)
                NavigationLink(destination: SignInView()) {
                    ThriveGradientButton(label: "Sign In", maxW: 200)
                }.padding()
                NavigationLink(destination: SignUpView()) {
                    ThriveGradientButton(label: "Sign Up", maxW: 200)
                }
                NavigationLink(destination: ChildProfileView()) {
                    ThriveGradientButton(label: "Testing", maxW: 200)
                }.padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("ThriveBackground"))
        }
        .preferredColorScheme(themeManager.colorScheme)
    }
}

/// Reusable gradient button used across views.
struct ThriveGradientButton: View {
    let label: String
    let maxW: CGFloat
    
    var body: some View {
        Text(label)
            .foregroundColor(.white)
            .font(.title)
            .frame(minWidth: 0, maxWidth: maxW)
            .padding()
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("ThriveBlue"), Color("ThriveGradientEnd")]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(40)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ThemeManager())
    }
}
