//
//  ContentView.swift
//  GoQuestionnaire
//
//  Created by feng on 8/22/24.
//

import SwiftUI
import Foundation

struct ContentView: View {
    var body: some View {
        NavigationView {
            SidebarView()
            SurveyListView()
        }
    }
}

struct SidebarView: View {
    var body: some View {
        List {
            NavigationLink(destination: SurveyListView()) {
                Label("问卷列表", systemImage: "list.bullet")
            }
            NavigationLink(destination: NewSurveyView()) {
                Label("创建新问卷", systemImage: "square.and.pencil")
            }
            NavigationLink(destination: SettingsView()) {
                Label("设置", systemImage: "gear")
            }
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("GoQuestionnaire")
    }
}

struct SurveyListView: View {
    var body: some View {
        Text("这里将显示问卷列表")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                //Color(.white) // 直接使用白色背景，对于支持深色模式可以进行额外设置
            )
            .navigationTitle("问卷列表")
    }
}

struct NewSurveyView: View {
    var body: some View {
        Text("这里是创建新问卷的界面")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                //Color(.white)
            )
            .navigationTitle("创建新问卷")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("设置界面")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                //Color(.white)
            )
            .navigationTitle("设置")
    }
}

struct Questionnaire: Identifiable {
    var id = UUID()
    var title: String
    var createdDate: Date
    var isCompleted: Bool
}
