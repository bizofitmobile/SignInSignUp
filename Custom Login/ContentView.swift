//
//  ContentView.swift
//  Custom Login
//
//  Created by Bizofit on 11/12/19.
//  Copyright © 2019 Bizofit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Login()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Login : View {
    
    @State var user = ""
    @State var pass = ""
    
    var body : some View{
        
        VStack{
            
            Image("img")
            
            Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20)
            
            VStack(alignment: .leading){
                
                VStack(alignment: .leading){
                    
                    Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                    
                    HStack{
                        
                        TextField("Enter Your Username", text: $user)
                        
                        if user != ""{
                            
                            Image("check").foregroundColor(Color.init(.label))
                        }
                        
                    }
                    
                    Divider()
                    
                }.padding(.bottom, 15)
                
                VStack(alignment: .leading){
                    
                    Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                        
                    SecureField("Enter Your Password", text: $pass)
                    
                    Divider()
                }
                
                HStack{
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Forget Password ?").foregroundColor(Color.gray.opacity(0.5))
                    }
                }

            }.padding(.horizontal, 6)
            
            
            bottomView()
            
        }.padding()
    }
}

struct bottomView : View{
    
    var body : some View{
        
        VStack{
            
            Button(action: {
                
            }) {
                
                Text("Sign In").foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                
                
            }.background(Color("bg"))
            .clipShape(Capsule())
            .padding(.top, 45)
            
            Text("(or)").foregroundColor(Color.gray.opacity(0.5)).padding(.top,30)
            
            HStack{
                
                Button(action: {
                    
                }) {
                    
                    Image("google").renderingMode(.original).padding()
                    
                    
                }.background(Color("Color"))
                .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                   Image("fb").renderingMode(.original).padding()
                    
                    
                }.background(Color("Color"))
                .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                   Image("link").renderingMode(.original).padding()
                    
                    
                }.background(Color("Color"))
                .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                   Image("twitter").renderingMode(.original).padding()
                    
                    
                }.background(Color("Color"))
                .clipShape(Circle())
                
            }.padding(.top, 25)
            
            HStack(spacing: 8){
                
                Text("Don't Have An Account ?").foregroundColor(Color.gray.opacity(0.5))
                
                Button(action: {
                    
                }) {
                    
                   Text("Sign Up")
                    
                }.foregroundColor(.blue)
                
            }.padding(.top, 25)
        }
    }
}
