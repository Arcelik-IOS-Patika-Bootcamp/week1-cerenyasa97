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
