//
//  QuestionnaireDetailView.swift
//  GoQuestionnaire
//
//  Created by feng on 8/22/24.
//

import Foundation
import SwiftUI

struct QuestionnaireDetailView: View {
    var questionnaire: Questionnaire

    var body: some View {
        VStack(alignment: .leading) {
            Text(questionnaire.title)
                .font(.largeTitle)
                .padding(.bottom, 20)
            
            Text("创建日期: \(questionnaire.createdDate, formatter: dateFormatter)")
                .padding(.bottom, 10)
            
            Text("状态: \(questionnaire.isCompleted ? "已完成" : "草稿")")
            
            Spacer()
        }
        .padding()
        .navigationTitle("问卷详情")
    }
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
}

struct QuestionnaireDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireDetailView(questionnaire: Questionnaire(title: "示例问卷", createdDate: Date(), isCompleted: false))
    }
}
