import Combine

class SignUpViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
}
