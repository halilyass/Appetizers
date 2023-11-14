//
//  OrderView.swift
//  Appetizers
//
//  Created by Halil YAŞ on 8.11.2023.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationView {
            
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Order Placed")
                    } label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandartButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no Items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }

}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
