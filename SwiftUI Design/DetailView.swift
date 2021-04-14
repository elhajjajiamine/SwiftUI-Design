//
//  DetailView.swift
//  SwiftUI Design
//
//  Created by elhajjaji on 14/4/2021.
//

import SwiftUI

struct DetailView: View {
    @State var show = false
    var namespace : Namespace.ID
    @State  var appear = false
    
    var body: some View {
        VStack(spacing: 16) {
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
            .frame(maxWidth:.infinity , maxHeight: 550)
            .background(
            Image(uiImage: #imageLiteral(resourceName: "IMG_20210202_094130"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "Image", in: namespace)

            )
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
            VStack{
            Text("If you come across any special trait of meanness or stupidity you must be careful not to let it annoy or distress you, but to look upon it merely as an addition to your knowledge—a new fact to be considered in studying the character of humanity. Your attitude towards it will be that of the mineralogist who stumbles upon a very characteristic specimen of a mineral.")
                .multilineTextAlignment(.leading)
                .padding()
                .offset(y: appear ? 0: -300)
            }
                .onAppear{
                    appear = true
                }
                .onDisappear{
                    appear = false
                }
           
            Spacer()
           
        }
        
        .ignoresSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    @Namespace static  var namespace
    static var previews: some View {
        DetailView(namespace: namespace)
    }
}
