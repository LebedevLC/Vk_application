//
//  UserGroups.swift
//  VK_application
//
//  Created by Сергей Чумовских  on 13.07.2021.
//

import UIKit

class UserGroups: UIViewController {
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var groupTableView: UITableView!
    
    private var groups: [GroupModel] = []
    private var filteredGroups: [GroupModel] = []  // массив для поиска
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        groupTableView.addGestureRecognizer(tapGesture)
        
        let storage = GroupStorage()
        groups = storage.group
        // заполняем массив для поиска
        filteredGroups = groups
    }
    
    // Сега для добавления новой группы из контроллера AddGroupViewController(sourceController) в текущий контроллер
    @IBAction func addGroup(_ segue: UIStoryboardSegue) {
        guard
            segue.identifier == "addGroup",
            let sourceController = segue.source as? AddGroupViewController,
            let indexPaths = sourceController.tableView.indexPathForSelectedRow
        else {
            return
        }
        let group = sourceController.groups[indexPaths.row]
        
        if !groups.contains(where: {$0.nameGroup == group.nameGroup}) {
            groups.append(group)
            // заполняем массив для отображения
            filteredGroups = groups
            groupTableView.reloadData()
        }
    }
    
}

//MARK: - Extension UserGroups: UISearchBarDelegate

extension UserGroups: UISearchBarDelegate {
    
    // функция активируется при изменении текста в searchBar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // опустошаем массив
        filteredGroups = []
        // если пусто сбрасываем поиск и возвращаем значения групп из массива groups
        if searchText.isEmpty {
            filteredGroups = groups
        } else {
            // проходим по массиву groups в поиске введенных символов без учета регистра
            for group in groups {
                if group.nameGroup.lowercased().contains(searchText.lowercased()) {
                    // добавляем результат в отфильтрованный масив
                    filteredGroups.append(group)
                }
            }
        }
        // обновляем данные в таблице
        self.groupTableView.reloadData()
    }
    
}

//MARK: - Extension UserGroups: UITabBarDelegate, UITableViewDataSource

extension UserGroups: UITableViewDelegate, UITableViewDataSource{
    
    // Колличество строк в ячейке
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    // Колличество ячеек
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredGroups.count
    }
    
    // Подготовить и создать ячейку
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            // Приведение переменной cell к классу UserGroupTableViewCell
            let cell = tableView.dequeueReusableCell(withIdentifier: UserGroupTableViewCell.reusedIdentifire, for: indexPath) as? UserGroupTableViewCell
        else {
            return UITableViewCell()
        }
        // Сортировка списка фильтрованных через SearchBar групп по алфавиту
        filteredGroups = filteredGroups.sorted(by: { $0.nameGroup < $1.nameGroup})
        // Записываем в group значение из массива filteredGroups (SearchBar) для определенной строки
        let group = filteredGroups[indexPath.row]
        // Передаем значение строки в ячейку
        cell.configure(group: group)
        // Возвращаем ячейку в таблицу для демонстрации
        return cell
    }
    
    // Удаление ячейки
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
    
}


