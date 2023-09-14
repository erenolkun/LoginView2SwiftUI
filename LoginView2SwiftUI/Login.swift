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
                    }
                }
                
            }// HStack bitişi
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
