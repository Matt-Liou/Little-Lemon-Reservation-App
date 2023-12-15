//
//  PopupView.swift
//  StartingProject
//
//  Created by Matthew Liou on 1/14/23.
//

//https://www.youtube.com/watch?v=OaIn7HBlCSk&ab_channel=tundsdev
import SwiftUI

struct PopupView: View {
    
    @EnvironmentObject var displayPopUp: PopupDisplay
    let didClose: () -> Void
    
    var title: String = "Lemon Bar"
    var picture: String = "LemonBar"
    var descritpion: String = "The lemon bar, also called lemon square, is a popular type of dessert bar in the United States consisting of a thin, shortbread crust and a lemon curd filling."
    
    var body: some View {
        PopContent(title: displayPopUp.displayTitle, picture: displayPopUp.picture, descritpion: displayPopUp.descDict[displayPopUp.picture] ?? "Error")
        .frame(height: 390)
        .frame(width: 325)
        .padding(.horizontal, 24)
        .padding(.vertical, 40)
        .padding(.top, -10)
        .multilineTextAlignment(.leading)
        .background(background)
        .overlay(alignment: .topTrailing){
            Button{
                didClose()
            }label: {
                Image(systemName: "xmark")
                    .symbolVariant(.circle.fill)
                    .font(.system(size: 35, weight: .bold, design: .rounded))
            }
            .foregroundStyle(.gray.opacity(0.4))
            .padding()
        }
        .transition(.move(edge: .bottom))
    }
}

struct PopContent: View{
    
    //defualt values
    var title: String = "Lemon Bar"
    var picture: String = "LemonBar"
    var descritpion: String = "The lemon bar, also called lemon square, is a popular type of dessert bar in the United States consisting of a thin, shortbread crust and a lemon curd filling."
    
    var body: some View{
        VStack{
            HStack {
                Image("LittleLemonLogo")
                    .resizable()
                    .frame(height: 40)
                    .frame(width: 40)
                Text(title)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundColor(.black.opacity(0.6))
//                    .padding()
            }.padding(.top, -13)
            Image(picture)
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                //.frame(width: 280)
                .padding(.top, 5)
                .padding(.bottom, 13)
            Text(descritpion)
                .font(.system(size: 17))
                .foregroundColor(.black.opacity(0.6))
        }
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView {}
            .padding()
            .background(.blue)
            .previewLayout(.sizeThatFits)
            .environmentObject(PopupDisplay())
    }
}

private extension PopupView{
    var background: some View{
        RoundedCorners(color: .white, tl: 20, tr: 20, bl: 20, br: 20)
            .shadow(color: .black.opacity(0.5), radius:7)
    }
}

//private extension PopupView{
//
//    var close: some View{
//        Button{
//            didClose()
//        }label: {
//            Image(systemName: "xmark")
//                .symbolVariant(.circle.fill)
//                .font(.system(size: 35, weight: .bold, design: .rounded))
//        }
//        .foregroundStyle(.gray.opacity(0.4))
//        .padding()
//    }
//
//    var picture: some View{
//        Image("LemonBar")
//            .resizable()
//            .frame(height: 200)
//            .frame(width: 320)
//            .padding()
//
//    }
//
//    var logo: some View{
//        Image("LittleLemonLogo")
//            .resizable()
//            .frame(height: 40)
//            .frame(width: 40)
//    }
//
//    var title: some View{
//        Text("Lemon Bar")
//            .font(.system(size: 30, weight: .bold, design: .rounded))
//            .padding()
//    }
//
//    var description: some View{
//        Text("The lemon bar, also called lemon square, is a popular type of dessert bar in the United States consisting of a thin, shortbread crust and a lemon curd filling.")
//            .font(.callout)
//            .foregroundColor(.black.opacity(0.8))
//    }
//}

//https://stackoverflow.com/questions/56760335/round-specific-corners-swiftui
struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}
