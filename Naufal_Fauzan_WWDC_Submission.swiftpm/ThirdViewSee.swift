//
//  SwiftUIView.swift
//  Naufal Fauzan WWDC Submission
//
//  Created by Naufal on 17/04/22.
//

import SwiftUI
import AVFoundation
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return false
    }
}
struct ThirdViewSee: View {
    
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .camera
    @State var userAnswer : String = ""
    @State var userAnswer11 : String = ""
    @State var userAnswer12 : String = ""
    @State var userAnswer13 : String = ""
    @State var userAnswer14 : String = ""
    @State var userAnswer15 : String = ""
    @State var placeholder : String = ""
    @State var isHidden = false
    @State var userInputNumber = 0
    @State var textHidden = Text("You've Finished! now click the next button to continue!")
    @State private var refresh = false
    @FocusState private var userType: Bool
    @State var show : Bool = false
    @State var customAlert = false
    
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.98, green: 0.95, blue: 0.91, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                Spacer()
                    HStack{
                        Text("Identify 5 things you can see 👀")
                            .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                            .font(Font.custom("Arial Rounded MT Bold", size: 50))
                            .fontWeight(.heavy)
                            .font(.system(size: 50))
                            .minimumScaleFactor(0.01)
                            .foregroundColor(.black)
                            .padding(.top, 20)
                            .padding(.bottom, 1)
                            .padding(.trailing, 50)
                            .padding(.leading, 50)
                            .multilineTextAlignment(.center)
                    }
                HStack{
                    Spacer()
                Image("see")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding()
                    Spacer()
                }
                
                    Text("Open your eyes widely and tell us what can you see around you!")
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(Font.custom("futura", size: 30))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                    .padding(.bottom, 1)
                Text("For example: computer in front of you, the walls, etc")
                    .font(Font.custom("futura", size: 25))
                    .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                    .font(.system(size: 30))
                    .minimumScaleFactor(0.01)
                    .multilineTextAlignment(.center)
                    .padding(.trailing, 40)
                    .padding(.leading, 40)
                    HStack{
                        NavigationLink(destination: CameraView(classifier: ImageClassifier(), isPresenting: $isPresenting, sourceType: $sourceType)
                            .transition(.move(edge: .trailing)
                                .animation(.default))){
                                    Image(systemName: "camera")
                                        .padding(1)
                                }
                                .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                                .font(.largeTitle)
                                .padding(.leading, 100)
                                

                        let placeholder = "Type here one by one"
                        let theAnswer = TextField(placeholder + (refresh ? "" : " "), text: $userAnswer)
                            .focused($userType)
                            .textFieldStyle(.roundedBorder)
                            .font(.system(size: 30))
                            .minimumScaleFactor(0.01)
                            .padding(5)
                        if userInputNumber < 5 {
                            theAnswer.disabled(false)
                        } else if userInputNumber >= 5 {
                            theAnswer.disabled(true)
                        }
                        
                        Button(action: {
                            let answer = String(userAnswer)
                            userInputNumber += 1
                            
                            self.refresh.toggle()
                            userAnswer = ""
                            userType = false
                            switch userInputNumber {
                            case 1 :
                                userAnswer11 = answer
                            case 2 :
                                userAnswer12 = answer
                            case 3 :
                                userAnswer13 = answer
                            case 4 :
                                userAnswer14 = answer
                            case 5 :
                                userAnswer15 = answer
                                isHidden.toggle()
                                self.show.toggle()
                                self.customAlert.toggle()
                            default :
                                print("done")
                            }}){
                                Text("Enter")
                                    .font(.system(size: 28))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.01)
                                    
                            }
                            .tint(Color(red: 0.11, green: 0.35, blue: 0.61))
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.roundedRectangle(radius:5))
                            .disabled(self.userAnswer.isEmpty)
                            .padding(.trailing, 100)
                        
                    }
                    .padding(.bottom, 1)
                    Group{
                            Text("Your answer: ")
                            .font(Font.custom("Arial Rounded MT Bold", size: 35))
                            .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                            .font(.system(size: 35))
                            .minimumScaleFactor(0.01)
                            .padding(.bottom, 10)
//                            .padding()
                        HStack{
                            Text("\(userAnswer11)")
                                .font(Font.custom("futura", size: 30))
                                .font(.system(size: 30))
                                .minimumScaleFactor(0.01)
                            Text(" \(userAnswer12)")
                                .font(Font.custom("futura", size: 30))
                                .font(.system(size: 30))
                                .minimumScaleFactor(0.01)
                            Text(" \(userAnswer13)")
                                .font(Font.custom("futura", size: 30))
                                .font(.system(size: 30))
                                .minimumScaleFactor(0.01)
                            Text(" \(userAnswer14)")
                                .font(Font.custom("futura", size: 30))
                                .font(.system(size: 30))
                                .minimumScaleFactor(0.01)
                            Text(" \(userAnswer15)")
                                .font(Font.custom("futura", size: 30))
                                .font(.system(size: 30))
                                .minimumScaleFactor(0.01)
                        }
                        .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                        .padding(.bottom, 0)
                        Spacer()
//                        Spacer()
//                        Text("Good job!🤩")
//                            .foregroundColor(Color(red: 0.98, green: 0.85, blue: 0.61))
//                            .font(Font.custom("Bodoni 72", size: 50))
//                            .minimumScaleFactor(0.01)
//                            .opacity(isHidden ? 1 : 0)
//                            .padding(.bottom, 1)
//                     //       .padding(.top, 100)
                    }
                    .multilineTextAlignment(.center)
                    NavigationLink(destination: FourthViewSee(
                        userAnswer11: self.$userAnswer11,
                        userAnswer12: self.$userAnswer12,
                        userAnswer13: self.$userAnswer13,
                        userAnswer14: self.$userAnswer14,
                        userAnswer15: self.$userAnswer15)
                        .transition(.move(edge: .trailing)
                            .animation(.default))){
                                Text("Next  ")
                                    .font(.system(size: 35))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .minimumScaleFactor(0.01)
                            }
                            .tint(Color(red: 0.98, green: 0.85, blue: 0.61))
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.roundedRectangle(radius:5))
                            .opacity(isHidden ? 1 : 0)
                            .padding(.bottom, 10)
                            
