//
//  ContentView.swift
//  TesteHaptics WatchKit Extension
//
//  Created by Luiz Araujo on 22/06/22.
//

import SwiftUI

struct ContentView: View {
    private let tapticsCall = TapticsCall()
    
    @State private var showingSheet: Bool = false
    @State private var hapticChosen: HapticTypes = .click
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Click")
                .padding()
                .onTapGesture {
                    tapticsCall.giveStop()
                    showingSheet.toggle()
                    hapticChosen = .click
                    
                }
            
            HStack {
                Text("Sucess")
                    .padding()
                    .onTapGesture {
                        tapticsCall.giveSuccess()
                        showingSheet.toggle()
                        hapticChosen = .success
                }
                
                Spacer()
                
                Text("Failure")
                    .padding()
                    .onTapGesture {
                        tapticsCall.giveFailure()
                        showingSheet.toggle()
                        hapticChosen = .failure
                    }
            }
            
            HStack {
                Text("Notification")
                    .padding()
                    .onTapGesture {
                        tapticsCall.giveNotification()
                        showingSheet.toggle()
                        hapticChosen = .notification
                }
                
                Spacer()
                
                Text("Retry")
                    .padding()
                    .onTapGesture {
                        tapticsCall.giveRetry()
                        showingSheet.toggle()
                        hapticChosen = .retry
                    }
            }
            
            HStack {
                Text("Up")
                    .padding()
                    .onTapGesture {
                        tapticsCall.giveDirectionUp()
                        showingSheet.toggle()
                        hapticChosen = .directionUp
                }
                
                Spacer()
                
                Text("Down")
                    .padding()
                    .onTapGesture {
                        tapticsCall.giveDirectionDown()
                        showingSheet.toggle()
                        hapticChosen = .directionDown
                    }
            }
            
            HStack {
                Text("Start")
                    .padding()
                    .onTapGesture {
                        tapticsCall.giveStart()
                        showingSheet.toggle()
                        hapticChosen = .start
                }
                
                Spacer()
                
                Text("Stop")
                    .padding()
                    .onTapGesture {
                        tapticsCall.giveStop()
                        showingSheet.toggle()
                        hapticChosen = .stop
                    }
            }
        }
        .sheet(isPresented: $showingSheet) {
            SheetView(text: hapticChosen.name)
                .background(.red)
        }
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    let text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.red, .purple]), startPoint: .top, endPoint: .bottom)
                )
            
            Text(text)
                .font(.title3)
                .padding()
        }
        .onTapGesture {
            dismiss()
        }
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        SheetView(text: "Press to dismiss")
    }
}
