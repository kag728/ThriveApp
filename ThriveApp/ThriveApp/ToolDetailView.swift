//
//  ToolDetailView.swift
//  ThriveApp
//
//  Created by Sam Auld on 4/6/20.
//  Copyright © 2020 Katherine Griffin. All rights reserved.
//

import SwiftUI

struct ToolDetailView: View {
    var body: some View {
            VStack {
                Image("toolbox").resizable()
                .frame(width: 250, height: 250)
                    .offset(y: -70)
                
                Button(action:{}) {
                   Text("Make Active Tool")
                    .foregroundColor(Color("ThriveBlue"))
                    .font(.title)
                    .padding()
                    .border(Color("ThriveBlue"), width: 4)
                }
                .padding(.top)
                Button(action:{}) {
                   Text("Change Tool Image")
                    .foregroundColor(Color("ThriveBlue"))
                    .font(.title)
                    .padding()
                    .border(Color("ThriveBlue"), width: 4)
                }
                .padding(.top)
                Button(action:{}) {
                   Text("Change Tool Name")
                    .foregroundColor(Color("ThriveBlue"))
                    .font(.title)
                    .padding()
                    .border(Color("ThriveBlue"), width: 4)
                }
                .padding(.top)
                Button(action:{}) {
                   Text("Delete Tool")
                    .foregroundColor(.red)
                    .font(.title)
                    .padding()
                    .border(Color.red, width: 4)
                }
                .padding(.top)
            }
        .navigationBarTitle(Text("Tool Name"))
    }
}

struct ToolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ToolDetailView()
    }
}
