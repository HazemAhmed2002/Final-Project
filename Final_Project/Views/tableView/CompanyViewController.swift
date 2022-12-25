//
//  CompanyViewController.swift
//  Final_Project
//
//  Created by Hazem Ahmed on 23/12/2022.
//

import UIKit

class CompanyViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    
    static var arrCompany : [[String]] = [["المقاولون" , " " , "غزة" ] ,
                                  ["ازاد للعقارات" , " " , "خانيونس" ] ,
                                  ["الوسيط العقاري" , " " , "الوسطى"]]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return CompanyViewController.arrCompany.count
    }
    
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
        
        cell.btnAddToFavorite.isHidden = false
       
        cell.btnAddToFavorite.tag = indexPath.row
        cell.btnAddToFavorite.addTarget(self, action: #selector(addToFavorite(sender:)), for: .touchUpInside)

        return cell
    }
    
    var isFavorite = false
    
    @objc
    func addToFavorite(sender: UIButton){
        if isFavorite {
                
                isFavorite = false
                sender.setImage(UIImage(systemName: "heart"), for: .normal)
            FavoriteCompanyViewController.favoritesList.removeAll { $0 == sender.tag}
//                print("unFav : \(sender.tag)")
            
            } else {
                
                isFavorite = true
                sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                if FavoriteCompanyViewController.favoritesList.contains(sender.tag){
                    print("found")
                }else {
                    FavoriteCompanyViewController.favoritesList.append(sender.tag)
//                    print("not found")
                }
//                print("Fav : \(sender.tag)")
//                print(FavoriteCompanyViewController.favoritesList)
            }
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ordersTableViewCell", bundle: nil), forCellReuseIdentifier: "ordersCell")
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row == 0){
            if let vc = storyboard?.instantiateViewController(withIdentifier: "CompanyPage1") as? UIViewController{
                navigationController?.pushViewController(vc, animated: true)
            }
        }else if(indexPath.row == 1){
            if let vc = storyboard?.instantiateViewController(withIdentifier: "CompanyPage2") as? UIViewController{
                navigationController?.pushViewController(vc, animated: true)
            }
        }else if(indexPath.row == 2){
            if let vc = storyboard?.instantiateViewController(withIdentifier: "CompanyPage3") as? UIViewController{
                navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}
