//
//  updatedAnimation.swift
//  practices
//
//  Created by Saransh Dubey on 02/12/23.
//

//import SwiftUI
//
//struct updatedAnimation: View {
//    
//    /// 2 value le lia ek h starting index 0  and text field k andr text empty string
//    @State var scrollToIndex: Int = 0
//       @State var textFieldText: String = ""
//       
//       var body: some View {
//           VStack {
//               /// ek textfield bana dia jisme kuch text vagera daal skte h
//               TextField("Enter a # here...", text: $textFieldText)
//                   .frame(height: 55)
//                   .border(Color.gray)
//                   .padding(.horizontal)
//                   .keyboardType(.numberPad)
//               
//               /// ek scroll view button bana dia
//               Button("SCROLL NOW") {
//                   withAnimation(.spring()) {
//                       /// inputed index ko store krlia and scrollToIndex me bhej dia
//                       /// note --> if let use kr k and Int laga k problematic cases ko handle kr lia
//                       if let index = Int(textFieldText) {
//                           scrollToIndex = index
//                       }
//                   }
//               }
//
//               /// v stack me un 2 cheezo k neeche ek scroll view daal dia
//               ScrollView {
//                   /// scroll view reader geometry reader ki trah h, but index h hisab geometry store krta h
//                   /// but only way we can use scroll view reader is taking you to a certain point
//                   ScrollViewReader { proxy in
//                       ForEach(0..<50) { index in
//                           Text("This is item #\(index)")
//                               .font(.headline)
//                               .frame(height: 200)
//                               .frame(maxWidth: .infinity)
//                               .background(Color.white)
//                               .cornerRadius(10)
//                               .shadow(radius: 10)
//                               .padding()
//                               .id(index)
//                       }
//                       // vo button click hote hi onchange active (kyuki scrollToIndex me change ayega) ho jayega and permorm kr dega animation k sath
//                       // changed as per ios 17 now no need of useless looping just write like that.
//                       .onChange(of: scrollToIndex) {
//                           withAnimation(.spring()) {
//                               proxy.scrollTo(scrollToIndex, anchor: .center)
//                           }
//                       }
//                   }
//               }
//           }
//       }
//   }
//
//
//#Preview {
//    updatedAnimation()
//}
