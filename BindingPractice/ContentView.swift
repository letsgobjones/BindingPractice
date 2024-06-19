//
//  ContentView.swift
//  BindingPractice
//
//  Created by Brandon Jones on 6/19/24.
//

import SwiftUI


struct LightBulbView: View {
  
  @Binding  var isOn: Bool
  
  
  var body: some View {
    VStack {
      Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
        .font(.largeTitle)
        .foregroundStyle(isOn ? .yellow : .black)
      Button("Toggle") {
        isOn.toggle()
        
      }

  }
}
}




struct ContentView: View {
  @State private  var isLightOn: Bool = false
  
    var body: some View {
        VStack {
          LightBulbView(isOn: $isLightOn)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(isLightOn ? .black : .white)
    }
}

#Preview {
    ContentView()
}
