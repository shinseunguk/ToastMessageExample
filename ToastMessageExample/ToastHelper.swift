//
//  ToastHelper.swift
//  ToastMessageExample
//
//  Created by plsystems on 2023/03/10.
//

import Toast_Swift

// MARK: - Normal Toast, duration 3초(Default)/ position 하단(Default)
/// Normal Toast, Duration 3초(Default), Position 하단(Default)
func makeToast(message: String) {
    
    if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
        let keyWindow = scene.windows.first(where: { $0.isKeyWindow })
        
        keyWindow?.rootViewController?.view.makeToast(message)
    }
}

// MARK: - Normal Toast, Message 내용 / duration 지속시간 / position Toast위치
/// Normal Toast  2, Message 내용 / duration 지속시간 / position Toast위치
func makeToast2(message: String, duration: CGFloat, position: ToastPosition) {
    
    if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
        let keyWindow = scene.windows.first(where: { $0.isKeyWindow })
        
        keyWindow?.rootViewController?.view.makeToast(message, duration: duration, position: position)
    }
}

// MARK: - Image, Title Toast, Message 내용 / duration 지속시간 / position Toast위치 / title 타이틀 / image 이미지
///Image, Title Toast, Message 내용 / duration 지속시간 / position Toast위치 / title 타이틀 / image 이미지
func makeToast3(message: String, duration: CGFloat, position: ToastPosition, title: String, image: UIImage) {
    
    if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
        let keyWindow = scene.windows.first(where: { $0.isKeyWindow })
        
        keyWindow?.rootViewController?.view.makeToast(message, duration: duration, position: position, title: title, image: image)
    }
}
