//struct ColorCyclingCircle: View {
//    var amount = 0.0
//    var steps = 100
//
//    var body: some View {
//        ZStack {
//            ForEach(0..<steps) { value in
//                Circle()
//                    .inset(by: CGFloat(value))
//                .strokeBorder(LinearGradient(gradient: Gradient(colors: [
//                    self.color(for: value, brightness: 1),
//                    self.color(for: value, brightness: 0.5)
//                ]), startPoint: .top, endPoint: .bottom), lineWidth: 2)
////                    .strokeBorder(self.color(for: value, brightness: 1), lineWidth: 2)
//            }
//        }.drawingGroup()
//    }
//
//    func color(for value: Int, brightness: Double) -> Color {
//        var targetHue = Double(value) / Double(self.steps) + self.amount
//
//        if targetHue > 1 {
//            targetHue -= 1
//        }
//
//        return Color(hue: targetHue, saturation: 1, brightness: brightness)
//    }
//}
//
//struct Trapezoid: Shape {
//    var insetAmount: CGFloat
//
////    形を作る関数。特に宣言して使うわけじゃない
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//
//        path.move(to: CGPoint(x: 0, y: rect.maxY))
//        path.addLine(to: CGPoint(x: insetAmount, y: rect.minY))
//        path.addLine(to: CGPoint(x: rect.maxX - insetAmount, y: rect.minY))
//        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: 0, y: rect.maxY))
//
//        return path
//   }
////    アニメーションさせるための関数。新しいvalueが代入されるたびにinsetAmountにアニメーション効果。
//    var animatableData: CGFloat {
//        get { insetAmount }
//        set { self.insetAmount = newValue }
//    }
//}
//
//struct ContentView: View {
//    @State private var insetAmount: CGFloat = 50
//
//    var body: some View {
//        Trapezoid(insetAmount: insetAmount)
//            .frame(width: 200, height: 100)
//            .onTapGesture {
//                 withAnimation {
//                       self.insetAmount = CGFloat.random(in: 10...90)
//                   }
//            }
//    }
//}
//
//
//
////struct ContentView: View {
////    @State private var amount: CGFloat = 0.0
////
////    var body: some View {
////        VStack {
////            ZStack {
////                Circle()
////                    .fill(Color.red)
////                    .frame(width: 200 * amount)
////                    .offset(x: -50, y: -80)
////                    .blendMode(.screen)
////
////                Circle()
////                    .fill(Color.green)
////                    .frame(width: 200 * amount)
////                    .offset(x: 50, y: -80)
////                    .blendMode(.screen)
////
////                Circle()
////                    .fill(Color.blue)
////                    .frame(width: 200 * amount)
////                    .blendMode(.screen)
////            }
////            .frame(width: 300, height: 300)
////
////            Slider(value: $amount)
////                .padding()
////
////            Image("kasumi")
////            .resizable()
////            .scaledToFit()
////            .frame(width: 200, height: 200)
////            .saturation(Double(amount)) //色白黒
////            .blur(radius: (1 - amount) * 20)
////        }
////        .frame(maxWidth: .infinity, maxHeight: .infinity)
////        .background(Color.black)
////        .edgesIgnoringSafeArea(.all)
////    }
////}
//
//
//
////struct ContentView: View {
////    @State private var colorCycle = 0.0
////
////    var body: some View {
////
//////        ZStack {
////            Image("kasumi")
////                .colorMultiply(.red)
//////        ZStackを使わない.multiplyのショートカット
////
//////            Rectangle()
//////                .fill(Color.red)
//////                .blendMode(.multiply)
//////        }
////        .frame(width: 400, height: 500)
////        .clipped()
//////        VStack {
//////            ColorCyclingCircle(amount: self.colorCycle)
//////                .frame(width: 300, height: 300)
//////
//////            Slider(value: $colorCycle)
//////        }
////    }
////}



