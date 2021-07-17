//
//  BingoUIView.swift
//  SwiftTutorials
//
//  Created by M K on 2021/07/13.
//

import SwiftUI

struct BingoUIView: View {
    var body: some View {
        VStack{
            HStack{
                Square(number: 1)
                Square(number: 2)
                Square(number: 3)
            }
            HStack{
                Square(number: 4)
                Square(number: 0)
                Square(number: 6)
            }
            HStack{
                Square(number: 7)
                Square(number: 8)
                Square(number: 9)
            }
        }
    }
}

struct Square: View {
    var isColor: Color = Color.blue
    var number:Int
    var body: some View {
        ZStack{
            Rectangle()
                .fill(isColor)
            Text(String(number))
        }
    }
}


struct BingoUIView_Previews: PreviewProvider {
    static var previews: some View {
        BingoUIView()
    }
}
