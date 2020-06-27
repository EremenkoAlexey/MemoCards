import UIKit

class CardView: UIView, UIGestureRecognizerDelegate {
    

    override init (frame : CGRect) {
        super.init(frame : frame)
        self.backgroundColor = .blue
            // UIColor(red: 50/255, green: 50/255, blue: 50/255, alpha: 1.0)
        self.layer.cornerRadius = 8
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 2
    }

  
    @objc func dragCard(recognaizer: UIPanGestureRecognizer){

        guard recognaizer.state == .ended else {
        print("not ended")
      return
        print("ended")
        }
    guard let gestureView = recognaizer.view else {
        print("gest")
      return
    }
    // 1
    let velocity = recognaizer.velocity(in: self)
    let magnitude = sqrt((velocity.x * velocity.x) + (velocity.y * velocity.y))
    let slideMultiplier = magnitude / 200

    // 2
    let slideFactor = 0.1 * slideMultiplier
    // 3
    var finalPoint = CGPoint(
      x: gestureView.center.x, //+ (velocity.x * slideFactor),
      y: gestureView.center.y + (velocity.y * slideFactor)
    )
    // 4
    //finalPoint.x = min(max(finalPoint.x, 0), self.bounds.width)
    //finalPoint.y = min(max(finalPoint.y, 0), self.bounds.height)
    finalPoint.y = max(finalPoint.y, 0)

    // 5
    UIView.animate(
      withDuration: Double(slideFactor * 2),
      delay: 0,
      // 6
      options: .curveEaseOut,
      animations: {
        gestureView.center = finalPoint
        
    })
    }
    
    public func setupViews(view: UIView) {
        view.addSubview(self)
        setupConstraints(view: view)
        setupGestures()
    }
   
  required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
  }

    private func setupGestures(){
        print("test")
        let rec = UIPanGestureRecognizer(target: self, action: #selector(dragCard))
        self.addGestureRecognizer(rec)
        rec.delegate = self
    }

    
    private func setupConstraints(view: UIView) {

    NSLayoutConstraint.activate([
        self.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        self.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        self.heightAnchor.constraint(equalToConstant: 150),
        self.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: CGFloat(50))
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
