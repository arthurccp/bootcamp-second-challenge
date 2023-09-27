import UIKit
import Foundation

enum TaskStatus {
    case pendente, concluida
}

struct Task {
    var title: String
    var status: TaskStatus
}

func verificarTarefa(_ task: Task) {
    if task.status == .concluida {
        print("A tarefa '\(task.title)' está concluída.")
    } else {
        print("A tarefa '\(task.title)' está pendente.")
    }
}

var tasks = [
    Task(title: "Fazer compras", status: .pendente),
    Task(title: "Estudar Swift", status: .concluida),
    Task(title: "Correr no parque", status: .pendente)
]

for task in tasks {
    verificarTarefa(task)
}

let multiplicar: (Int, Int) -> Int = { (a, b) in
    return a * b
}

let resultado = multiplicar(3, 4)
print("O resultado da multiplicação é \(resultado).")

func tarefaDemorada() {
    sleep(3)
    print("Tarefa demorada concluída.")
}

// Chamar a função de tarefa demorada
tarefaDemorada()
