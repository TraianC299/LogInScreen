//
//  ContentView.swift
//  CommoStore
//
//  Created by Traian on 05.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State var username = ""
    @State var password = ""
    @State var wrongUsername = 0
    @State var wrongPassword = 0
    @State var showingLoginScreen = false



    
    func autheticateUser(username:String, password:String) -> Void{
        if(username.lowercased()=="mariobros"){
            wrongUsername=0
            if(password.lowercased()=="password"){
                wrongPassword=0
                showingLoginScreen=true
            }else{
                wrongPassword=2
            }
        }else{
            wrongUsername=2
        }
    }

    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    TextField("Username", text:$username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width:CGFloat(wrongUsername))
                    SecureField("Password", text:$password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width:CGFloat(wrongPassword))
                    Button("Log in"){
                        autheticateUser(username: username, password: password)
                    }
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)

                    
                }
            }
            .navigationBarHidden(true)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
