//
//  CameraView.swift
//  Naufal Fauzan WWDC Submission
//
//  Created by Naufal on 22/04/22.
//

import SwiftUI

struct CameraView: View {
    @ObservedObject var classifier: ImageClassifier
    @Binding var isPresenting: Bool 
    @State var uiImage: UIImage?
    @Binding var sourceType: UIImagePickerController.SourceType
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.98, green: 0.95, blue: 0.91, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Camera Detector Mode")
                .font(Font.custom("Arial Rounded MT Bold", size: 50))
                .foregroundColor(Color(red: 0.11, green: 0.35, blue: 0.61))
                .fontWeight(.heavy)
                .font(.system(size: 50))
                .minimumScaleFactor(0.01)
                .foregroundColor(.black)
                .padding()
            Text("Instruction: Tap on the camera button, point your camera into the object you want to detect, take the photo, click the bolt to show the result, and then go back and type the result!")
                .font(Font.custom("futura", size: 20))
                .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                .minimumScaleFactor(0.01)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.trailing, 70)
                .padding(.leading, 70)
                .padding(.bottom, 20)
            HStack{
                Image(systemName: "camera")
                    .onTapGesture {
                        isPresenting = true
                        sourceType = .camera
                    }
                    .padding(1)
            }
            .font(.largeTitle)
            .foregroundColor(.blue)
            
            Rectangle()
                .strokeBorder()
                .foregroundColor(.yellow)
                .scaledToFit()
                .overlay(
                    Group {
                        if uiImage != nil {
                            Image(uiImage: uiImage!)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                )
                .padding(.trailing, 100)
                .padding(.leading, 100)
                
            VStack{
                Button(action: {
                    if uiImage != nil {
                        classifier.detect(uiImage: uiImage!)
                    }
                }) {
                    Image(systemName: "bolt.fill")
                        .foregroundColor(.orange)
                        .font(.title)
                }
                .padding(.bottom, 10)
                
                Group {
                    if let imageClass = classifier.imageClass {
                        HStack{
                            Text("The camera identify that this is ")
                                .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                                .font(.system(size: 25))
                                .font(.caption)
                                .minimumScaleFactor(0.01)
                            Text(imageClass)
                                .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                                .font(.system(size: 25))
                                .font(.caption)
                                .minimumScaleFactor(0.01)
                        }
                    } else {
                        HStack{
                            Text("The Camera identify that this is... ")
                                .foregroundColor(Color(red: 0.23, green: 0.22, blue: 0.21))
                                .font(.system(size: 25))
                                .font(.caption)
                                .padding(.bottom, 30)
                                .minimumScaleFactor(0.01)
                            
                            
                        }
                    }
                }
                .font(.subheadline)
                .padding()
            }
            .sheet(isPresented: $isPresenting){
                ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                    .onDisappear{
                        if uiImage != nil {
                            classifier.detect(uiImage: uiImage!)
                        }
                    }
                
            }
            .padding(5)
            
        }
    }
        
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView(classifier: ImageClassifier(), isPresenting: .constant(true), sourceType: .constant(.camera))
    }
}
