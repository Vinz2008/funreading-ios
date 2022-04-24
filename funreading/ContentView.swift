import SwiftUI
import WebKit

struct ContentView: View {
    @ObservedObject var webViewModel = WebViewModel(url: "https://www.funreading.fr")
    var body: some View {
        VStack {
            WebViewContainer(webViewModel: webViewModel)
            if webViewModel.isLoading {
                //Spinner()
                //.frame(height: 200)
            }
        }
        .navigationBarTitle(Text(webViewModel.title), displayMode: .inline)
        .navigationBarItems(leading: Button(action: {
            webViewModel.shouldGoBack.toggle()
        }, label: {
            if webViewModel.canGoBack {
                Image(systemName: "arrow.left")
                    .frame(width: 44, height: 44, alignment: .center)
                    .foregroundColor(.black)
            } else {
                EmptyView()
                    .frame(width: 0, height: 0, alignment: .center)
            }
        })
        )
    }
}
