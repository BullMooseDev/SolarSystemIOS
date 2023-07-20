import UIKit
import SwiftUI

class ZoomableImageViewController: UIViewController, UIScrollViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.setContentCompressionResistancePriority(.required, for: .horizontal)
        imageView.setContentCompressionResistancePriority(.required, for: .vertical)

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.delegate = self
        scrollView.maximumZoomScale = 1.0
        scrollView.minimumZoomScale = 0.1

        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollView.leadingAnchor, multiplier: 1.0),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: scrollView.trailingAnchor, multiplier: 1.0),
            view.layoutMarginsGuide.topAnchor.constraint(equalTo: scrollView.topAnchor),
            view.layoutMarginsGuide.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        ])
        scrollView.addSubview(imageView)

        imageView.image = UIImage(named: "Earth")
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        imageView
    }

    var image: UIImage? {
        didSet {
            imageView.image = image

            if let image {
                scrollView.minimumZoomScale = min(view.bounds.width / image.size.width,
                                                  view.bounds.height / image.size.height)
            } else {
                scrollView.minimumZoomScale = 1.0
            }

            scrollView.setZoomScale(scrollView.minimumZoomScale, animated: false)
        }
    }

    private let imageView = UIImageView()
    private let scrollView = UIScrollView()
}

struct ZoomableImageView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> ZoomableImageViewController {
        let result = ZoomableImageViewController(nibName: nil, bundle: nil)
        result.image = image
        return result
    }

    func updateUIViewController(_ uiViewController: ZoomableImageViewController, context: Context) {
        uiViewController.image = image
    }

    typealias UIViewControllerType = ZoomableImageViewController

    let image: UIImage
}
