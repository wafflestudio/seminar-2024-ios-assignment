import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setUITabBarAppearance()
        
        /*
         
         􁶺 systemName "movieclapper.fill"
         􀉪 systemName "person.fill
         
         for more information: SF Symbols
         
         */
         
        // TODO: Implement
    }
    
    private func setUITabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .black.withAlphaComponent(0.75)
        self.tabBar.standardAppearance = appearance
    }
}
