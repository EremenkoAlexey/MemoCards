import UIKit

class CardView: UIView, UIGestureRecognizerDelegate {
    
    private var viewTopAnchor = NSLayoutYAxisAnchor()
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        self.backgroundColor = .blue
            // UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1.0)
        self.layer.cornerRadius = 8
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 2
        
    }

     @objc func openCard(recognaizer: UIPanGestureRecognizer){
        print("open card")
    }

  
//    @objc func dragCard(recognaizer: UIPanGestureRecognizer){
//
//        guard recognaizer.state == .ended else {
//      return
//        }
//    guard let gestureView = recognaizer.view else {
//      return
//    }
//    // 1
//    let velocity = recognaizer.velocity(in: self)
//    let magnitude = sqrt((velocity.x * velocity.x) + (velocity.y * velocity.y))
//    let slideMultiplier = magnitude / 200
//
//    // 2
//    let slideFactor = 0.1 * slideMultiplier
//    // 3
//    var finalPoint = CGPoint(
//      x: gestureView.center.x, //+ (velocity.x * slideFactor),
//      y: gestureView.center.y + (velocity.y * slideFactor)
//    )
//    // 4
//    //finalPoint.x = min(max(finalPoint.x, 0), self.bounds.width)
//    //finalPoint.y = min(max(finalPoint.y, 0), self.bounds.height)
//    if velocity.y > 0.0 { // токаем вниз
//        // TODO: заменить на нижнюю границу
//        finalPoint.y = min(finalPoint.y, CGFloat(500+75))
//    }
//    else{ // толкаем вверх
//        // TODO: заменить на верхнюю границу
//        finalPoint.y = max(finalPoint.y, CGFloat(50+75))
//        }
//    // 5
//    UIView.animate(
//      withDuration: Double(slideFactor * 2),
//      delay: 0,
//      // 6
//        options: .curveEaseInOut, //curveEaseOut,
//      animations: {
//        gestureView.center = finalPoint
//        
//    })
//    }
    
    public func setupViews(view: UIView, index: Int) {
        view.addSubview(self)
        setupConstraints(view: view, index: index)
        //setupGestures()
        //viewTopAnchor = view.safeAreaLayoutGuide.topAnchor
    }
   
  required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
  }

    private func setupGestures(){
        let rec = UITapGestureRecognizer(target: self, action: #selector(openCard))
        self.addGestureRecognizer(rec)
        rec.delegate = self
    }

    
    private func setupConstraints(view: UIView, index: Int) {
        
    NSLayoutConstraint.activate([
        self.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        self.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        self.heightAnchor.constraint(equalToConstant: 150),
        self.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: CGFloat(50+(index-1)*25))
    ])
        
    /*
    NSLayoutConstraint.activate([
      textLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: padding),
      textLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
      textLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
      textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding)
    ])
    
    textLabel.setContentHuggingPriority(.init(rawValue: 252), for: .vertical)
    textLabel.setContentCompressionResistancePriority(.init(rawValue: 751), for: .vertical)
    */
  }
}
