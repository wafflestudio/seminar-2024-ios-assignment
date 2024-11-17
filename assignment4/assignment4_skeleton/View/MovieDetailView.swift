import SwiftUI
import Kingfisher

struct MovieDetailView: View {
    
    // TODO: add variables
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .leading, spacing: 0) {
                ScrollView(.vertical) {
                    
                    // TODO: Implement
                    
                }
                .ignoresSafeArea(.container)
                
                // MARK: Booking button
                Button {
                    
                } label: {
                    
                }
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(/* if booked, Color.mainGreen else Color.disabledMainGreen */)
            }
            .background(Color.backgroundDarkGray)
            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbarRole(.editor)
        }
    }
    
    @ViewBuilder private func infoLabel(_ infoType: InfoType, _ text: String) -> some View {
        HStack(spacing: 4) {
            infoType.image
            Text(text)
                .foregroundStyle(Color.primaryLabelColor)
                .font(.system(size: 18, weight: .medium))
        }
    }
}

extension MovieDetailView {
    private enum InfoType {
        case rating
        case runtime
        case reviewCount
        
        var image: some View {
            Group {
                switch self {
                case .rating: Image(systemName: "star.fill")
                case .runtime: Image(systemName: "clock.fill")
                case .reviewCount: Image(systemName: "quote.bubble.fill")
                }
            }
            .foregroundStyle(Color.mainGreen)
            .font(.system(size: 14))
        }
    }
}
