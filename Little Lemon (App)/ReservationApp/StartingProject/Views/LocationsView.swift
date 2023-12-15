import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    var body: some View {
        VStack {
            LittleLemonLogo() //display little lemon logo
                .padding(.top, 30)
            
            //Display either text depending on model -> displayingReservationForm
            Text(model.displayingReservationForm ? "Reservation Detail" : "Select a Location")
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            .padding(.top)
            
            NavigationView {
                ZStack{
                    //Create a list that goes through mode.restaurants
                    List(model.restaurants, id: \.self) { eachrest in
                        //Create a link to ReservationForm with RestaurantView as the graphics
                        NavigationLink(destination: ReservationForm(eachrest).navigationBarBackButtonHidden(true)) {
                            RestaurantView(eachrest)
                        }
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }.scrollContentBackground(.hidden)
        }
        .padding(.top, -10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

