import Foundation

@objc(CardFormManager)
class CardFormManager: RCTViewManager {
    override func view() -> UIView! {
        return CardFormView()
    }
    
    override class func requiresMainQueueSetup() -> Bool {
        return false
    }
    
    @objc func focus(_ reactTag: NSNumber) {
        self.bridge!.uiManager.addUIBlock { (_: RCTUIManager?, viewRegistry: [NSNumber: UIView]?) in
            let view: CardFormView = (viewRegistry![reactTag] as? CardFormView)!
            view.focus()
        }
    }
    
    @objc func blur(_ reactTag: NSNumber) {
        self.bridge!.uiManager.addUIBlock { (_: RCTUIManager?, viewRegistry: [NSNumber: UIView]?) in
            let view: CardFormView = (viewRegistry![reactTag] as? CardFormView)!
            view.blur()
        }
    }
}
