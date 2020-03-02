//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport



class MyViewController : UIViewController {
   
    let AboutButton = UIButton()
    let PlayGameButton = UIButton()
  


    
    override func loadView() {
       
        let view = UIView()
        view.backgroundColor = .white
       
        let Back = UIImage(named: "Memoji Home.png")
        let BackView = UIImageView(image: Back)
        
         view.addSubview(BackView)
        
        BackView.translatesAutoresizingMaskIntoConstraints = false
        
        
          BackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          BackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          BackView.heightAnchor.constraint(equalToConstant: 320).isActive = true
          BackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        
        
        
        let label = UILabel()
        label.frame = CGRect(x: 90, y: 350, width: 220, height: 30)
        label.text = "Go to Academy "
     label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .black
    
    
        view.addSubview(label)
        self.view = view
        
        setupAboutButton()
       setupPlayGameButton()
    }
 
    
    
    func setupAboutButton() {
        view.addSubview(AboutButton)
        AboutButton.setTitle("Sobre", for: .normal)
        AboutButton.setTitleColor(.white, for: .normal)
        AboutButton.backgroundColor = .black
        AboutButton.layer.cornerRadius = 12
        AboutButton.addTarget(self, action: #selector(mudatela), for: .touchUpInside)
        
        consButtomConstrains(using: AboutButton, 480)
   
       
    }
    
   func setupPlayGameButton() {
        view.addSubview(PlayGameButton)
        PlayGameButton.setTitle("Play", for: .normal)
        PlayGameButton.setTitleColor(.white, for: .normal)
        PlayGameButton.backgroundColor = .black
        PlayGameButton.layer.cornerRadius = 12
    PlayGameButton.addTarget(self, action: #selector(PlayMuda), for: .touchUpInside)
    
        consButtomConstrains(using: PlayGameButton, 410)
    
        
        
    }
    
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
           return buttom
        
       }
    
    @objc func mudatela(){

       
       PlaygroundPage.current.liveView = AboutView()

    }
    
    @objc func PlayMuda(){

        PlaygroundPage.current.liveView = PlayGame()
   
    }
    
}

class AboutView : UIViewController {
    
    let backb = UIButton()
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.6469853813, green: 1, blue: 0.2011652593, alpha: 1)

        let label = UILabel()
        let label1 = UILabel()
        label.numberOfLines = 15
        
        label.frame = CGRect(x: 35, y: 200, width: 305, height: 150)
        label.text = """
        Seu objetivo principal é levar a personagem de Peruíbe até a Apple Developer Academy. Mas cuidado com suas decisões durante o jogo, já que sua incompatibilidade com a realidade pode trazer sérias consequências.
        """
        label.textColor = .black
        label.textAlignment = .justified
        
        
        label1.numberOfLines = 15
        
        label1.frame = CGRect(x: 35, y: 50, width: 305, height: 150)
        label1.text = "Sobre"
        label1.textColor = .black
        label1.textAlignment = .justified
        label1.font = UIFont.boldSystemFont(ofSize: 70)
        
        view.addSubview(label)
        view.addSubview(label1)
        self.view = view
        backButton()
    }
    
    func backButton() {
        
        view.addSubview(backb)
        backb.setTitle("Home", for: .normal)
        backb.setTitleColor(.white, for: .normal)
        backb.backgroundColor = .black
        backb.layer.cornerRadius = 12
        backb.addTarget(self, action: #selector(PlayMuda), for: .touchUpInside)
    
        consButtomConstrains(using: backb, 410)
    
        
        
    }
    
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
           return buttom
        
       }
    
    @objc func PlayMuda(){

           PlaygroundPage.current.liveView = PlayGame()
      
       }
    
   
    
}
//****************************************************************************************






class PlayGame : UIViewController {
    
    let cardView = UIView()
    let titleLabel1 = UILabel()
    let titleLabel2 = UILabel()
    let Button1 = UIButton()
    let Button2 = UIButton()
    
    var cardViewTopConstraint: NSLayoutConstraint!
    var ButTopConstraint: NSLayoutConstraint!
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2560269194, green: 0.6458863196, blue: 1, alpha: 1)
        self.view = view
       setupCardView()
        setupButton1()
        setupButton2()
    }
    
    func setupCardView(){
        
        view.addSubview(cardView)
        cardView.backgroundColor = .white
        cardView.layer.cornerRadius = 20
        
        setupCardViewConstrains()
        setuptitleLabel1()
       
    }
    
    func setupButton1() {
        
        view.addSubview(Button1)
        Button1.setTitle("1", for: .normal)
        Button1.setTitleColor(.white, for: .normal)
        Button1.backgroundColor = .black
        Button1.layer.cornerRadius = 12
        Button1.addTarget(self, action: #selector(PerdF), for: .touchUpInside)
        
        consButtomConstrains(using: Button1, 350)
        
    }
    
     func setupButton2() {
           
           view.addSubview(Button2)
           Button2.setTitle("2", for: .normal)
           Button2.setTitleColor(.white, for: .normal)
           Button2.backgroundColor = .black
           Button2.layer.cornerRadius = 12
           Button2.addTarget(self, action: #selector(Win), for: .touchUpInside)

           consButtomConstrains(using: Button2, 410)
        
       }
    
   func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
       
        let buttom = but
        let topper = top
        
        buttom.translatesAutoresizingMaskIntoConstraints = false
        buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
    
     return buttom
     
    }
    
    @objc func PerdF(){
       
           PlaygroundPage.current.liveView = Perd()
 
       }
    
    @objc func Win(){
          
            PlaygroundPage.current.liveView = Win1()
    
        }
    
    func setuptitleLabel1(){
        
        cardView.addSubview(titleLabel1)
        titleLabel1.text = """
        Beatriz Sato nasceu em Peruibe com muita praia, sol e ondas. Lá, ela sempre preferia:
        
        1 - Passar o dia na Praia e pegar um bronzeado!
        
        2 - Andar de skate na orla da praia!
        """
        titleLabel1.numberOfLines = 10
        titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
        titleLabel1.textColor = .black
        titleLabel1.textAlignment = .justified
        
        setTitleConstrains(lab: titleLabel1, alt: 25)
        
    }
    
    
    func setupCardViewConstrains(){
        
         cardView.translatesAutoresizingMaskIntoConstraints = false
         cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
         cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
         cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
         cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
         cardViewTopConstraint.isActive = true
        
        animateCard()
    }
   
    func setTitleConstrains(lab label: UILabel, alt top: Float){
           
        let Label1 = label
        let topA = top
                  Label1.translatesAutoresizingMaskIntoConstraints = false
              Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
              Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
            //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
              Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
        
       }
    
    @objc func animateCard() {
         cardViewTopConstraint.constant = -330
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
         }, completion: nil)
     }
}
class Perd : UIViewController {
    
    
        let cardView = UIView()
        let titleLabel1 = UILabel()
        let Button1 = UIButton()
        let Button2 = UIButton()
     
        
         
