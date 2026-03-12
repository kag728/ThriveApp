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
                    .foregroundColor(.primary)
                    .padding(5)
                Text("Thriving on the Spectrum")
                    .font(.title)
                    .foregroundColor(.secondary)
                    .padding(5)
                NavigationLink(destination: SignInView() ) {
                    Text("Sign In")
                        .foregroundColor(.white)
                    .font(.title)
                    .frame(minWidth: 0, maxWidth: 200)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color("ThriveBlue"), Color("GradientEnd")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)

                }.padding()
                NavigationLink(destination: SignUpView()) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                    .font(.title)
                    .frame(minWidth: 0, maxWidth: 200)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color("ThriveBlue"), Color("GradientEnd")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                }
                NavigationLink(destination: ChildProfileView()) {
                    Text("Testing")
                        .foregroundColor(.white)
                    .font(.title)
                    .frame(minWidth: 0, maxWidth: 200)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color("ThriveBlue"), Color("GradientEnd")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                }.padding()
            }
            .background(Color(.systemBackground))
        }
        .preferredColorScheme(themeManager.resolvedColorScheme)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ThemeManager())
    }
}
