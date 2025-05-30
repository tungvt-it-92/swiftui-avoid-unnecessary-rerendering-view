import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel: SignUpViewModel = .init()

    var body: some View {
        let _ = Self._printChanges()
        VStack {
            EmailView(email: $viewModel.email)
            PasswordView(password: $viewModel.password)
            DoNotUseViewModelView()
        }
        .environmentObject(viewModel)
    }
}

struct EmailView: View {
    @Binding var email: String

    var body: some View {
        let _ = Self._printChanges()

        TextField("Enter email", text: $email)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(50)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

struct PasswordView: View {
    @Binding var password: String

    var body: some View {
        let _ = Self._printChanges()
        SecureField("Enter password", text: $password)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(50)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

struct DoNotUseViewModelView: View {

    var body: some View {
        let _ = Self._printChanges()
        Text("Do Not Use View Model View")
    }
}

#Preview {
    SignUpView()
}
