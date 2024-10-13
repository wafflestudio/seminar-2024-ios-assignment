import UIKit
import Kingfisher

class MoviePreviewCell: UITableViewCell {
    
    static let reuseIdentifier = /* TODO: reuseIdentifier */
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        // TODO: Implement
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        // MARK: Do not remove or modify this method
    }
    
    // TODO: Add UI Components
    
    override func prepareForReuse() {
        // TODO: Implement if needed
    }
    
    func updateCellUI(with movie: Movie) {
        // TODO: Implement if needed
    }
}
