//
//  CompanyViewController.swift
//  Final_Project
//
//  Created by Hazem Ahmed on 23/12/2022.
//

import UIKit

class CompanyViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    
    var arrCompany : [[String]] = [["المقاولون" , " " , "غزة" ] ,
                                  ["ازاد للعقارات" , " " , "خانيونس" ] ,
                                  ["الوسيط العقاري" , " " , "الوسطى"]]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrCompany.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ordersCell", for: indexPath) as? ordersTableViewCell else{
            return UITableViewCell();
        }
        cell.name.text = arrCompany[indexPath.row][0]
        cell.labeDesc.text = arrCompany[indexPath.row][1]
        cell.price.text = arrCompany[indexPath.row][2]
        cell.price.textColor = UIColor.darkGray
        cell.imgView.image = #imageLiteral(resourceName: "iTunesArtwork 2")
        cell.selectionStyle = .none

        return cell
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
