//
//  HomePage.swift
//  StartingProject
//
//  Created by Matthew Liou on 12/20/22.
//

import SwiftUI

struct HomePage: View {
    @State var imageName = ""
    var body: some View {
        NavigationView{
            //Little lemon logo on top with white background
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
                        Text("")
                            .padding(-2)
                        Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                            .font(.system(.title3 ,design: .default))
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .frame(width:230, alignment: .leading)
                        Text("")
                            .padding(-1)
                        Button(action: {
                            print("Button Click")
                        }, label: {
                            NavigationLink(destination: MainView()) {
                                Text("Reserve a table")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .padding([.leading, .trailing], 10)
                            }
                        })
                        .padding(10)
                        .background(Color(red: 244 / 255, green: 206 / 255, blue: 20 / 255))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        Text("")
                        
                        
                    }
                    Spacer()
                }
                .padding()
            }
                //Start from here
                Text("Today's Menu".uppercased())
                    .fontWeight(.bold)
                    .padding(10)
                Divider()
                    .frame(height: 2)
                    .frame(width: 350)
                    .overlay(.gray.opacity(0.5))
                //Items
            ScrollView{
                VStack{
                    //First Row
                    HStack(alignment: .center){
                        VStack{
                            Image("LemonBar")
                                .resizable()
                                .frame(height: 100)
                                .frame(width: 150)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                            HStack{
                                Text("Lemon Bar")
                                    .font(.system(.headline, design: .default))
                            }
                        }
                        Spacer()
                        VStack{
                            Image("LemonChicken")
                                .resizable()
                                .frame(height: 100)
                                .frame(width: 150)
                                .cornerRadius(20)
                            HStack{
                                Text("Lemon Chicken")
                                    .font(.system(.headline, design: .default))
                            }
                        }
                    }.padding([.leading, .trailing], 32).padding([.top, .bottom], 10)
                    //Second Row
                    HStack(alignment: .center){
                        VStack{
                            Image("ChickenPasta")
                                .resizable()
                                .frame(height: 100)
                                .frame(width: 150)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                            HStack{
                                Text("Chicken Pasta")
                                    .font(.system(.headline, design: .default))
                            }
                        }
                        Spacer()
                        VStack{
                            Image("lemonFish")
                                .resizable()
                                .frame(height: 100)
                                .frame(width: 150)
                                .cornerRadius(20)
                            HStack{
                                Text("Lemon Fish")
                                    .font(.system(.headline, design: .default))
                            }
                        }
                    }.padding([.leading, .trailing], 32).padding([.top, .bottom], 10)
                    //Third Row
                    HStack(alignment: .center){
                        VStack{
                            Image("grilledFish")
                                .resizable()
                                .frame(height: 100)
                                .frame(width: 150)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                            HStack{
                                Text("Grilled Fish")
                                    .font(.system(.headline, design: .default))
                            }
                        }
                        Spacer()
                        VStack{
                            Image("GreekSalad")
                                .resizable()
                                .frame(height: 100)
                                .frame(width: 150)
                                .cornerRadius(20)
                            HStack{
                                Text("Greek Salad")
                                    .font(.system(.headline, design: .default))
                            }
                        }
                    }.padding([.leading, .trailing], 32).padding([.top, .bottom], 10)
                    //Fourth Row
                    HStack(alignment: .center){
                        VStack{
                            Image("lemonTea")
                                .resizable()
                                .frame(height: 100)
                                .frame(width: 150)
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                            HStack{
                                Text("Lemon Tea")
                                    .font(.system(.headline, design: .default))
                            }
                        }
                        Spacer()
                        VStack{
                            Image("BobaTea")
                                .resizable()
                                .frame(height: 100)
                                .frame(width: 150)
                                .cornerRadius(20)
                            HStack{
                                Text("Boba Tea")
                                    .font(.system(.headline, design: .default))
                            }
                        }
                    }.padding([.leading, .trailing], 32).padding([.top, .bottom], 10)

                }
            }
                
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
