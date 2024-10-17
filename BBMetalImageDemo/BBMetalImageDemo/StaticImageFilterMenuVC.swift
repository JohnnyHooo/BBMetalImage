//
//  StaticImageFilterMenuVC.swift
//  BBMetalImageDemo
//
//  Created by Kaibo Lu on 4/2/19.
//  Copyright © 2019 Kaibo Lu. All rights reserved.
//

import UIKit

class StaticImageFilterMenuVC: UIViewController {
    private var list: [(String, NoParamterBlock)]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Static image"
        view.backgroundColor = .gray
        
        let brightness = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .brightness), animated: true) }
        }
        let exposure = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .exposure), animated: true) }
        }
        let contrast = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .contrast), animated: true) }
        }
        let saturation = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .saturation), animated: true) }
        }
        let gamma = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .gamma), animated: true) }
        }
        let levels = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .levels), animated: true) }
        }
        let colorMatrix = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .colorMatrix), animated: true) }
        }
        let rgba = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .rgba), animated: true) }
        }
        let hue = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .hue), animated: true) }
        }
        let vibrance = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .vibrance), animated: true) }
        }
        let whiteBalance = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .whiteBalance), animated: true) }
        }
        let highlightShadow = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .highlightShadow), animated: true) }
        }
        let highlightShadowTint = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .highlightShadowTint), animated: true) }
        }
        let lookup = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .lookup), animated: true) }
        }
        let colorInversion = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .colorInversion), animated: true) }
        }
        let monochrome = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .monochrome), animated: true) }
        }
        let falseColor = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .falseColor), animated: true) }
        }
        let haze = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .haze), animated: true) }
        }
        let luminance = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .luminance), animated: true) }
        }
        let luminanceThreshold = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .luminanceThreshold), animated: true) }
        }
        let erosion = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .erosion), animated: true) }
        }
        let rgbaErosion = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .rgbaErosion), animated: true) }
        }
        let dilation = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .dilation), animated: true) }
        }
        let rgbaDilation = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .rgbaDilation), animated: true) }
        }
        let chromaKey = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .chromaKey), animated: true) }
        }
        let crop = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .crop), animated: true) }
        }
        let resize = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .resize), animated: true) }
        }
        let rotate = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .rotate), animated: true) }
        }
        let flip = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .flip), animated: true) }
        }
        let transform = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .transform), animated: true) }
        }
        let sharpen = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .sharpen), animated: true) }
        }
        let unsharpMask = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .unsharpMask), animated: true) }
        }
        let gaussianBlur = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .gaussianBlur), animated: true) }
        }
        let boxBlur = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .boxBlur), animated: true) }
        }
        let zoomBlur = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .zoomBlur), animated: true) }
        }
        let motionBlur = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .motionBlur), animated: true) }
        }
        let tiltShift = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .tiltShift), animated: true) }
        }
        let normalBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .normalBlend), animated: true) }
        }
        let chromaKeyBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .chromaKeyBlend), animated: true) }
        }
        let dissolveBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .dissolveBlend), animated: true) }
        }
        let addBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .addBlend), animated: true) }
        }
        let subtractBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .subtractBlend), animated: true) }
        }
        let multiplyBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .multiplyBlend), animated: true) }
        }
        let divideBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .divideBlend), animated: true) }
        }
        let overlayBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .overlayBlend), animated: true) }
        }
        let darkenBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .darkenBlend), animated: true) }
        }
        let lightenBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .lightenBlend), animated: true) }
        }
        let colorBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .colorBlend), animated: true) }
        }
        let colorBurnBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .colorBurnBlend), animated: true) }
        }
        let colorDodgeBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .colorDodgeBlend), animated: true) }
        }
        let screenBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .screenBlend), animated: true) }
        }
        let exclusionBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .exclusionBlend), animated: true) }
        }
        let differenceBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .differenceBlend), animated: true) }
        }
        let hardLightBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .hardLightBlend), animated: true) }
        }
        let softLightBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .softLightBlend), animated: true) }
        }
        let alphaBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .alphaBlend), animated: true) }
        }
        let sourceOverBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .sourceOverBlend), animated: true) }
        }
        let hueBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .hueBlend), animated: true) }
        }
        let saturationBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .saturationBlend), animated: true) }
        }
        let luminosityBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .luminosityBlend), animated: true) }
        }
        let linearBurnBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .linearBurnBlend), animated: true) }
        }
        let maskBlend = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .maskBlend), animated: true) }
        }
        let pixellate = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .pixellate), animated: true) }
        }
        let polarPixellate = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .polarPixellate), animated: true) }
        }
        let polkaDot = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .polkaDot), animated: true) }
        }
        let halftone = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .halftone), animated: true) }
        }
        let crosshatch = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .crosshatch), animated: true) }
        }
        let sketch = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .sketch), animated: true) }
        }
        let thresholdSketch = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .thresholdSketch), animated: true) }
        }
        let toon = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .toon), animated: true) }
        }
        let posterize = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .posterize), animated: true) }
        }
        let vignette = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .vignette), animated: true) }
        }
        let kuwahara = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .kuwahara), animated: true) }
        }
        let swirl = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .swirl), animated: true) }
        }
        let bulge = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .bulge), animated: true) }
        }
        let pinch = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .pinch), animated: true) }
        }
        let convolution3x3 = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .convolution3x3), animated: true) }
        }
        let emboss = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .emboss), animated: true) }
        }
        let sobelEdgeDetection = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .sobelEdgeDetection), animated: true) }
        }
        let bilateralBlur = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .bilateralBlur), animated: true) }
        }
        let beauty = { [weak self] in
            if let self = self { self.navigationController?.pushViewController(StaticImageFilterVC(type: .beauty), animated: true) }
        }
        list = [("亮度", brightness),
                ("曝光", exposure),
                ("对比度", contrast),
                ("饱和度", saturation),
                ("伽马", gamma),
                ("色阶", levels),
                ("颜色矩阵", colorMatrix),
                ("RGBA", rgba),
                ("色调", hue),
                ("色彩增强", vibrance),
                ("白平衡", whiteBalance),
                ("高光阴影", highlightShadow),
                ("高光阴影色调", highlightShadowTint),
                ("查找表", lookup),
                ("颜色反转", colorInversion),
                ("单色", monochrome),
                ("伪色", falseColor),
                ("雾化", haze),
                ("亮度", luminance),
                ("亮度阈值", luminanceThreshold),
                ("腐蚀", erosion),
                ("RGBA腐蚀", rgbaErosion),
                ("膨胀", dilation),
                ("RGBA膨胀", rgbaDilation),
                ("色度键", chromaKey),
                ("裁剪", crop),
                ("调整大小", resize),
                ("旋转", rotate),
                ("翻转", flip),
                ("变换", transform),
                ("锐化", sharpen),
                ("反锐化蒙版", unsharpMask),
                ("高斯模糊", gaussianBlur),
                ("方框模糊", boxBlur),
                ("缩放模糊", zoomBlur),
                ("运动模糊", motionBlur),
                ("移轴", tiltShift),
                ("正常混合", normalBlend),
                ("色度键混合", chromaKeyBlend),
                ("溶解混合", dissolveBlend),
                ("加法混合", addBlend),
                ("减法混合", subtractBlend),
                ("乘法混合", multiplyBlend),
                ("除法混合", divideBlend),
                ("叠加混合", overlayBlend),
                ("变暗混合", darkenBlend),
                ("变亮混合", lightenBlend),
                ("颜色混合", colorBlend),
                ("颜色加深混合", colorBurnBlend),
                ("颜色减淡混合", colorDodgeBlend),
                ("滤色混合", screenBlend),
                ("排除混合", exclusionBlend),
                ("差异混合", differenceBlend),
                ("强光混合", hardLightBlend),
                ("柔光混合", softLightBlend),
                ("透明混合", alphaBlend),
                ("源叠加混合", sourceOverBlend),
                ("色调混合", hueBlend),
                ("饱和度混合", saturationBlend),
                ("亮度混合", luminosityBlend),
                ("线性加深混合", linearBurnBlend),
                ("遮罩混合", maskBlend),
                ("像素化", pixellate),
                ("极坐标像素化", polarPixellate),
                ("圆点", polkaDot),
                ("半色调", halftone),
                ("交叉阴影", crosshatch),
                ("素描", sketch),
                ("阈值素描", thresholdSketch),
                ("卡通化", toon),
                ("色调分离", posterize),
                ("暗角", vignette),
                ("桑原滤镜", kuwahara),
                ("旋转扭曲", swirl),
                ("凸起", bulge),
                ("捏合", pinch),
                ("3x3卷积", convolution3x3),
                ("浮雕", emboss),
                ("Sobel边缘检测", sobelEdgeDetection),
                ("双边模糊", bilateralBlur),
                ("美颜", beauty)]
        
        let tableView = UITableView(frame: view.bounds)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.description())
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
}

extension StaticImageFilterMenuVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.description(), for: indexPath)
        cell.textLabel?.text = list[indexPath.row].0
        return cell
    }
}

extension StaticImageFilterMenuVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        list[indexPath.row].1()
    }
}
