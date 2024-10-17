//
//  MainMenuVC.swift
//  BBMetalImageDemo
//
//  Created by Kaibo Lu on 4/1/19.
//  Copyright © 2019 Kaibo Lu. All rights reserved.
//

import UIKit

typealias NoParamterBlock = () -> Void

class MainMenuVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var list: [(String, NoParamterBlock)]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let staticImageFilter = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterMenuVC(), animated: true) }
        }
        let cameraFilter = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(CameraFilterMenuVC(), animated: true) }
        }
        let cameraPhotoFilter = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(CameraPhotoFilterVC(), animated: true) }
        }
        let multipleCameraFilter = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(MultipleCameraFilterVC(), animated: true) }
        }
        let depthCameraLuminance = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(DepthCameraLuminanceVC(), animated: true) }
        }
        let depthCameraFilter = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(DepthCameraFilterVC(), animated: true) }
        }
        let videoFilter = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(VideoFilterVC(), animated: true) }
        }
        let videoFilter2 = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(VideoFilterVC2(), animated: true) }
        }
        let videoWatermark = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(VideoWatermarkVC(), animated: true) }
        }
        let cameraVideoBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(CameraVideoBlendVC(), animated: true) }
        }
        let multipleImageBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(MultipleImageBlendVC(), animated: true) }
        }
        let multipleVideoBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(MultipleVideoBlendVC(), animated: true) }
        }
        let recordUI = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(RecordUIVC(), animated: true) }
        }
        list = [("静态图像滤镜", staticImageFilter),
                ("相机滤镜", cameraFilter),
                ("相机照片滤镜", cameraPhotoFilter),
                ("多相机滤镜", multipleCameraFilter),
                ("深度相机亮度", depthCameraLuminance),
                ("深度相机滤镜", depthCameraFilter),
                ("视频滤镜", videoFilter),
                ("视频滤镜2", videoFilter2),
                ("视频水印", videoWatermark),
                ("相机视频混合", cameraVideoBlend),
                ("多图像混合", multipleImageBlend),
                ("多视频混合", multipleVideoBlend),
                ("录制界面", recordUI)]

        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.description())
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension MainMenuVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.description(), for: indexPath)
        cell.textLabel?.text = list[indexPath.row].0
        return cell
    }
}

extension MainMenuVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        list[indexPath.row].1()
    }
}
