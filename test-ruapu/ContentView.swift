import SwiftUI

struct ContentView: View {
    @State private var supportedISAs: [String] = []
    @State private var showingISAs = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button(action: {
                RUAPUWrapper.initRUAPU()
                supportedISAs = RUAPUWrapper.supportedISAs()
                showingISAs = true
            }) {
                Text("初始化 RUAPU")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            if showingISAs {
                Text("支持的 ISA:")
                    .font(.headline)
                    .padding(.top)
                
                ForEach(supportedISAs, id: \.self) { isa in
                    Text(isa)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
