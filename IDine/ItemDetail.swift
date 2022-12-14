//
//  ItemDetail.swift
//  IDine
//
//  Created by Alex Paramonov on 20.07.22.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var oreder: Order
    
    let item: MenuItem
    
    var body: some View {
        
        Button("Order This") {
            oreder.add(item: item)
        }
        .font(.headline)
        
        VStack{
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(Order())
            
        }
    }
}
