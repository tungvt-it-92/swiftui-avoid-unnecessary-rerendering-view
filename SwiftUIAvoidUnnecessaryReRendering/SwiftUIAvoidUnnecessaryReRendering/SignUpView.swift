import SwiftUI

struct SignUpView: View {
    @State var viewModel: SignUpViewModel = .init()

    var body: some View {
        let _ = Self._printChanges()
        VStack {
            EmailView(viewModel: viewModel)
            PasswordView(viewModel: viewModel)
            DoNotUseViewModelView(viewModel: viewModel)
        }
    }
}

struct EmailView: View {
    @Bindable var viewModel: SignUpViewModel

    var body: some View {
        let _ = Self._printChanges()

        TextField("Enter email", text: $viewModel.email)
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
    @Bindable var viewModel: SignUpViewModel

    var body: some View {
        let _ = Self._printChanges()
        SecureField("Enter password", text: $viewModel.password)
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
    var viewModel: SignUpViewModel
    
    var body: some View {
//        let _ = viewModel.email
//        let _ = viewModel.password
        
        let _ = Self._printChanges()
        Text("Do Not Use View Model View")
    }
}

#Preview {
    SignUpView()
}
