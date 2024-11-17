import Alamofire
import Foundation

final class NetworkInterceptor: RequestInterceptor {
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, any Error>) -> Void) {
        var urlRequest = urlRequest
        // TODO: Implement
        completion(.success(urlRequest))
    }
}
