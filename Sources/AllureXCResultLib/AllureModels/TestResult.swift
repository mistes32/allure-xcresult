//
//  TestResult.swift
//  
//
//  Created by Vladislav Kiryukhin on 20.12.2021.
//

import Foundation

// see: https://github.com/allure-framework/allure-java/tree/2.17.2/allure-model/src/main/java/io/qameta/allure/model/TestResult.java
public struct TestResult: Encodable {
    public init(uuid: String, historyId: String, testCaseId: String? = nil, testCaseName: String? = nil, fullName: String, labels: [Label], links: [Link], name: String, status: Status, statusDetails: StatusDetails? = nil, stage: Stage? = nil, description: String? = nil, descriptionHtml: String? = nil, steps: [StepResult], attachments: [Attachment], parameters: [Parameter], start: Int, stop: Int) {
        self.uuid = uuid
        self.historyId = historyId
        self.testCaseId = testCaseId
        self.testCaseName = testCaseName
        self.fullName = fullName
        self.labels = labels
        self.links = links
        self.name = name
        self.status = status
        self.statusDetails = statusDetails
        self.stage = stage
        self.description = description
        self.descriptionHtml = descriptionHtml
        self.steps = steps
        self.attachments = attachments
        self.parameters = parameters
        self.start = start
        self.stop = stop
    }
    
    public var uuid: String
    public var historyId: String
    public var testCaseId: String?
    public var testCaseName: String?
    public var fullName: String
    public var labels: [Label]
    public var links: [Link]
    public var name: String
    public var status: Status
    public var statusDetails: StatusDetails?
    public var stage: Stage?
    public var description: String?
    public var descriptionHtml: String?
    public var steps: [StepResult]
    public var attachments: [Attachment]
    public var parameters: [Parameter]
    public var start: Int
    public var stop: Int
}
