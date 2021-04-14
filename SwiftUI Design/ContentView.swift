//
//  ContentView.swift
//  SwiftUI Design
//
//  Created by elhajjaji on 14/4/2021.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if show == false {
                VStack(spacing: 16) {
                    Text("Today")
                        .font(.largeTitle).bold()
                        .frame(maxWidth: .infinity, alignment:.leading)
                    
                    VStack (spacing: 0){
                        Text("Picture of the day".uppercased())
                            .foregroundColor(.white)
                            .font(.largeTitle).bold()
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.bottomLeading)
                            .padding()


                        Spacer()
                        HStack {
                            Image(uiImage: #imageLiteral(resourceName: "person"))
                                .resizable()
                                .frame(width: 36, height: 36)
                                .background(Color.yellow)
                                .cornerRadius(10)
                                .matchedGeometryEffect(id: "PLogo", in: namespace)

                            
                                
                            VStack(alignment:.leading, spacing:4) {
                                Text("No idea")
                                    .foregroundColor(.white)
                                    .font(.body)
                                    .bold()
                                    .matchedGeometryEffect(id: "Name", in: namespace)


                                Text("A lack of knowledge and information")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                    .matchedGeometryEffect(id: "LDisc", in: namespace)


                            }
                            Spacer()
                                
                        }
                        .frame(maxWidth:.infinity)
                        .padding(12)
                        .background(Color.black.opacity(0.7))
                        .matchedGeometryEffect(id: "BBar", in: namespace)

                        
                    }
                    .frame(maxWidth:.infinity , maxHeight: 335)
                    .background(
                    Image(uiImage: #imageLiteral(resourceName: "IMG_20210202_094130"))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "Image", in: namespace)

                    )
                    .cornerRadius(30)
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                   
                    Spacer()
                   
                }
                .padding(20)
            } else {
                DetailView(namespace: namespace)
            }
        }
        .animation(.spring())
        .onTapGesture {
            show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
