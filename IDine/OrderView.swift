//
//  OrderView.swift
//  IDine
//
//  Created by Alex Paramonov on 20.07.22.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                Section {
                    NavigationLink(destination: CheckoutView()) {
                        Text("Place Order")
                    }
                }
            }
            .navigationTitle("Order")
            .listStyle(.insetGrouped)
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
