//
//  ViewController.swift
//  Dry Fruits
//
//  Created by R93 on 18/01/23.
//

import UIKit
struct FoodItems{
    var name: String
    var price: Double
    var quantity: String
    var isFreshFood: Bool
}
class FoodItemViewController: UIViewController {
    
    @IBOutlet weak var FoodItemCollectionView: UICollectionView!
    var arrFooditems: [FoodItems] = []
    var arrImage: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11","12"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setup()
    }
    private func setup(){
       LoadFoodItems()
        ConfigureFoodItemCollectionView()
    }
    private func LoadFoodItems() {
        let FoodItem1: FoodItems = FoodItems(name: "happilo Almonds", price: 120,quantity: "250gm", isFreshFood: true)
        let FoodItem2: FoodItems = FoodItems(name: "happilo green resins", price: 100,quantity: "250gm", isFreshFood: true)
        let FoodItem3: FoodItems = FoodItems(name: "Farmely saver Cachews", price: 90,quantity: "250gm", isFreshFood: true)
        let FoodItem4: FoodItems = FoodItems(name: "calfonla pistachlo", price: 130,quantity: "250gm", isFreshFood: true)
        let FoodItem5: FoodItems = FoodItems(name: "Gourmia chuo mix", price: 90,quantity: "250gm", isFreshFood: true)
        let FoodItem6: FoodItems = FoodItems(name: "happilo healthy nutmix", price: 100,quantity: "250gm", isFreshFood: true)
        let FoodItem7: FoodItems = FoodItems(name: "Balaji masala waffer", price: 10,quantity: "250gm", isFreshFood: true)
        let FoodItem8: FoodItems = FoodItems(name: "balaji moli waffer", price: 10,quantity: "100gm", isFreshFood: true)
        let FoodItem9: FoodItems = FoodItems(name: "balaji cruchex", price: 10,quantity: "105gm", isFreshFood: true)
        let FoodItem10: FoodItems = FoodItems(name: "balaji sev mamra", price: 5,quantity: "50gm", isFreshFood: true)
        let FoodItem11: FoodItems = FoodItems(name: "masala masti kurkure", price: 10,quantity: "80gm", isFreshFood: true)
        let FoodItem12: FoodItems = FoodItems(name: "balaji nachos", price: 10,quantity: "30gm", isFreshFood: true)
        arrFooditems = [FoodItem1, FoodItem2, FoodItem3, FoodItem4, FoodItem5, FoodItem6, FoodItem7, FoodItem8, FoodItem9, FoodItem10, FoodItem11, FoodItem12]
    }
    private func ConfigureFoodItemCollectionView() {
        let nib : UINib = UINib(nibName: "DryFruitsCollectionViewCell", bundle: nil)
        FoodItemCollectionView.register(nib, forCellWithReuseIdentifier: "cell")
        
        
    }

}
extension FoodItemViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrFooditems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: DryFruitsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DryFruitsCollectionViewCell
        cell.NameLabel.text = "\(arrFooditems[indexPath.row].name)"
        cell.PriceLable.text = "\(arrFooditems[indexPath.row].price)"
        cell.QuentityLable.text = "\(arrFooditems[indexPath.row].quantity)"
        cell.FoodImage.image = UIImage(named: arrImage[indexPath.row])
        cell.layer.cornerRadius = 10
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 2
        cell.addToCartButton.layer.cornerRadius = 5
        cell.addToCartButton.layer.masksToBounds = true
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}
extension FoodItemViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 159, height: 211)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 10, bottom: 0, right: 25)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
