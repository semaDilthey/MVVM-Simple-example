//
//  Dynamic.swift
//  MVVM + Coordinator simple app
//
//  Created by Семен Гайдамакин on 03.04.2023.
//
// с помощью этого класса происходит связывание какого-то объекта (напр. statusText) с польз интерфейса и с изм данных в этом объекте. Как только statusText переменная уходит в viewController и обновляет внешку
import Foundation

class Dynamic<T> {
    
    typealias Listiner = (T) -> Void
    private var listiner: Listiner?
    
    func bin(_ listener: Listiner?){
        self.listiner = listener
    }
    
    var value : T {
        didSet {
            listiner?(value)
        }
    }
    
    init (_ v: T) {
        value = v
    }
}

