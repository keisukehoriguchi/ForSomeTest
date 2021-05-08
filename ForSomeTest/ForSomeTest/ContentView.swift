//
//  ContentView.swift
//  ForSomeTest
//
//  Created by Keisuke Horiguchi on 2021/05/08.
//

import SwiftUI

struct ContentView: View {
    
    let hoge = Bundle.main.object(forInfoDictionaryKey: "kHogehoge") as! String
    
    var body: some View {
        
        VStack{
            #if DEVELOP
            Text("開発中")
                .padding()
            #elseif STAGING
            Text("確認してください")
                .padding()
            #else
            Text("本番向けです")
                .padding()
            #endif
            
            Text(hoge)
                .foregroundColor(.red)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
