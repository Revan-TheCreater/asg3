//
//  CartTableViewCell.swift
//  ShoppingCart
//
//  Created by Darkhan Ilyas on 7/02/20.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productQuantityLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    var delegate: myDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.productQuantityLabel.text = "0"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure (currentProduct: Product) {
        self.productTitleLabel.text = currentProduct.title
        self.productPriceLabel.text = "\(currentProduct.price)"
    }
        
    @IBAction func didTapStepper(_ sender: UIStepper) {
        productQuantityLabel.text = Int(sender.value).description
        delegate?.myDelegate(value: Int(sender.value), productName: productTitleLabel.text! )
    }
}

protocol myDelegate {
    func myDelegate(value: Int, productName: String)
}
