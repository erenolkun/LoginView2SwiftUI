//
//  Login.swift
//  LoginView2SwiftUI
//
//  Created by FERDA OLKUN on 14.09.2023.
//

import SwiftUI

struct Login: View {
    @State var password = ""
    var social = ["twitter","facebook","google"]
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 12){
                    Text("Tekrar Merhaba").fontWeight(.bold)
                    Text("Serhat").font(.title).fontWeight(.bold)
                    
                    Button(action: {}) {
                        Text("Bu Ben Değilim")
                            .font(.system(size:14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Renk1"))
                    }
                }
                Spacer(minLength: 0)
                
                Image("KisiProfil1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
            }// HStack bitişi
            .padding(.horizontal, 25)
            .padding(.top, 30)
            
            VStack(alignment: .leading, spacing: 15){
                Text("Parola")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("Parola",text: $password).padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, y:5)
                
                    .shadow(color: Color.black.opacity(0.1), radius: 5, y: -5)
                Button(action:{}){
                    Text("Parolamı Unuttum")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Renk1"))
                }
                .padding(.top,10)
                
            }//VStack parola alanı bitişi
            
            .padding(.horizontal, 25)
            .padding(.top, 25)
            
            //Oturum açma butonu
            
            Button(action:{}){
                Text("Oturum Aç").font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width:UIScreen.main.bounds.width - 50 )
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("Renk1"),Color("Renk2")]), startPoint: .leading, endPoint: .trailing)
                    ).cornerRadius(10)
            }.padding(.horizontal, 25)
                .padding(.top, 25)
            
            //Sosya Medya Butonları
            Button(action:{}){
                HStack(spacing:35){
                    Image(systemName: "faceid").font(.system(size: 26)).foregroundColor(Color("Renk1"))
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
