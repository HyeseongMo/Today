//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Paul Mo on 2023/11/14.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
