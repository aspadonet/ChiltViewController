//
//  SecondChildViewController.swift
//  ChildController
//
//  Created by Alexander Avdacev on 31.03.22.
//

import UIKit

class SecondChildViewController: UIViewController {

    private let tableView: UITableView = {
        let table = UITableView(frame: .zero,
                                style: .grouped)
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cellTableId")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension SecondChildViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTableId", for: indexPath)
        cell.textLabel?.text = "Hello my friend!"
        cell.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return cell
    }
    
    
}
