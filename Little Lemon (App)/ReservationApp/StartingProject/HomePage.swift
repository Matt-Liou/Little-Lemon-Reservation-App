//
//  HomePage.swift
//  StartingProject
//
//  Created by Matthew Liou on 12/20/22.
//

import SwiftUI

struct HomePage: View {
    
    @EnvironmentObject var sheetManager: SheetManager
    @EnvironmentObject var displayPopUp: PopupDisplay
    
    
    var body: some View {
        NavigationView{
            heading
            
        }
    
    }
    
    var heading: some View{
        VStack{
            ZStack(alignment: .top){
                Color(red: 73 / 255, green: 94 / 255, blue: 87 / 255)
                HStack(alignment: .top) {
                    VStack(alignment: .leading){
                        Text("Little Lemon".uppercased())
                            .font(.system(.largeTitle, design: .serif))
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 244 / 255, green: 206 / 255, blue: 20 / 255))
                        Text("By Yih Der Liou")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.title2)
                        Spacer()
                        Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                            .font(.system(.title3 ,design: .default))
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .frame(width:230, alignment: .leading)
                        
                        Spacer()
                        //.padding()
                        Button(action: {
                            print("Button Click")
                        }, label: {
                            NavigationLink(destination: MainView()) {
                                Text("Reserve a table")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding([.leading, .trailing], 10)
                            }
                        })
                        .padding(10)
                        .background(Color(red: 244 / 255, green: 206 / 255, blue: 20 / 255))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        
                        
                    }.padding(-5)
                    Spacer()
                }
                .padding(23)
            }.frame(height: 300)
                //Start from here
            ScrollView{
                Text("Today's Menu".uppercased())
                    .font(.system(.title, design: .default))
                    .fontWeight(.bold)
                    .padding([.top],20).padding([.bottom],-5)
                    .foregroundColor(Color(red: 73 / 255, green: 94 / 255, blue: 87 / 255))
                Divider()
                    .frame(height: 4)
                    .frame(width: 360)
                    .overlay(.gray.opacity(0.5))
    
                FoodTitle(name: "APPETIZERS")
                //Scrolling View
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .center){
                        //Lists of food...
                        displayFood(picture: "onionRing", name: "Onion Ring")
                            .environmentObject(self.displayPopUp)
                        //MARK: Issue
                        Spacer()
                        displayFood(picture: "chickenWings", name: "Chic-Wings")
                        Spacer()
                        displayFood(picture: "lobsterRolls", name: "Lob-Rolls")
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                    }.padding([.leading, .trailing], 45).padding([.top, .bottom], 10)
                }
                FoodTitle(name: "ENTRÉES")
                //Scrolling View
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .center){
                        //Lists of food...
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                    }.padding([.leading, .trailing], 45).padding([.top, .bottom], 10)
                }
                FoodTitle(name: "DESSERTS")
                //Scrolling View
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .center){
                        //Lists of food...
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                    }.padding([.leading, .trailing], 45).padding([.top, .bottom], 10)
                }
                FoodTitle(name: "DRINKS")
                //Scrolling View
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .center){
                        //Lists of food...
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                        Spacer()
                        displayFood()
                    }.padding([.leading, .trailing], 45).padding([.top, .bottom], 10)
                }
//                Pervious layout
//                VStack{
//                    //First Row
//                    HStack(alignment: .center){
//                        displayFood()
//                        Spacer()
//                        displayFood(picture: "LemonChicken", name: "Lemon Chicken")
//                    }.padding([.leading, .trailing], 45).padding([.top, .bottom], 10)
//                    //Second Row
//                    HStack(alignment: .center){
//                        displayFood(picture: "ChickenPasta", name: "Chicken Pasta")
//                        Spacer()
//                        displayFood(picture: "lemonFish", name: "Lemon Fish")
//                    }.padding([.leading, .trailing], 45).padding([.top, .bottom], 10)
//                    //Third Row
//                    HStack(alignment: .center){
//                        displayFood(picture: "grilledFish", name: "Grilled Fish")
//                        Spacer()
//                        displayFood(picture: "GreekSalad", name: "Greek Salad")
//                    }.padding([.leading, .trailing], 45).padding([.top, .bottom], 10)
//                    //Fourth Row
//                    HStack(alignment: .center){
//                        displayFood(picture: "lemonTea", name: "Lemon Tea")
//                        Spacer()
//                        displayFood(picture: "BobaTea", name: "Boba Tea")
//                    }.padding([.leading, .trailing], 45).padding([.top, .bottom], 10)
//                }
            }.padding(-8)//.environmentObject(PopupDisplay())
                
        }.overlay(alignment: .bottom){
            if sheetManager.action.isPresented{
                PopupView{
                    withAnimation(){
                        sheetManager.dismiss()
                    }
                }.environmentObject(self.displayPopUp) //MARK: issue
            }
        }
    }
}

struct displayFood: View{
    @EnvironmentObject var sheetManager: SheetManager
    @EnvironmentObject var displayPopUp: PopupDisplay
    
    var picture: String = "LemonBar"
    var name: String = "Lemon Bar"
    var body: some View{
        VStack{
            Button(action: {
                withAnimation{
                    sheetManager.present()
                }
                self.displayPopUp.displayTitle = name
                self.displayPopUp.picture = picture
            }){
                Image(picture)
                    .resizable()
                    .frame(height: 85)
                    .frame(width: 85)
                    //.aspectRatio(contentMode: .fill)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(radius: 3)
                    .padding([.bottom], -5)
                
            }
            Text(name)
                .font(.system(.headline, design: .default))
                .foregroundColor(.black.opacity(0.8))
        }.padding([.trailing],10)
    }
}

struct FoodTitle: View {
    var name: String = ""
    var body: some View {
        HStack {
            Text(name)
                .font(.system(.headline, design: .serif))
                .bold()
                .underline()
                .foregroundColor(Color(red: 73 / 255, green: 94 / 255, blue: 87 / 255))
            Spacer()
        }.padding([.leading, .trailing], 40).padding([.top], 10).padding([.bottom], -3)
    }
}

class PopupDisplay: ObservableObject{
    @Published var displayTitle: String = "Default Title"
    @Published var picture: String = "LemonBar"
    @Published var descritpion: String = "The lemon bar, also called lemon square, is a popular type of dessert bar in the United States consisting of a thin, shortbread crust and a lemon curd filling."
    //Use dictionary for description...
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
          .environmentObject(PopupDisplay())
          .environmentObject(SheetManager())
    }
}
