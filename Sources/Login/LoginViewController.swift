import RxCocoa
import RxSwift
import UIKit

public final class LoginViewController: UIViewController {
    private let disposeBag = DisposeBag()

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        loginButton.rx.tap
            .subscribe(onNext: { _ in
                print("Tapp")
            }).disposed(by: disposeBag)
    }
}