         var cardViewTopConstraint: NSLayoutConstraint!
         
         override func loadView() {
             let view = UIView()
             view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
             self.view = view
            setupCardView()
            setuptitleLabel1()
           
         }
         
         func setupCardView(){
             
             view.addSubview(cardView)
             cardView.backgroundColor = .white
             cardView.layer.cornerRadius = 20
             setupButton1()
             setupButton2()
             setupCardViewConstrains()
            
            
         }
    
    func setupButton1() {
         
         view.addSubview(Button1)
         Button1.setTitle("Voltar", for: .normal)
         Button1.setTitleColor(.white, for: .normal)
         Button1.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
         Button1.layer.cornerRadius = 15
         Button1.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
         
         consButtomConstrains(using: Button1, 107)
         
     }
    
    func setupButton2() {
            
            view.addSubview(Button2)
            Button2.setTitle("Menu", for: .normal)
            Button2.setTitleColor(.white, for: .normal)
            Button2.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
            Button2.layer.cornerRadius = 15
            Button2.addTarget(self, action: #selector(ReturnMenu), for: .touchUpInside)
            
            consButtomConstrains(using: Button2, 480)
            
        }
    
      func setuptitleLabel1(){
          
          cardView.addSubview(titleLabel1)
          titleLabel1.text = """
          Ops, por Beatriz passar muito tempo no sol se bronzeando ela acabou pegando câncer de pele e falecendo.
          """
          titleLabel1.numberOfLines = 10
          titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
          titleLabel1.textColor = .black
          titleLabel1.textAlignment = .justified
          
          setTitleConstrains(lab: titleLabel1, alt: 25)
          
      }
    func setTitleConstrains(lab label: UILabel, alt top: Float){
                
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
           let buttom = but
           let topper = top
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
    
    func setupCardViewConstrains(){
         
          cardView.translatesAutoresizingMaskIntoConstraints = false
          cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
          cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
          cardViewTopConstraint.isActive = true
         
         animateCard()
     }
    @objc func animateCard() {
           cardViewTopConstraint.constant = -200
          UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
              self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    @objc func Mudatela(){

           PlaygroundPage.current.liveView = PlayGame()
      
       }
    @objc func ReturnMenu(){

         PlaygroundPage.current.liveView = MyViewController()
    
     }
   
}
//****************************************************************************************
class Win1 : UIViewController {
    
     let cardView = UIView()
       let titleLabel1 = UILabel()
       let titleLabel2 = UILabel()
       let Button1 = UIButton()
       let Button2 = UIButton()
       
       var cardViewTopConstraint: NSLayoutConstraint!
       var ButTopConstraint: NSLayoutConstraint!
       
       override func loadView() {
           let view = UIView()
           view.backgroundColor = #colorLiteral(red: 0.2560269194, green: 0.6458863196, blue: 1, alpha: 1)
           self.view = view
          setupCardView()
           setupButton1()
           setupButton2()
       }
       
       func setupCardView(){
           
           view.addSubview(cardView)
           cardView.backgroundColor = .white
           cardView.layer.cornerRadius = 20
           
           setupCardViewConstrains()
           setuptitleLabel1()
          
       }
       
       func setupButton1() {
           
           view.addSubview(Button1)
           Button1.setTitle("1", for: .normal)
           Button1.setTitleColor(.white, for: .normal)
           Button1.backgroundColor = .black
           Button1.layer.cornerRadius = 12
           Button1.addTarget(self, action: #selector(Win), for: .touchUpInside)
           
           consButtomConstrains(using: Button1, 350)
           
       }
       
        func setupButton2() {
              
              view.addSubview(Button2)
              Button2.setTitle("2", for: .normal)
              Button2.setTitleColor(.white, for: .normal)
              Button2.backgroundColor = .black
              Button2.layer.cornerRadius = 12
              Button2.addTarget(self, action: #selector(Perd), for: .touchUpInside)

           
              consButtomConstrains(using: Button2, 410)
           
              
          }
       
      func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
       
       @objc func Perd(){
          
              PlaygroundPage.current.liveView = Perd1()
    
          }
       
       @objc func Win(){
             
               PlaygroundPage.current.liveView = Win2()
       
           }
       
       func setuptitleLabel1(){
           
           cardView.addSubview(titleLabel1)
           titleLabel1.text = """
           Durante sua adolescência ela sempre preferia:
           
           1 - Praticar esportes como o  surf.
           
           2 - Costurar roupas!
           """
           titleLabel1.numberOfLines = 10
           titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
           titleLabel1.textColor = .black
           titleLabel1.textAlignment = .justified
           
           setTitleConstrains(lab: titleLabel1, alt: 25)
           
       }
       
       
       func setupCardViewConstrains(){
           
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
            cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
            cardViewTopConstraint.isActive = true
           
           animateCard()
       }
      
       func setTitleConstrains(lab label: UILabel, alt top: Float){
              
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
       @objc func animateCard() {
            cardViewTopConstraint.constant = -330
           UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
               self.view.layoutIfNeeded()
            }, completion: nil)
        }
    
   
}

class Perd1 : UIViewController {
    
    
        let cardView = UIView()
        let titleLabel1 = UILabel()
        let Button1 = UIButton()
        let Button2 = UIButton()
     
        
         
         var cardViewTopConstraint: NSLayoutConstraint!
         
         override func loadView() {
             let view = UIView()
             view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
             self.view = view
            setupCardView()
            setuptitleLabel1()
           
         }
         
         func setupCardView(){
             
             view.addSubview(cardView)
             cardView.backgroundColor = .white
             cardView.layer.cornerRadius = 20
             setupButton1()
             setupButton2()
             setupCardViewConstrains()
            
            
         }
    
    func setupButton1() {
         
         view.addSubview(Button1)
         Button1.setTitle("Voltar", for: .normal)
         Button1.setTitleColor(.white, for: .normal)
         Button1.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
         Button1.layer.cornerRadius = 15
         Button1.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
         
         consButtomConstrains(using: Button1, 107)
         
     }
    
    func setupButton2() {
            
            view.addSubview(Button2)
            Button2.setTitle("Menu", for: .normal)
            Button2.setTitleColor(.white, for: .normal)
            Button2.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
            Button2.layer.cornerRadius = 15
            Button2.addTarget(self, action: #selector(ReturnMenu), for: .touchUpInside)
            
            consButtomConstrains(using: Button2, 480)
            
        }
    
      func setuptitleLabel1(){
          
          cardView.addSubview(titleLabel1)
          titleLabel1.text = """
            Por não saber costurar roupas, Bia acabou costurando seu próprio dedo, e com isso pegou uma grave infecção e morreu!

          """
          titleLabel1.numberOfLines = 10
          titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
          titleLabel1.textColor = .black
          titleLabel1.textAlignment = .justified
          
          setTitleConstrains(lab: titleLabel1, alt: 25)
          
      }
    func setTitleConstrains(lab label: UILabel, alt top: Float){
                
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
           let buttom = but
           let topper = top
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
    
    func setupCardViewConstrains(){
         
          cardView.translatesAutoresizingMaskIntoConstraints = false
          cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
          cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
          cardViewTopConstraint.isActive = true
         
         animateCard()
     }
    @objc func animateCard() {
           cardViewTopConstraint.constant = -200
          UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
              self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    @objc func Mudatela(){

           PlaygroundPage.current.liveView = Win1()
      
       }
    @objc func ReturnMenu(){

         PlaygroundPage.current.liveView = MyViewController()
    
     }
   
}

//****************************************************************************************
class Win2 : UIViewController {
    
     let cardView = UIView()
       let titleLabel1 = UILabel()
       let titleLabel2 = UILabel()
       let Button1 = UIButton()
       let Button2 = UIButton()
       
       var cardViewTopConstraint: NSLayoutConstraint!
       var ButTopConstraint: NSLayoutConstraint!
       
       override func loadView() {
           let view = UIView()
           view.backgroundColor = #colorLiteral(red: 0.2560269194, green: 0.6458863196, blue: 1, alpha: 1)
           self.view = view
          setupCardView()
           setupButton1()
           setupButton2()
       }
       
       func setupCardView(){
           
           view.addSubview(cardView)
           cardView.backgroundColor = .white
           cardView.layer.cornerRadius = 20
           
           setupCardViewConstrains()
           setuptitleLabel1()
          
       }
       
       func setupButton1() {
           
           view.addSubview(Button1)
           Button1.setTitle("1", for: .normal)
           Button1.setTitleColor(.white, for: .normal)
           Button1.backgroundColor = .black
           Button1.layer.cornerRadius = 12
           Button1.addTarget(self, action: #selector(Win), for: .touchUpInside)
           
           consButtomConstrains(using: Button1, 350)
           
       }
       
        func setupButton2() {
              
              view.addSubview(Button2)
              Button2.setTitle("2", for: .normal)
              Button2.setTitleColor(.white, for: .normal)
              Button2.backgroundColor = .black
              Button2.layer.cornerRadius = 12
              Button2.addTarget(self, action: #selector(Perd), for: .touchUpInside)

           
              consButtomConstrains(using: Button2, 410)
           
              
          }
       
      func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
       
       @objc func Perd(){
          
              PlaygroundPage.current.liveView = Perd2()
    
          }
       
       @objc func Win(){
             
               PlaygroundPage.current.liveView = Win3()
       
           }
       
       func setuptitleLabel1(){
           
           cardView.addSubview(titleLabel1)
           titleLabel1.text = """
           Aos 17 anos, Beatriz sai de casa e se muda para outra cidade em busca de mais oportunidades, para qual cidade ela vai:

           1 - São Paulo
           
           2 - Rio de Janeiro
           """
           titleLabel1.numberOfLines = 10
           titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
           titleLabel1.textColor = .black
           titleLabel1.textAlignment = .justified
           
           setTitleConstrains(lab: titleLabel1, alt: 25)
           
       }
       
       
       func setupCardViewConstrains(){
           
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
            cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
            cardViewTopConstraint.isActive = true
           
           animateCard()
       }
      
       func setTitleConstrains(lab label: UILabel, alt top: Float){
              
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
          }
       
       @objc func animateCard() {
            cardViewTopConstraint.constant = -330
           UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
               self.view.layoutIfNeeded()
            }, completion: nil)
        }
    
   
}
class Perd2 : UIViewController {
    
    
        let cardView = UIView()
        let titleLabel1 = UILabel()
        let Button1 = UIButton()
        let Button2 = UIButton()
     
        
         
         var cardViewTopConstraint: NSLayoutConstraint!
         
         override func loadView() {
             let view = UIView()
             view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
             self.view = view
            setupCardView()
            setuptitleLabel1()
           
         }
         
         func setupCardView(){
             
             view.addSubview(cardView)
             cardView.backgroundColor = .white
             cardView.layer.cornerRadius = 20
             setupButton1()
             setupButton2()
             setupCardViewConstrains()
            
            
         }
    
    func setupButton1() {
         
         view.addSubview(Button1)
         Button1.setTitle("Voltar", for: .normal)
         Button1.setTitleColor(.white, for: .normal)
         Button1.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
         Button1.layer.cornerRadius = 15
         Button1.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
         
         consButtomConstrains(using: Button1, 107)
         
     }
    
    func setupButton2() {
            
            view.addSubview(Button2)
            Button2.setTitle("Menu", for: .normal)
            Button2.setTitleColor(.white, for: .normal)
            Button2.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
            Button2.layer.cornerRadius = 15
            Button2.addTarget(self, action: #selector(ReturnMenu), for: .touchUpInside)
            
            consButtomConstrains(using: Button2, 480)
            
        }
    
      func setuptitleLabel1(){
          
          cardView.addSubview(titleLabel1)
          titleLabel1.text = """
          Ao se mudar para uma comunidade controlada pelo tráfico no Rio de Janeiro, ela acaba sendo vítima de uma ação policial, e por uma bala perdida ela acaba morrendo.

          """
          titleLabel1.numberOfLines = 10
          titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
          titleLabel1.textColor = .black
          titleLabel1.textAlignment = .justified
          
          setTitleConstrains(lab: titleLabel1, alt: 25)
          
      }
    func setTitleConstrains(lab label: UILabel, alt top: Float){
                
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
           let buttom = but
           let topper = top
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
    
    func setupCardViewConstrains(){
         
          cardView.translatesAutoresizingMaskIntoConstraints = false
          cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
          cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
          cardViewTopConstraint.isActive = true
         
         animateCard()
     }
    @objc func animateCard() {
           cardViewTopConstraint.constant = -200
          UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
              self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    @objc func Mudatela(){

           PlaygroundPage.current.liveView = Win2()
      
       }
    @objc func ReturnMenu(){

         PlaygroundPage.current.liveView = MyViewController()
    
     }
   
}







//****************************************************************************************







class Win3 : UIViewController {
    
     let cardView = UIView()
       let titleLabel1 = UILabel()
       let titleLabel2 = UILabel()
       let Button1 = UIButton()
       let Button2 = UIButton()
       
       var cardViewTopConstraint: NSLayoutConstraint!
       var ButTopConstraint: NSLayoutConstraint!
       
       override func loadView() {
           let view = UIView()
           view.backgroundColor = #colorLiteral(red: 0.2560269194, green: 0.6458863196, blue: 1, alpha: 1)
           self.view = view
          setupCardView()
           setupButton1()
           setupButton2()
       }
       
       func setupCardView(){
           
           view.addSubview(cardView)
           cardView.backgroundColor = .white
           cardView.layer.cornerRadius = 20
           
           setupCardViewConstrains()
           setuptitleLabel1()
          
       }
       
       func setupButton1() {
           
           view.addSubview(Button1)
           Button1.setTitle("1", for: .normal)
           Button1.setTitleColor(.white, for: .normal)
           Button1.backgroundColor = .black
           Button1.layer.cornerRadius = 12
           Button1.addTarget(self, action: #selector(Perd), for: .touchUpInside)
           
           consButtomConstrains(using: Button1, 350)
           
       }
       
        func setupButton2() {
              
              view.addSubview(Button2)
              Button2.setTitle("2", for: .normal)
              Button2.setTitleColor(.white, for: .normal)
              Button2.backgroundColor = .black
              Button2.layer.cornerRadius = 12
              Button2.addTarget(self, action: #selector(Win), for: .touchUpInside)

           
              consButtomConstrains(using: Button2, 410)
           
              
          }
       
      func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
       
       @objc func Perd(){
          
              PlaygroundPage.current.liveView = Perd3()
    
          }
       
       @objc func Win(){
             
            PlaygroundPage.current.liveView = Win4()
       
           }
       
       func setuptitleLabel1(){
           
           cardView.addSubview(titleLabel1)
           titleLabel1.text = """
           Ao chegar em São Paulo, qual curso na USP ela começa a fazer:

           1 - Direito
           
           2 - Educação Física
           """
           titleLabel1.numberOfLines = 10
           titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
           titleLabel1.textColor = .black
           titleLabel1.textAlignment = .justified
           
           setTitleConstrains(lab: titleLabel1, alt: 25)
           
       }
       
       
       func setupCardViewConstrains(){
           
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
            cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
            cardViewTopConstraint.isActive = true
           
           animateCard()
       }
      
       func setTitleConstrains(lab label: UILabel, alt top: Float){
              
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
          }
       
       @objc func animateCard() {
            cardViewTopConstraint.constant = -330
           UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
               self.view.layoutIfNeeded()
            }, completion: nil)
        }
    
   
}
class Perd3 : UIViewController {
    
    
        let cardView = UIView()
        let titleLabel1 = UILabel()
        let Button1 = UIButton()
        let Button2 = UIButton()
     
        
         
         var cardViewTopConstraint: NSLayoutConstraint!
         
         override func loadView() {
             let view = UIView()
             view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
             self.view = view
            setupCardView()
            setuptitleLabel1()
           
         }
         
         func setupCardView(){
             
             view.addSubview(cardView)
             cardView.backgroundColor = .white
             cardView.layer.cornerRadius = 20
             setupButton1()
             setupButton2()
             setupCardViewConstrains()
            
            
         }
    
    func setupButton1() {
         
         view.addSubview(Button1)
         Button1.setTitle("Voltar", for: .normal)
         Button1.setTitleColor(.white, for: .normal)
         Button1.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
         Button1.layer.cornerRadius = 15
         Button1.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
         
         consButtomConstrains(using: Button1, 107)
         
     }
    
    func setupButton2() {
            
            view.addSubview(Button2)
            Button2.setTitle("Menu", for: .normal)
            Button2.setTitleColor(.white, for: .normal)
            Button2.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
            Button2.layer.cornerRadius = 15
            Button2.addTarget(self, action: #selector(ReturnMenu), for: .touchUpInside)
            
            consButtomConstrains(using: Button2, 480)
            
        }
    
      func setuptitleLabel1(){
          
          cardView.addSubview(titleLabel1)
          titleLabel1.text = """
          Por nunca gostar de estudar direito, ela acaba se tornando uma advogada frustrada, e durante um julgamento ela se irrita e bate na juíza e é presa por desacato.
          """
          titleLabel1.numberOfLines = 10
          titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
          titleLabel1.textColor = .black
          titleLabel1.textAlignment = .justified
          
          setTitleConstrains(lab: titleLabel1, alt: 25)
          
      }
    func setTitleConstrains(lab label: UILabel, alt top: Float){
                
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
           let buttom = but
           let topper = top
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
    
    func setupCardViewConstrains(){
         
          cardView.translatesAutoresizingMaskIntoConstraints = false
          cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
          cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
          cardViewTopConstraint.isActive = true
         
         animateCard()
     }
    @objc func animateCard() {
           cardViewTopConstraint.constant = -200
          UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
              self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    @objc func Mudatela(){

           PlaygroundPage.current.liveView = Win3()
      
       }
    @objc func ReturnMenu(){

         PlaygroundPage.current.liveView = MyViewController()
    
     }
   
}








//****************************************************************************************







class Win4 : UIViewController {
    
     let cardView = UIView()
       let titleLabel1 = UILabel()
       let titleLabel2 = UILabel()
       let Button1 = UIButton()
       let Button2 = UIButton()
       
       var cardViewTopConstraint: NSLayoutConstraint!
       var ButTopConstraint: NSLayoutConstraint!
       
       override func loadView() {
           let view = UIView()
           view.backgroundColor = #colorLiteral(red: 0.2560269194, green: 0.6458863196, blue: 1, alpha: 1)
           self.view = view
          setupCardView()
           setupButton1()
           setupButton2()
       }
       
       func setupCardView(){
           
           view.addSubview(cardView)
           cardView.backgroundColor = .white
           cardView.layer.cornerRadius = 20
           
           setupCardViewConstrains()
           setuptitleLabel1()
          
       }
       
       func setupButton1() {
           
           view.addSubview(Button1)
           Button1.setTitle("1", for: .normal)
           Button1.setTitleColor(.white, for: .normal)
           Button1.backgroundColor = .black
           Button1.layer.cornerRadius = 12
           Button1.addTarget(self, action: #selector(Perd), for: .touchUpInside)
           
           consButtomConstrains(using: Button1, 350)
           
       }
       
        func setupButton2() {
              
              view.addSubview(Button2)
              Button2.setTitle("2", for: .normal)
              Button2.setTitleColor(.white, for: .normal)
              Button2.backgroundColor = .black
              Button2.layer.cornerRadius = 12
              Button2.addTarget(self, action: #selector(Win), for: .touchUpInside)

           
              consButtomConstrains(using: Button2, 410)
           
              
          }
       
      func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
       
       @objc func Perd(){
          
              PlaygroundPage.current.liveView = Perd4()
    
          }
       
       @objc func Win(){
             
               PlaygroundPage.current.liveView = Win5()
       
           }
       
       func setuptitleLabel1(){
           
           cardView.addSubview(titleLabel1)
           titleLabel1.text = """
           Ao longo de todo o curso de educação física, o que ela mais fez:

           1 - Estudar e se dedicar de forma integral ao curso.
           
           2 - Ir para festas, participar de campeonatos e se divertir!
           """
           titleLabel1.numberOfLines = 10
           titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
           titleLabel1.textColor = .black
           titleLabel1.textAlignment = .justified
           
           setTitleConstrains(lab: titleLabel1, alt: 25)
           
       }
       
       
       func setupCardViewConstrains(){
           
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
            cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
            cardViewTopConstraint.isActive = true
           
           animateCard()
       }
      
       func setTitleConstrains(lab label: UILabel, alt top: Float){
              
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
          }
       
       @objc func animateCard() {
            cardViewTopConstraint.constant = -330
           UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
               self.view.layoutIfNeeded()
            }, completion: nil)
        }
    
   
}
class Perd4 : UIViewController {
    
    
        let cardView = UIView()
        let titleLabel1 = UILabel()
        let Button1 = UIButton()
        let Button2 = UIButton()
     
        
         
         var cardViewTopConstraint: NSLayoutConstraint!
         
         override func loadView() {
             let view = UIView()
             view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
             self.view = view
            setupCardView()
            setuptitleLabel1()
           
         }
         
         func setupCardView(){
             
             view.addSubview(cardView)
             cardView.backgroundColor = .white
             cardView.layer.cornerRadius = 20
             setupButton1()
             setupButton2()
             setupCardViewConstrains()
            
            
         }
    
    func setupButton1() {
         
         view.addSubview(Button1)
         Button1.setTitle("Voltar", for: .normal)
         Button1.setTitleColor(.white, for: .normal)
         Button1.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
         Button1.layer.cornerRadius = 15
         Button1.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
         
         consButtomConstrains(using: Button1, 107)
         
     }
    
    func setupButton2() {
            
            view.addSubview(Button2)
            Button2.setTitle("Menu", for: .normal)
            Button2.setTitleColor(.white, for: .normal)
            Button2.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
            Button2.layer.cornerRadius = 15
            Button2.addTarget(self, action: #selector(ReturnMenu), for: .touchUpInside)
            
            consButtomConstrains(using: Button2, 480)
            
        }
    
      func setuptitleLabel1(){
          
          cardView.addSubview(titleLabel1)
          titleLabel1.text = """
          Por não se identificar com o curso de educação física, ela sempre sentia que seu esforço estava sendo desperdiçado, por isso ela acabou trancando o curso e voltando para Peruíbe.
          """
          titleLabel1.numberOfLines = 10
          titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
          titleLabel1.textColor = .black
          titleLabel1.textAlignment = .justified
          
          setTitleConstrains(lab: titleLabel1, alt: 25)
          
      }
    func setTitleConstrains(lab label: UILabel, alt top: Float){
                
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
           let buttom = but
           let topper = top
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
    
    func setupCardViewConstrains(){
         
          cardView.translatesAutoresizingMaskIntoConstraints = false
          cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
          cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
          cardViewTopConstraint.isActive = true
         
         animateCard()
     }
    @objc func animateCard() {
           cardViewTopConstraint.constant = -200
          UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
              self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    @objc func Mudatela(){

           PlaygroundPage.current.liveView = Win4()
      
       }
    @objc func ReturnMenu(){

         PlaygroundPage.current.liveView = MyViewController()
    
     }
   
}








//****************************************************************************************








class Win5 : UIViewController {
    
     let cardView = UIView()
       let titleLabel1 = UILabel()
       let titleLabel2 = UILabel()
       let Button1 = UIButton()
       let Button2 = UIButton()
       
       var cardViewTopConstraint: NSLayoutConstraint!
       var ButTopConstraint: NSLayoutConstraint!
       
       override func loadView() {
           let view = UIView()
           view.backgroundColor = #colorLiteral(red: 0.2560269194, green: 0.6458863196, blue: 1, alpha: 1)
           self.view = view
          setupCardView()
           setupButton1()
           setupButton2()
       }
       
       func setupCardView(){
           
           view.addSubview(cardView)
           cardView.backgroundColor = .white
           cardView.layer.cornerRadius = 20
           
           setupCardViewConstrains()
           setuptitleLabel1()
          
       }
       
       func setupButton1() {
           
           view.addSubview(Button1)
           Button1.setTitle("1", for: .normal)
           Button1.setTitleColor(.white, for: .normal)
           Button1.backgroundColor = .black
           Button1.layer.cornerRadius = 12
           Button1.addTarget(self, action: #selector(Win), for: .touchUpInside)
           
           consButtomConstrains(using: Button1, 350)
           
       }
       
        func setupButton2() {
              
              view.addSubview(Button2)
              Button2.setTitle("2", for: .normal)
              Button2.setTitleColor(.white, for: .normal)
              Button2.backgroundColor = .black
              Button2.layer.cornerRadius = 12
              Button2.addTarget(self, action: #selector(Perd), for: .touchUpInside)

           
              consButtomConstrains(using: Button2, 410)
           
              
          }
       
      func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
       
       @objc func Perd(){
          
              PlaygroundPage.current.liveView = Perd5()
    
          }
       
       @objc func Win(){
             
               PlaygroundPage.current.liveView = Win6()
       
           }
       
       func setuptitleLabel1(){
           
           cardView.addSubview(titleLabel1)
           titleLabel1.text = """
           Ela se divertiu e teve uma experiencia universitária completa. Porém… Ainda não se identifica com o curso, mas tudo isso muda quando:

           1 - Ela faz uma viajem ao Japão.
           
           2 - É atropelada!
           """
           titleLabel1.numberOfLines = 10
           titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
           titleLabel1.textColor = .black
           titleLabel1.textAlignment = .justified
           
           setTitleConstrains(lab: titleLabel1, alt: 25)
           
       }
       
       
       func setupCardViewConstrains(){
           
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
            cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
            cardViewTopConstraint.isActive = true
           
           animateCard()
       }
      
       func setTitleConstrains(lab label: UILabel, alt top: Float){
              
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
          }
       
       @objc func animateCard() {
            cardViewTopConstraint.constant = -330
           UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
               self.view.layoutIfNeeded()
            }, completion: nil)
        }
    
   
}
class Perd5 : UIViewController {
    
    
        let cardView = UIView()
        let titleLabel1 = UILabel()
        let Button1 = UIButton()
        let Button2 = UIButton()
     
        
         
         var cardViewTopConstraint: NSLayoutConstraint!
         
         override func loadView() {
             let view = UIView()
             view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
             self.view = view
            setupCardView()
            setuptitleLabel1()
           
         }
         
         func setupCardView(){
             
             view.addSubview(cardView)
             cardView.backgroundColor = .white
             cardView.layer.cornerRadius = 20
             setupButton1()
             setupButton2()
             setupCardViewConstrains()
            
            
         }
    
    func setupButton1() {
         
         view.addSubview(Button1)
         Button1.setTitle("Voltar", for: .normal)
         Button1.setTitleColor(.white, for: .normal)
         Button1.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
         Button1.layer.cornerRadius = 15
         Button1.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
         
         consButtomConstrains(using: Button1, 107)
         
     }
    
    func setupButton2() {
            
            view.addSubview(Button2)
            Button2.setTitle("Menu", for: .normal)
            Button2.setTitleColor(.white, for: .normal)
            Button2.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
            Button2.layer.cornerRadius = 15
            Button2.addTarget(self, action: #selector(ReturnMenu), for: .touchUpInside)
            
            consButtomConstrains(using: Button2, 480)
            
        }
    
      func setuptitleLabel1(){
          
          cardView.addSubview(titleLabel1)
          titleLabel1.text = """
          Após ser atropelada, ela fratura as vértebras C6 e C4 da coluna vertebral e fica tetraplégica.
          """
          titleLabel1.numberOfLines = 10
          titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
          titleLabel1.textColor = .black
          titleLabel1.textAlignment = .justified
          
          setTitleConstrains(lab: titleLabel1, alt: 25)
          
      }
    func setTitleConstrains(lab label: UILabel, alt top: Float){
                
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
           let buttom = but
           let topper = top
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
    
    func setupCardViewConstrains(){
         
          cardView.translatesAutoresizingMaskIntoConstraints = false
          cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
          cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
          cardViewTopConstraint.isActive = true
         
         animateCard()
     }
    @objc func animateCard() {
           cardViewTopConstraint.constant = -200
          UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
              self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    @objc func Mudatela(){

           PlaygroundPage.current.liveView = Win5()
      
       }
    @objc func ReturnMenu(){

         PlaygroundPage.current.liveView = MyViewController()
    
     }
   
}









//****************************************************************************************








class Win6 : UIViewController {
    
     let cardView = UIView()
       let titleLabel1 = UILabel()
       let titleLabel2 = UILabel()
       let Button1 = UIButton()
       let Button2 = UIButton()
       
       var cardViewTopConstraint: NSLayoutConstraint!
       var ButTopConstraint: NSLayoutConstraint!
       
       override func loadView() {
           let view = UIView()
           view.backgroundColor = #colorLiteral(red: 0.2560269194, green: 0.6458863196, blue: 1, alpha: 1)
           self.view = view
          setupCardView()
           setupButton1()
           setupButton2()
       }
       
       func setupCardView(){
           
           view.addSubview(cardView)
           cardView.backgroundColor = .white
           cardView.layer.cornerRadius = 20
           
           setupCardViewConstrains()
           setuptitleLabel1()
          
       }
       
       func setupButton1() {
           
           view.addSubview(Button1)
           Button1.setTitle("1", for: .normal)
           Button1.setTitleColor(.white, for: .normal)
           Button1.backgroundColor = .black
           Button1.layer.cornerRadius = 12
           Button1.addTarget(self, action: #selector(Win), for: .touchUpInside)
           
           consButtomConstrains(using: Button1, 350)
           
       }
       
        func setupButton2() {
              
              view.addSubview(Button2)
              Button2.setTitle("2", for: .normal)
              Button2.setTitleColor(.white, for: .normal)
              Button2.backgroundColor = .black
              Button2.layer.cornerRadius = 12
              Button2.addTarget(self, action: #selector(Perd), for: .touchUpInside)

           
              consButtomConstrains(using: Button2, 410)
           
              
          }
       
      func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
       
       @objc func Perd(){
          
              PlaygroundPage.current.liveView = Perd6()
    
          }
       
       @objc func Win(){
             
               PlaygroundPage.current.liveView = Win7()
       
           }
       
       func setuptitleLabel1(){
           
           cardView.addSubview(titleLabel1)
           titleLabel1.text = """
           Após sua viagem para o Japão, ela volta para o Brasil decidida a mudar de curso, qual curso ela decide fazer:

           1 - Análise e desenvolvimento de sistemas.
           
           2 - Medicina.

           """
           titleLabel1.numberOfLines = 10
           titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
           titleLabel1.textColor = .black
           titleLabel1.textAlignment = .justified
           
           setTitleConstrains(lab: titleLabel1, alt: 25)
           
       }
       
       
       func setupCardViewConstrains(){
           
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
            cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
            cardViewTopConstraint.isActive = true
           
           animateCard()
       }
      
       func setTitleConstrains(lab label: UILabel, alt top: Float){
              
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
          }
       
       @objc func animateCard() {
            cardViewTopConstraint.constant = -330
           UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
               self.view.layoutIfNeeded()
            }, completion: nil)
        }
    
   
}
class Perd6 : UIViewController {
    
    
        let cardView = UIView()
        let titleLabel1 = UILabel()
        let Button1 = UIButton()
        let Button2 = UIButton()
     
        
         
         var cardViewTopConstraint: NSLayoutConstraint!
         
         override func loadView() {
             let view = UIView()
             view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
             self.view = view
            setupCardView()
            setuptitleLabel1()
           
         }
         
         func setupCardView(){
             
             view.addSubview(cardView)
             cardView.backgroundColor = .white
             cardView.layer.cornerRadius = 20
             setupButton1()
             setupButton2()
             setupCardViewConstrains()
            
            
         }
    
    func setupButton1() {
         
         view.addSubview(Button1)
         Button1.setTitle("Voltar", for: .normal)
         Button1.setTitleColor(.white, for: .normal)
         Button1.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
         Button1.layer.cornerRadius = 15
         Button1.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
         
         consButtomConstrains(using: Button1, 107)
         
     }
    
    func setupButton2() {
            
            view.addSubview(Button2)
            Button2.setTitle("Menu", for: .normal)
            Button2.setTitleColor(.white, for: .normal)
            Button2.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
            Button2.layer.cornerRadius = 15
            Button2.addTarget(self, action: #selector(ReturnMenu), for: .touchUpInside)
            
            consButtomConstrains(using: Button2, 480)
            
        }
    
      func setuptitleLabel1(){
          
          cardView.addSubview(titleLabel1)
          titleLabel1.text = """
          Após fazer 1 semestre de medicina, Beatriz tem um surto psicótico e acaba sendo internada no hospital psiquiátrico Irmãs da Serena Misericórdia!
          """
          titleLabel1.numberOfLines = 10
          titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
          titleLabel1.textColor = .black
          titleLabel1.textAlignment = .justified
          
          setTitleConstrains(lab: titleLabel1, alt: 25)
          
      }
    func setTitleConstrains(lab label: UILabel, alt top: Float){
                
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
           let buttom = but
           let topper = top
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
    
    func setupCardViewConstrains(){
         
          cardView.translatesAutoresizingMaskIntoConstraints = false
          cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
          cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
          cardViewTopConstraint.isActive = true
         
         animateCard()
     }
    @objc func animateCard() {
           cardViewTopConstraint.constant = -200
          UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
              self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    @objc func Mudatela(){

           PlaygroundPage.current.liveView = Win6()
      
       }
    @objc func ReturnMenu(){

         PlaygroundPage.current.liveView = MyViewController()
    
     }
   
}










//****************************************************************************************








class Win7 : UIViewController {
    
     let cardView = UIView()
       let titleLabel1 = UILabel()
       let titleLabel2 = UILabel()
       let Button1 = UIButton()
       let Button2 = UIButton()
       
       var cardViewTopConstraint: NSLayoutConstraint!
       var ButTopConstraint: NSLayoutConstraint!
       
       override func loadView() {
           let view = UIView()
           view.backgroundColor = #colorLiteral(red: 0.2560269194, green: 0.6458863196, blue: 1, alpha: 1)
           self.view = view
          setupCardView()
           setupButton1()
           setupButton2()
       }
       
       func setupCardView(){
           
           view.addSubview(cardView)
           cardView.backgroundColor = .white
           cardView.layer.cornerRadius = 20
           
           setupCardViewConstrains()
           setuptitleLabel1()
          
       }
       
       func setupButton1() {
           
           view.addSubview(Button1)
           Button1.setTitle("1", for: .normal)
           Button1.setTitleColor(.white, for: .normal)
           Button1.backgroundColor = .black
           Button1.layer.cornerRadius = 12
           Button1.addTarget(self, action: #selector(Perd), for: .touchUpInside)
           
           consButtomConstrains(using: Button1, 350)
           
       }
       
        func setupButton2() {
              
              view.addSubview(Button2)
              Button2.setTitle("2", for: .normal)
              Button2.setTitleColor(.white, for: .normal)
              Button2.backgroundColor = .black
              Button2.layer.cornerRadius = 12
              Button2.addTarget(self, action: #selector(Win), for: .touchUpInside)

           
              consButtomConstrains(using: Button2, 410)
           
              
          }
       
      func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
            let buttom = but
        let topper = top
       
       
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
       
       @objc func Perd(){
          
              PlaygroundPage.current.liveView = Perd7()
    
          }
       
       @objc func Win(){
             
               PlaygroundPage.current.liveView = Final()
       
           }
       
       func setuptitleLabel1(){
           
           cardView.addSubview(titleLabel1)
           titleLabel1.text = """
           Uhn certo dia, Beatriz estava surfando pela WEB como uma adolescente comum e normal, até que de repente ela recebe um e-mail do SENAC falando sobre o processo Apple Developer Academy, após isso, o que ela:

           1 - Ignora e continua surfando pela web como qualquer adolescênte normal.

           2 - Resolve se inscrever, o que ela tem a perder? Nada

           """
           titleLabel1.numberOfLines = 15
           titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
           titleLabel1.textColor = .black
           titleLabel1.textAlignment = .justified
           
           setTitleConstrains(lab: titleLabel1, alt: 25)
           
       }
       
       
       func setupCardViewConstrains(){
           
            cardView.translatesAutoresizingMaskIntoConstraints = false
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
            cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
            cardViewTopConstraint.isActive = true
           
           animateCard()
       }
      
       func setTitleConstrains(lab label: UILabel, alt top: Float){
              
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
          }
       
       @objc func animateCard() {
            cardViewTopConstraint.constant = -330
           UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
               self.view.layoutIfNeeded()
            }, completion: nil)
        }
    
   
}
class Perd7 : UIViewController {
    
    
        let cardView = UIView()
        let titleLabel1 = UILabel()
        let Button1 = UIButton()
        let Button2 = UIButton()
     
        
         
         var cardViewTopConstraint: NSLayoutConstraint!
         
         override func loadView() {
             let view = UIView()
             view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
             self.view = view
            setupCardView()
            setuptitleLabel1()
           
         }
         
         func setupCardView(){
             
             view.addSubview(cardView)
             cardView.backgroundColor = .white
             cardView.layer.cornerRadius = 20
             setupButton1()
             setupButton2()
             setupCardViewConstrains()
            
            
         }
    
    func setupButton1() {
         
         view.addSubview(Button1)
         Button1.setTitle("Voltar", for: .normal)
         Button1.setTitleColor(.white, for: .normal)
         Button1.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
         Button1.layer.cornerRadius = 15
         Button1.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
         
         consButtomConstrains(using: Button1, 107)
         
     }
    
    func setupButton2() {
            
            view.addSubview(Button2)
            Button2.setTitle("Menu", for: .normal)
            Button2.setTitleColor(.white, for: .normal)
            Button2.backgroundColor = #colorLiteral(red: 0.3537888601, green: 0.03325939257, blue: 0, alpha: 1)
            Button2.layer.cornerRadius = 15
            Button2.addTarget(self, action: #selector(ReturnMenu), for: .touchUpInside)
            
            consButtomConstrains(using: Button2, 480)
            
        }
    
      func setuptitleLabel1(){
          
          cardView.addSubview(titleLabel1)
          titleLabel1.text = """
          Por passar muito tempo na internet como uma adolescente comum e normal, Beatriz acaba ficando presa eternamente no loop infinito da Matrix que chamamos de vida.
          """
          titleLabel1.numberOfLines = 10
          titleLabel1.font = UIFont.boldSystemFont(ofSize: 14)
          titleLabel1.textColor = .black
          titleLabel1.textAlignment = .justified
          
          setTitleConstrains(lab: titleLabel1, alt: 25)
          
      }
    func setTitleConstrains(lab label: UILabel, alt top: Float){
                
           let Label1 = label
           let topA = top
                     Label1.translatesAutoresizingMaskIntoConstraints = false
                 Label1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
                 Label1.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
               //  Label1.heightAnchor.constraint(equalToConstant: 70).isActive = true
                 Label1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: CGFloat(topA)).isActive = true
           
          }
       
    func consButtomConstrains(using but: UIButton, _ top: Float) -> UIButton {
          
           let buttom = but
           let topper = top
           
           buttom.translatesAutoresizingMaskIntoConstraints = false
           buttom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
           buttom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
           buttom.heightAnchor.constraint(equalToConstant: 50).isActive = true
           buttom.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(topper)).isActive = true
       
        return buttom
        
       }
    
    func setupCardViewConstrains(){
         
          cardView.translatesAutoresizingMaskIntoConstraints = false
          cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
          cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
          cardView.heightAnchor.constraint(equalToConstant: 300).isActive = true
          cardViewTopConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 600)
          cardViewTopConstraint.isActive = true
         
         animateCard()
     }
    @objc func animateCard() {
           cardViewTopConstraint.constant = -200
          UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .curveEaseOut, animations: {
              self.view.layoutIfNeeded()
           }, completion: nil)
       }
    
    @objc func Mudatela(){

           PlaygroundPage.current.liveView = Win7()
      
       }
    @objc func ReturnMenu(){

         PlaygroundPage.current.liveView = MyViewController()
    
     }
   
}











class Final : UIViewController {
    
        let StarButton = UIButton()
          
        override func loadView() {
           
            let view = UIView()
            view.backgroundColor = .white
           
            let Back = UIImage(named: "Final.jpg")
            let BackView = UIImageView(image: Back)
            
             view.addSubview(BackView)
            
            BackView.translatesAutoresizingMaskIntoConstraints = false
            
            
              BackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
              BackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
              BackView.heightAnchor.constraint(equalToConstant: 500).isActive = true
              BackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
            
            
            
            let label = UILabel()
            label.numberOfLines = 15
            label.frame = CGRect(x: 40, y: 400, width: 300, height: 70)
            label.text = "Parabéns, você conseguiu guiar a Sato até a Academy!"
            
            label.font = UIFont.boldSystemFont(ofSize:20)
            label.textColor = .black
            label.textAlignment = .center
        
            view.addSubview(label)
            self.view = view
          StarButtonFunc()
        
       }
       
      func StarButtonFunc() {
          
          view.addSubview(StarButton)
          StarButton.setTitle("Home", for: .normal)
          StarButton.setTitleColor(.white, for: .normal)
          StarButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
          StarButton.layer.cornerRadius = 15
          StarButton.addTarget(self, action: #selector(Mudatela), for: .touchUpInside)
            
        consButtomConstrains()
          
      }
    func consButtomConstrains() {
       
        
        StarButton.translatesAutoresizingMaskIntoConstraints = false
        StarButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        StarButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        StarButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        StarButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
     
    }
    
   @objc func Mudatela(){

            PlaygroundPage.current.liveView = MyViewController()
       
        }
}
// Present the view controller in the Live View window
let rootViewController = Final()
let navigationcontroler = UINavigationController(rootViewController: rootViewController)
PlaygroundPage.current.liveView = navigationcontroler
