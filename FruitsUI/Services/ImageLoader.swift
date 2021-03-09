//
//  ImageLoader.swift
//  FruitsUI
//
//  Created by Guye Raphael, I233 on 09.03.21.
//

import Foundation
import UIKit
import Combine

/// Source: https://www.vadimbulavin.com/asynchronous-swiftui-image-loading-from-url-with-combine-and-swift/
class ImageLoader: ObservableObject {
    
    @Published var image: UIImage?
    private let url: URL
    private var cancellables = Set<AnyCancellable>()
    private static let imageProcessingQueue = DispatchQueue(label: "image-processing")
    
    init(url: URL) {
        self.url = url
    }
    
    deinit {
        cancellables.forEach({ $0.cancel() })
    }
    
    func load() {
        URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .subscribe(on: Self.imageProcessingQueue)
            .receive(on: DispatchQueue.main)
            .sink {
                self.image = $0
            }
            .store(in: &cancellables)
    }
}
