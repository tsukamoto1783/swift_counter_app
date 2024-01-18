import UIKit

class ViewController: UIViewController {
    var count = 0
    let countLabel = UILabel()
    let discription = UILabel()
    let addButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCounterLabel()
        setupDiscriptionLabel()
        setupIncrementButton()
        setupNavigationBar()
    }

    // UILabelのセットアップ
    func setupCounterLabel() {
        countLabel.text = "\(count)"
        countLabel.textAlignment = .center
        view.addSubview(countLabel)

        // Auto Layoutを有効化
        countLabel.translatesAutoresizingMaskIntoConstraints = false

        // Layout Anchorsを使用した配置設定
        NSLayoutConstraint.activate([
            countLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            countLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30),
            countLabel.widthAnchor.constraint(equalToConstant: 200),
            countLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }

    // UILabelのセットアップ
    func setupDiscriptionLabel() {
        discription.text = "You have pushed the button this many times:"
        discription.textAlignment = .center
        view.addSubview(discription)

        // Auto Layoutを有効化
        discription.translatesAutoresizingMaskIntoConstraints = false

        // Layout Anchorsを使用した配置設定
        NSLayoutConstraint.activate([
            discription.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            discription.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }


    // UIButtonのセットアップ
    func setupIncrementButton() {
        addButton.setTitle("+", for: .normal)
        
        // Button Style設定
        addButton.setTitleColor(UIColor.black, for: .normal)
        addButton.backgroundColor = UIColor.systemPurple
        addButton.layer.cornerRadius = 10
        addButton.layer.shadowColor = UIColor.black.cgColor
        addButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        addButton.layer.shadowOpacity = 0.5
        addButton.layer.shadowRadius = 4

        view.addSubview(addButton)
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)

        // Auto Layoutを有効化
        addButton.translatesAutoresizingMaskIntoConstraints = false

        // Layout Anchorsを使用した配置設定
        NSLayoutConstraint.activate([
            addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            addButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            addButton.widthAnchor.constraint(equalToConstant: 60),
            addButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    // ナビゲーションBarのセットアップ
    private func setupNavigationBar() {
        navigationItem.title = "Swift UIKit Demo Page"
    }


    @objc func addButtonTapped() {
        count += 1
        countLabel.text = "\(count)"
    }
}
