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
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    
    
    var body: some View {
        NavigationView{
            heading
            
        }
    
    }
    
    @State private var hasAppeared = false
    
    var heading: some View{
        VStack{
            ZStack(alignment: .top){
                Color(red: 73 / 255, green: 94 / 255, blue: 87 / 255)
                    .edgesIgnoringSafeArea([.all])
                HStack(alignment: .top) {
                    VStack(alignment: .leading){
                        HStack(alignment: .center) {
                            Image("LittleLemonLogo")
                                .resizable()
                                .frame(height: 35)
                                .frame(width: 35)
                            Text("Little Lemon".uppercased())
                                .font(.system(size: 38, design: .serif))
                                .fontWeight(.medium)
                            .foregroundColor(Color(red: 244 / 255, green: 206 / 255, blue: 20 / 255))
                            Spacer()
                        }.padding(.top, -10)
                        Text("By Yih Der Liou")
                            .fontWeight(.semibold)
                            .font(.caption)
                            .foregroundColor(.white.opacity(0.6))
                            .padding(.top, -30)
                        Spacer()
                        Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                            .font(.system(.title3 ,design: .default))
                            .foregroundColor(.white.opacity(0.9))
                            .fontWeight(.medium)
                            .frame(width:230, alignment: .leading)
                            .padding(.top, -10)
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
                        .cornerRadius(30)
                        .shadow(radius: 2)
                        .onAppear{
                            if !self.hasAppeared{
                                DispatchQueue
                                    .main
                                    .asyncAfter(deadline: .now() + 2){
                                        launchScreenManager.dismiss()
                                    }
                                self.hasAppeared = true
                            }
                        }
                        //Spacer()
                        
                    }.padding(-5)
                    Spacer()
                }
                .padding(23)
            }.frame(height: 290).shadow(radius: 10)
        
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
                    HStack(alignment: .top){
                        //Lists of food...
                        displayFood(picture: "onionRing", name: "Onion Ring")
                        Spacer()
                        displayFood(picture: "PigsBlanket", name: "Pigs Blanket")
                        Spacer()
                        displayFood(picture: "lobsterRolls", name: "Lobster Rolls")
                        Spacer()
                        displayFood(picture: "DevilEgg", name: "Deviled Egg")
                        Spacer()
                        displayFood(picture: "CrabCakes", name: "Crab Cakes")
                    }.padding([.leading, .trailing], 45).padding(.top, 3)
                }.padding(.bottom, -2)
                FoodTitle(name: "ENTRÉES")
                //Scrolling View
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top){
                        //Lists of food...
                        displayFood(picture: "OrangeChic", name: "Orange-Chic")
                        Spacer()
                        displayFood(picture: "ChicPie", name: "Chicken Pie")
                        Spacer()
                        displayFood(picture: "BatFishwFries", name: "Battered Fish")
                        Spacer()
                        displayFood(picture: "Nigiri", name: "Nigiri")
                        Spacer()
                        displayFood(picture: "BrieCheeBurger", name: "Chee-Burger")
                    }.padding([.leading, .trailing], 45).padding(.top, 3)
                }.padding(.bottom, -2)
                FoodTitle(name: "DESSERTS")
                //Scrolling View
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top){
                        //Lists of food...
                        displayFood(picture: "Tiramisu", name: "Tiramisu")
                        Spacer()
                        displayFood(picture: "BerryChantCake", name: "Berry Cake")
                        Spacer()
                        displayFood(picture: "StrawShortCake", name: "Straw-Cake")
                        Spacer()
                        displayFood(picture: "LemonBars", name: "Lemon Bars")
                        Spacer()
                        displayFood(picture: "Flan", name: "Flan")
                    }.padding([.leading, .trailing], 45).padding(.top, 3)
                }.padding(.bottom, -2)
                FoodTitle(name: "DRINKS")
                //Scrolling View
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top){
                        //Lists of food...
                        displayFood(picture: "Manhattan", name: "Manhattan")
                        Spacer()
                        displayFood(picture: "mojito 1", name: "Mojito")
                        Spacer()
                        displayFood(picture: "Martini", name: "Martini")
                        Spacer()
                        displayFood(picture: "Negroni", name: "Negroni")
                        Spacer()
                        displayFood(picture: "Margarita", name: "Margarita")
                    }.padding([.leading, .trailing], 45).padding(.top, 3)
                }.padding(.bottom, -2)
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
            }.padding(-8)
        }.overlay(alignment: .bottom){
            if sheetManager.action.isPresented{
                PopupView{
                    withAnimation(){
                        sheetManager.dismiss()
                    }
                }
            }
        }
    }
}

struct displayFood: View{
    @EnvironmentObject var sheetManager: SheetManager
    @EnvironmentObject var displayPopUp: PopupDisplay
    
    var picture: String = "LemonBar"
    var name: String = "Lemon Bar"
    var customX: Double = 85
    var customY: Double = 85
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
                    .scaledToFit()
                    .frame(height: customY)
                    .frame(width: customX)
                    //.aspectRatio(contentMode: .fill)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(radius: 3)
                    .padding([.bottom], -5)
                
            }
            Text(name)
                .font(.system(.subheadline, design: .default))
                .bold()
                .foregroundColor(.black.opacity(0.8))
                .frame(width: 98)
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
                .shadow(radius: 15)
            Spacer()
        }.padding([.leading, .trailing], 40).padding([.top], 10).padding([.bottom], -3)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
          .environmentObject(PopupDisplay())
          .environmentObject(SheetManager())
          .environmentObject(LaunchScreenManager())
    }
}
