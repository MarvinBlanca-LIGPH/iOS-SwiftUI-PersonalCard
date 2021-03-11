//
//  ContentView.swift
//  SwiftUIPersonalCard
//
//  Created by Mark Marvin Blanca on 3/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("android")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.green, lineWidth: 5)
                    )
                Text("Mark Marvin M. Blanca")
                    .font(Font.custom("Papyrus", size: 30))
                    .bold()
                    .foregroundColor(.black)
                Text("Android Developer")
                    .foregroundColor(.black)
                    .font(.system(size: 22))
                Divider()
                InfoView(icon: "phone.fill", text: "+63 912 3456 789")
                InfoView(icon: "envelope.fill", text: "email@gmail.com")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
