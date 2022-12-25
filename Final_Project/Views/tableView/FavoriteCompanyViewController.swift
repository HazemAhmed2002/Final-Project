//
//  FavoriteCompanyViewController.swift
//  Final_Project
//
//  Created by Hazem Ahmed on 25/12/2022.
//

import UIKit

class FavoriteCompanyViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FavoriteCompanyViewController.favoritesList.count
    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ordersCell", for: indexPath) as? ordersTableViewCell else{
            return UITableViewCell();
        }
        cell.name.text = CompanyViewController.arrCompany[indexPath.row][0]
        cell.labeDesc.text = CompanyViewController.arrCompany[indexPath.row][1]
        cell.price.text = CompanyViewController.arrCompany[indexPath.row][2]
        cell.price.textColor = UIColor.darkGray
        cell.imgView.image = #imageLiteral(resourceName: "iTunesArtwork 2")
        cell.selectionStyle = .none
        
        return cell
    }
    
    static var favoritesList = [Int]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "ordersTableViewCell", bundle: nil), forCellReuseIdentifier: "ordersCell")
        
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    

    

}
