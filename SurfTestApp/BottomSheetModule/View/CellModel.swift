//
//  CellModel.swift
//  SurfTestApp
//
//  Created by demasek on 12.02.2023.
//

import Foundation
import UIKit

struct CellModel {
	var itemLabel: String
	var itemBackground: UIColor
	var itemSelectedBackground: UIColor
}

class CellModels {
	var cellModels = [
		CellModel(itemLabel: "iOS", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Android", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Design", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "QA", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Flutter", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "PM", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Dimka", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Dimon", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Demasek", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Dimonchik", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Dimusik", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
		CellModel(itemLabel: "Dima", itemBackground: UIColor.itemBackgroundColor, itemSelectedBackground: UIColor.selectedItemBackgroundColor),
	]
}

