//
//  ToDoListViewController.swift
//  Todoey
//
//  Created by Tony Short on 15/06/2018.
//  Copyright © 2018 Tony Short. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

	let itemArray = ["Find Mike","Buy Eggos","Destroy Demogorgon"]
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return itemArray.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell",  for:indexPath)
		cell.textLabel?.text = itemArray[indexPath.row]
		return cell
	}

	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let cell = tableView.cellForRow(at: indexPath)
		if(cell?.accessoryType == .checkmark)
		{
			cell?.accessoryType = .none
		}
		else
		{
			cell?.accessoryType = .checkmark
		}

		tableView.deselectRow(at: indexPath, animated: true)
	}
}

