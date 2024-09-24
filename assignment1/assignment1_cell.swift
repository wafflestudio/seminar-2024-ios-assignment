 import UIKit

class TodoTableViewCell: UITableViewCell {
    
    static let cellIdentifier = /* TODO: set identifier */
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        // TODO: Implement
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        // TODO: Implement
        return label
    }()
    
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel])
        // TODO: Implement
        return stackView
    }()
    
    /*
     
     􀁣 systemName "checkmark.circle.fill"
     􀁢 systemName "checkmark.circle"
     􀅼 systemName "plus"
     􀣋 systemName "gearshape"
     
     for more information: SF Symbols
     
     */
    
    private lazy var checkImageView: UIImageView = {
        let imageView = UIImageView()
        // TODO: Implement
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: TodoTableViewCell.cellIdentifier)
        // TODO: Implement
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        // MARK: Do not remove or modify this method
    }
    
    override func prepareForReuse() {
        // TODO: Implement if needed
    }
    
    func updateCellUI() {
        // TODO: Implement if needed
    }
}
