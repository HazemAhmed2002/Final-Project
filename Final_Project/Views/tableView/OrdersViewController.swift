//
//  OrdersViewController.swift
//  Final_Project
//
//  Created by Hazem Ahmed on 23/12/2022.
//

import UIKit

class OrdersViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrOrders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ordersCell", for: indexPath) as? ordersTableViewCell else{
            return UITableViewCell();
        }
        cell.name.text = arrOrders[indexPath.row][0]
        cell.labeDesc.text = arrOrders[indexPath.row][1]
        cell.price.text = arrOrders[indexPath.row][2]
        cell.imgView.image = #imageLiteral(resourceName: "user1")
        

        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @IBOutlet weak var tableView: UITableView!
    var arrOrders : [[String]] = [["شقة" , "غزة٫الجلاء" , "40000 دولار"] , ["فيلا" , "" , ""] , ["شقة" , "غزة٫الجلاء" , "40000 دولار"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ordersTableViewCell", bundle: nil), forCellReuseIdentifier: "ordersCell")
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    
    
    

    

}