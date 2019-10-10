import RxCocoa
import RxSwift

func loginViewModel(username: ControlProperty<String>, password: ControlProperty<String>) -> (loginButtonEnabled: Driver<Bool>, isLoading: Driver<Bool>) {
    let usernameValid = username.map(isUsernameValid).share(replay: 1)
    let passwordValid = password.map(isPasswordValid).share(replay: 1)

    let loginButtonEnabled = Observable.combineLatest(usernameValid, passwordValid) {
        $0 && $1
    }
    .asDriver(onErrorJustReturn: false)

    return (
        loginButtonEnabled,
        isLoading: Driver.just(false)
    )
}

private func isUsernameValid(_ username: String) -> Bool {
    return username.count > 0
}

private func isPasswordValid(_ password: String) -> Bool {
    return password.count > 0
}
