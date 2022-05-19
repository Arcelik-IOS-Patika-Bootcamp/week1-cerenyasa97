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

public class Person{
    let lectures: [LecturesEnum : Lecture]
    let nameSurname: String
    private var _studentClass: Int?
    public var studentClass: Int? {
        get {
            return self._studentClass
        }
        set {
            self._studentClass = newValue
        }
    }
    
    init(schedule: [LecturesEnum : Lecture], nameSurname: String){
        self.lectures = schedule
        self.nameSurname = nameSurname
    }
    
    func calculateNoteAverage() -> Double {
        let count: Int = lectures.map { (key, lecture) in
            lecture.count
        }.reduce(0, +)
        let sum : Double = lectures.map { (key, lecture) in
            lecture.studentAverage * Double(lecture.count)
        }.reduce(0, +)
        return count > 0 ? sum / Double(count) : 0
    }
    
    func determineIsPassed() {
        for (var lectureKey, var lecture) in lectures{
            lecture.isPassed = lecture.studentAverage >= lecture.minAverage
            print("\(lecture.name): \(lecture.isPassed)")
        }
    }
}

var ceren = Person(schedule: lectures, nameSurname: "Ceren Yaşa")

ceren.studentClass = 1

print("Name Surname: \(ceren.nameSurname)")

if let cls = ceren.studentClass{
    print("Class: \(cls)")
} else {
    print("Class not initialized")
}

print(ceren.calculateNoteAverage())

ceren.determineIsPassed()
