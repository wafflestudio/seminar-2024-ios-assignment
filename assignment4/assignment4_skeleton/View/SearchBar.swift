import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String
    let search: () async -> Void
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 15))
                .foregroundStyle(Color.secondaryLabelColor)
            TextField("", text: $searchText,
                      prompt: Text("제목이나 장르를 입력해 주세요")
                                .font(.system(size: 15))
                                .foregroundStyle(Color.searchBarBackground)
            )
            .font(.system(size: 15))
            .foregroundStyle(Color.primaryLabelColor)
            .onSubmit {
                Task {
                    await search()
                }
            }
            .onAppear {
                UITextField.appearance().clearButtonMode = .whileEditing
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 20)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(Color.dividerColor)
        )
    }
}
