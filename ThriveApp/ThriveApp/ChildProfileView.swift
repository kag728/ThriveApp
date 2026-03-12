//
//  SwiftUIView.swift
//  ThriveApp
//
//  Created by Emily Heckel on 3/1/20.
//  Copyright © 2020 Katherine Griffin. All rights reserved.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct ChildProfileView: View {
    @EnvironmentObject var themeManager: ThemeManager
    
    func signOut(){
        let firebaseAuth = Auth.auth();
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
    }
    
    
    var body: some View {
        VStack {
            HStack(spacing: 50) {
                
                VStack {
                    
                    Image("commportal").resizable()
                        .frame(width: 130.0, height: 130.0)
                        .clipShape(Rectangle())
                    NavigationLink(destination: ParentCommunicationPortal()) {
                        Text("Messages")
                    }
                    
                }
                
                VStack {
                    
                    Image("notification").resizable()
                        .frame(width: 130.0, height: 130.0)
                        .clipShape(Rectangle())
                    Button(action: {}) {
                        Text("Notifications")
                    }
                }
            }
            .padding(.top)
            HStack(spacing: 50) {
                VStack {
                    
                    Image("scheduler").resizable()
                        .frame(width: 135.0, height: 135.0)
                        .clipShape(Rectangle())
                    NavigationLink(destination: ScheduleCal()) {
                        Text("Schedule")
                    }
                }
                VStack {
                    
                    Image("toolbox").resizable()
                        .frame(width: 130.0, height: 130.0)
                        .clipShape(Rectangle())
                    NavigationLink(destination: ToolboxView()) {
                        Text("Regulation Toolbox")
                    }
                }
            }
            .padding(.top)
            HStack(spacing: 50) {
                VStack {
                    
                    Image("rewardsbank").resizable()
                        .frame(width: 130.0, height: 130.0)
                        .clipShape(Rectangle())
                    NavigationLink(destination: RewardBankView()) {
                        Text("Reward Bank")
                    }
                }
                VStack {
                    
                    Image("geofence").resizable()
                        .frame(width: 130.0, height: 130.0)
                        .clipShape(Rectangle())
                    Button(action: {}) {
                        Text("Geofences")
                    }
                }
            }
            .padding(.top)
            Spacer()
            
            // Dark mode picker
            Picker("Appearance", selection: $themeManager.themeMode) {
                Text("System").tag(ThemeMode.system)
                Text("Light").tag(ThemeMode.light)
                Text("Dark").tag(ThemeMode.dark)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 40)
            .padding(.bottom, 8)
            .accessibilityLabel("Theme selection")
            
            Button(action: {self.signOut()}) {
                ThriveGradientButton(label: "Sign Out", maxW: 150)
            }
            .navigationBarTitle(Text("Adam's Profile"), displayMode: .inline)
        }
        .background(Color("ThriveBackground").edgesIgnoringSafeArea(.all))
    }
}

struct ChildProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ChildProfileView().environmentObject(ThemeManager())
    }
}
