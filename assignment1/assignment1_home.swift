import UIKit

class HomeViewController: UIViewController {
    
    private lazy var todoTableView: UITableView = {
        let tableView = UITableView()
        // TODO: UITableView
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: viewDidLoad()
    }
    
    @objc private func pushAddTodoViewController() {
        // TODO: plus button tapped
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO: Implement
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TODO: Implement
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO: Implement
    }
}
