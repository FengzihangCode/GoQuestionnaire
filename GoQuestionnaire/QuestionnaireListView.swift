//
//  QuestionnaireListView.swift
//  GoQuestionnaire
//
//  Created by feng on 8/22/24.
//

import SwiftUI

struct QuestionnaireListView: View {
    @State private var questionnaires = [
        Questionnaire(title: "校园调研", createdDate: Date(), isCompleted: false),
        Questionnaire(title: "图书馆满意度", createdDate: Date(), isCompleted: true)
    ]
    
    var body: some View {
        NavigationView {
            List(questionnaires) { questionnaire in
                NavigationLink(destination: QuestionnaireDetailView(questionnaire: questionnaire)) {
                    HStack {
                        Text(questionnaire.title)
                            .font(.headline)
                        Spacer()
                        Text(questionnaire.isCompleted ? "已完成" : "草稿")
                            .foregroundColor(questionnaire.isCompleted ? .green : .orange)
                    }
                }
            }
            .navigationTitle("问卷列表")
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: {
                        // 添加新问卷的操作
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct QuestionnaireListView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireListView()
    }
}
