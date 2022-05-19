import UIKit

struct Lecture{
    let name: String
    let count: Int
    let minAverage: Double
    var studentAverage: Double
    var isPassed: Bool
    
    func toString(){
        print("name: \(name)\tcount: \(count)\tminAverage: \(minAverage)\tstudentAverage: \(studentAverage)\tisPassed: \(studentAverage >= minAverage)\t")
    }
}

var physic = Lecture(name: "Physic", count: 2, minAverage: 50, studentAverage: 57, isPassed: false)

physic.toString()

enum LecturesEnum{
    case math, physic, lecture, history, chemical, biology, geography
}

var lectures : [LecturesEnum : Lecture] = [
    LecturesEnum.biology: Lecture(name: "Biology", count: 2, minAverage: 70, studentAverage: 74.2, isPassed: false),
    LecturesEnum.chemical: Lecture(name: "Chemical", count:  2, minAverage:  70, studentAverage: 87, isPassed: false),
    LecturesEnum.geography: Lecture(name: "Geography", count:  1, minAverage:  60, studentAverage: 36.5, isPassed: false),
    LecturesEnum.history: Lecture(name: "History", count:  1, minAverage:  60, studentAverage: 92, isPassed: false),
    LecturesEnum.math: Lecture(name: "Math", count:  3, minAverage:  70, studentAverage: 45.75, isPassed: false),
    LecturesEnum.physic: Lecture(name: "Physics", count:  3, minAverage:  70, studentAverage: 94, isPassed: false),
    LecturesEnum.lecture: Lecture(name: "Lecture", count:  2, minAverage:  60, studentAverage: 76, isPassed: false)
]

lectures.forEach { (key, value) in
    print("\n\(key) : \(value)\n")
}
