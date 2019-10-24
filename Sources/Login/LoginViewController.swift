import RxCocoa
import RxSwift
import SnapKit
import Terms
import UIKit

public final class LoginViewController: UIViewController {
    private let disposeBag = DisposeBag()

    private let usernameTextField: UITextField = {
        let e = UITextField()
        e.placeholder = "Username"
        return e
    }()

    private let passwordTextField: UITextField = {
        let e = UITextField()
        e.placeholder = "Password"
        return e
    }()

    private let loginButton: UIButton = {
        let e = UIButton(type: .system)
        e.setTitle("Login", for: .normal)
        return e
    }()

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(loginButton)

        loginButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

        let (loginButtonEnabled, loading) = loginViewModel(
            username: usernameTextField.rx.value.orEmpty,
            password: passwordTextField.rx.value.orEmpty
        )

        loginButtonEnabled
            .drive(loginButton.rx.isEnabled)
            .disposed(by: disposeBag)

        loginButton.rx.tap
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] _ in
                self?.showTerms()
            })
            .disposed(by: disposeBag)
    }

    private func showTerms() {
        let viewController = TermsViewController()
        self.present(viewController, animated: true, completion: nil)
    }
}
