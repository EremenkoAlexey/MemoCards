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
        
        //self.contentMode = .scaleAspectFit
        //self.clipsToBounds = true
        //self.backgroundColor = .green

        
    }
    
    
    //image.backgroundColor = UIColor(red: 0, green: CGFloat(100)/255, blue: 0, alpha: 1)
    
    
    //return image
  //}()
  
    @objc func dragCard(recognaizer: UIPanGestureRecognizer){
//        print("caught")

        switch recognaizer.state {
        case .began:
            print("began")
        case .changed:
            let translation = recognaizer.translation(in: self)
            
            let newX = self.center.x + translation.x
            let newY = self.center.y + translation.y
            
            self.center = CGPoint(x: newX, y: newY)
            recognaizer.setTranslation(CGPoint.zero, in: self)
        case .ended:
            print("ended")
            
        default:
            print("default")
        }
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
        //imageView.isUserInteractionEnabled = true
        rec.delegate = self

        

    }

    
    private func setupConstraints(view: UIView) {
        //let randomInt = Int.random(in: 0..<50)

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
