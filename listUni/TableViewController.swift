//
//  TableViewController.swift
//  listUni
//
//  Created by Sanzhar Kiyassov on 09.02.2024.
//

import UIKit
import Alamofire
import SVProgressHUD
import SwiftyJSON


class TableViewController: UITableViewController {

    var arrayUni  = [UniList]()
    var isLoading = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        let list = UniList(name: "AITU", location: "Astana")
//
//        arrayUni.append(list)
//        tableView.reloadData()
  
        refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        
        tableView.addSubview(refreshControl!)
        
        loadData()
        
    }

    @objc func handleRefresh() {
        if !isLoading {
            isLoading = true
            arrayUni.removeAll()
            tableView.reloadData()
            loadData()
        }
    }
    
    func loadData() {
        
        SVProgressHUD.show()
        
        AF.request("https://demo6676229.mockable.io/getUni", method: .get).responseJSON { response in
            
            SVProgressHUD.dismiss()
            self.isLoading = false
            self.refreshControl?.endRefreshing()


            if response.response?.statusCode == 200 {
                let json = JSON(response.value!)
                print(json)
                if let resultArray = json.array {
                    for item in resultArray {
                        let listItem = UniList(json: item)
                        self.arrayUni.append(listItem)
                    }
                    self.tableView.reloadData()
                }
            }
        }
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayUni.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UniTableViewCell

        // Configure the cell...
        
        cell.setData(list: arrayUni[indexPath.row])

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
        
        let detailVc = storyboard?.instantiateViewController(identifier: "detailViewController") as! ViewController
           detailVc.list = arrayUni[indexPath.row] 
           navigationController?.pushViewController(detailVc, animated: true)
        
     
    }
}
