//
//  ContentView.swift
//  CH1_ScoreKeeper
//
//  Created by 채유성 on 4/6/26.
//

import SwiftUI

struct ContentView: View {
    
    // private : capsulation (ContentView 안에서만 사용 가능)
    //    @State private var players: [String] = ["Elisha", "Andre", "Jasmine"] // 플레이어 상태 배열 선언 - 이 데이터는 변할 수 있는 데이터임
    //    @State private var scores: [Int] = [0, 0, 0] // 점수를 저장할 수 있는 배열
    
    @State private var players: [Player] = [ // 프로토콜 활용
        Player(name: "Elisha", score: 0),
        Player(name: "Andre", score: 0),
        Player(name: "Jasmine", score: 0)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            // 0..<players.count로 payers 안에 있는 원소들을 count로 불러옴 -> 0부터 3까지
            // id: \.description : forEach는 각 항목을 구별할 고유한 ID가 필요함. 여기서는 index 숫자 자체의 설명(description)을  ...
            
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                
                ForEach($players) { $player in // 반복문으로 플레이어 추가 (
                    
                    // identifiable로 했기 때문에 더이상 ForEach에 id: 파라미터가 필요 없다
                    GridRow
                    {
                        TextField("Name", text: $player.name) // $로 바인딩 -> 단순히 값을 보여주는게 아니라, 사용자가 TextField에 글자를 입력하면 즉시 players 배열의 해당 인덱스 값이 업데이트됨
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden() // 중앙에 오도록
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add Player", systemImage: "plus") { // 데이터 추가 버튼
                players.append(Player(name: "", score: 0)) // 누르면 배열의 맨 끝에 빈 문자열 추가
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