//        Capsule()
//        .strokeBorder(ImagePaint(image: Image("kasumi"), scale: 0.1), lineWidth: 20)
//        .frame(width: 300, height: 200)
//
//        Text("Hello World")
//        .frame(width: 300, height: 300)
////            .border(ImagePaint(image: Image("kasumi"), sourceRect: CGRect(x: 0 , y: 0.25, width: 1, height: 0.5), scale: 0.1), width: 30)
//        .border(ImagePaint(image: Image("kasumi"), scale: 0.2), width: 30)
////        .background(Image("kasumi"))
////        .background(Color.red)
////        .border(Color.red, width: 30)
//    }
//
//
    
//    @State private var petalOffset = -20.0
//    @State private var petalWidth = 100.0

//       var body: some View {
//           VStack {
//               Flower(petalOffset: petalOffset, petalWidth: petalWidth)
//            .fill(Color.red, style: FillStyle(eoFill: true))
////            .fill(Color.red)
////                   .stroke(Color.red, lineWidth: 1)
//
//               Text("Offset")
//               Slider(value: $petalOffset, in: -40...40)
//                   .padding([.horizontal, .bottom])
//
//               Text("Width")
//               Slider(value: $petalWidth, in: 0...100)
//                   .padding(.horizontal)
//           }
//       }
    
    
    
    
//   var body: some View {
//    Arc(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
//    .strokeBorder(Color.blue, lineWidth: 40)
    
    
//    Circle()
//    .strokeBorder(Color.blue, lineWidth: 40)
//    .stroke(Color.blue, lineWidth: 40)
    
    
//    Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockwise: true)
//    .stroke(Color.blue, lineWidth: 10)
//    .frame(width: 300, height: 300)
//
    
    
//    Triangle()
//    .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//    .frame(width: 200, height: 200)
    
//    Triangle()
//    .fill(Color.red)
//    .frame(width: 300, height: 300)
    
//        Path { path in
//            path.move(to: CGPoint(x: 200, y: 100))
//            path.addLine(to: CGPoint(x: 100, y: 300))
//            path.addLine(to: CGPoint(x: 300, y: 300))
//            path.addLine(to: CGPoint(x: 200, y: 100))
////             path.addLine(to: CGPoint(x: 100, y: 300))
//        }.stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//    }
    
//
//}
//
//struct Flower: Shape {
//    // How much to move this petal away from the center
//    var petalOffset: Double = -20
//
//    // How wide to make each petal
//    var petalWidth: Double = 100
//
//    func path(in rect: CGRect) -> Path {
//        // The path that will hold all petals
//        var path = Path()
//
//        // Count from 0 up to pi * 2, moving up pi / 8 each time
//        for number in stride(from: 0, to: CGFloat.pi * 2, by: CGFloat.pi / 8) {
//            // rotate the petal by the current value of our loop
//            let rotation = CGAffineTransform(rotationAngle: number)
//
//            // move the petal to be at the center of our view
//            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
//
//            // create a path for this petal using our properties plus a fixed Y and height
//            let originalPetal = Path(ellipseIn: CGRect(x: CGFloat(petalOffset), y: 0, width: CGFloat(petalWidth), height: rect.width / 2))
//
//            // apply our rotation/position transformation to the petal
//            let rotatedPetal = originalPetal.applying(position)
//
//            // add it to our main path
//            path.addPath(rotatedPetal)
//        }
//
//        // now send the main path back
//        return path
//    }
//}
//
//struct Triangle: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//
//        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
//        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
//
//        return path
//    }
//}
//struct Arc: InsettableShape {
////struct Arc: Shape {
//    var startAngle: Angle
//    var endAngle: Angle
//    var clockwise: Bool
//
//    var insetAmount: CGFloat = 0
//
//    func path(in rect: CGRect) -> Path {
//        let rotationAdjustment = Angle.degrees(90)
//        let modifiedStart = startAngle - rotationAdjustment
//        let modifiedEnd = endAngle - rotationAdjustment
//
//        var path = Path()
//        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
//
//        return path
//    }
//
//    func inset(by amount: CGFloat) -> some InsettableShape {
//            insetを使って、insetAmountと連携し、arcをInsettableShapeに準拠できるようにし、strokeborder的な効果を発揮
//        var arc = self
//        arc.insetAmount += amount
//        return arc
//    }
//
////    func path(in rect: CGRect) -> Path {
////        var path = Path()
////        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
////
////        return path
////    }
