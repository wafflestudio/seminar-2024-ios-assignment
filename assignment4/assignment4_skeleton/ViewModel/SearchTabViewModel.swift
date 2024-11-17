// MARK: Observation ver.

import Observation

@Observable final class SearchTabViewModel {
    
    var resultList: [Movie] = []
    
    // TODO: Implement
}

// MARK: ObservableObject ver.

import Combine

final class SearchTabViewModel: ObservableObject {
    
    @Published var resultList: [Movie] = []
    
    // TODO: Implement
}

// 다른 ViewModel에서도 동일하게 적용 가능합니다
