//
//  mi_primera_pantalla.swift
//  mi_primera_app_swiftui
//
//  Created by alumno on 2/24/25.
//

import SwiftUI

struct MiPrimeraPantalla: View {
    
    var body: some View {
       Spacer()
        
        CampoSencillo()
        
        Spacer()
        
        CampoSencillo()
            .background(Color.blue)
        CampoSencillo()
        CampoSencillo()
    }
}

struct CampoSencillo: View{
    @State private var texto = ""
    
    var body: some View{
        Text("Hola \(texto)")
        Spacer()
        
        TextField("Place holder", text: $texto)
        
        Spacer()
        
        Button(action: {
            texto = ""
        }){
           
            Image(systemName: "trash.square.fill")
                .imageScale(.large)
                .tint(.yellow)
        }
        .background(Color.red)
    
        Spacer()
    }
}

#Preview {
    MiPrimeraPantalla()
}