//               Spacer()
                VStack{
                    HStack{
                        Text("Tips: You can also click the camera button to help recognize things around you!")
                            .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                            .font(Font.custom("futura", size: 20))
                            .minimumScaleFactor(0.01)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                        
                            .padding(.leading, 150)
                            .padding(.trailing, 150)
                            .padding(.bottom, 30)
    
                    }
                }
//                   Spacer()
//                    HStack{
//                        Image(systemName: "camera")
//                            .onTapGesture {
//                                isPresenting = true
//                                sourceType = .camera
//                            }
//                            .padding(1)
//                    }
//                    .font(.largeTitle)
//                    .foregroundColor(.blue)
//
//                    Rectangle()
//                        .strokeBorder()
//                        .foregroundColor(.yellow)
//                        .scaledToFit()
//                        .overlay(
//                            Group {
//                                if uiImage != nil {
//                                    Image(uiImage: uiImage!)
//                                        .resizable()
//                                        .scaledToFit()
//                                }
//                            }
//                        )
//                    VStack{
//                        Button(action: {
//                            if uiImage != nil {
//                                classifier.detect(uiImage: uiImage!)
//                            }
//                        }) {
//                            Image(systemName: "bolt.fill")
//                                .foregroundColor(.orange)
//                                .font(.title)
//                        }
//
//
//                        Group {
//                            if let imageClass = classifier.imageClass {
//                                HStack{
//                                    Text("The camera identify that this is ")
//                                        .font(.system(size: 20))
//                                        .font(.caption)
//                                    Text(imageClass)
//                                        .bold()
//                                }
//                            } else {
//                                HStack{
//                                    Text("The Camera identify that this is... ")
//                                        .font(.system(size: 20))
//                                        .font(.caption)
//                                        .padding(.bottom, 30)
//
//
//                                }
//                            }
//                        }
//                        .font(.subheadline)
//                        .padding()
//                    }
//                .sheet(isPresented: $isPresenting){
//                    ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
//                        .onDisappear{
//                            if uiImage != nil {
//                                classifier.detect(uiImage: uiImage!)
//                            }
//                        }
//
//                }
//                .padding(5)
 //               Spacer()
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ThirdViewSee()
        }
    }
    
  


}
