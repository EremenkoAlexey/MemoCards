import UIKit

final class CardView: UIView, UIGestureRecognizerDelegate {
  private let padding: CGFloat = 16
  
  private lazy var imageView: UIView = {
    let image = UIView()
    //image.contentMode = .scaleAspectFit
    //image.clipsToBounds = true
    image.backgroundColor = .blue
    //image.backgroundColor = UIColor(red: 0, green: CGFloat(100)/255, blue: 0, alpha: 1)
    
    image.layer.cornerRadius = 8
    image.translatesAutoresizingMaskIntoConstraints = false
    
    image.layer.borderColor = UIColor.red.cgColor
    image.layer.borderWidth = 2
    
    return image
  }()
  

  public override init(frame: CGRect) {
    super.init(frame: frame)
    //setupConstraints()
  }
   //@objc
    @objc func dragCard(recognaizer: UIPanGestureRecognizer){
        print("caught")

        switch recognaizer.state {
        case .began:
            print("began")
        case .changed:
            let translation = recognaizer.translation(in: self)
            
            let newX = self.imageView.center.x + translation.x+30
            let newY = self.imageView.center.y + translation.y
            
            self.imageView.center = CGPoint(x: newX, y: newY)
            recognaizer.setTranslation(CGPoint.zero, in: self)
        case .ended:
            print("ended")
            
        default:
            print("default")
            
        }
    }
    
    public func setupViews(view: UIView) {
        view.addSubview(self.imageView)
        setupConstraints(view: view)
        //let rec = UIPanGestureRecognizer(target: self.imageView, action: #selector(dragCard))
        //self.imageView.addGestureRecognizer(rec)


 }
   
  required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
  }
//view: UIView,

    
    private func setupConstraints(view: UIView) {
    NSLayoutConstraint.activate([
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
        imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
        imageView.heightAnchor.constraint(equalToConstant: 150),
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: CGFloat(50 + 1))
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

