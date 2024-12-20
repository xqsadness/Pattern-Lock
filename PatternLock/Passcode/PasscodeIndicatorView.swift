//
//  PasscodeIndicatorView.swift
//  PasscodeView
//
//  Created by xqsadness on 20/12/24.
//
import SwiftUI

struct PasscodeIndicatorView: View {
    
    @Environment(\.colorScheme) var scheme
    
    @Binding var passcode: String
    @Binding var isAnimation: Bool
    
    var body: some View {
        HStack(spacing: 32){
            ForEach(0 ..< 4){ index in
                Circle()
                    .fill(passcode.count > index ? (scheme == .dark ? .white : .black) : Color(scheme == .dark ? .black : .white))
                    .frame(width:20,height: 20)
                    .overlay{
                        Circle()
                            .stroke(scheme == .dark ? .white : .black,lineWidth: 1.0)
                    }
            }
        }
        .offset(x: isAnimation ? -10 : 0)
        .animation(Animation.easeInOut(duration: 0.1).repeatCount(2), value: isAnimation)
    }
}
