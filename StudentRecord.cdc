pub contract StudentRecord {

    // Array that stores a list of student records.
    pub var studentRecord: [Student]

    // Struct that represents a student with their attributes.
    pub struct Student {
        pub let name: String
        pub let age: Int
        pub let grade: String

        // Initializer function that sets the student's properties.
        init(_name: String, _age: Int, _grade: String) {
            self.name = _name
            self.age = _age
            self.grade = _grade
        }
    }

    // Public function to add a new student record to the registry.
    pub fun addStudent(name: String, age: Int, grade: String) {
        // Create a new Student instance with the provided data.
        let newStudent = Student(_name: name, _age: age, _grade: grade)
        // Add the new student record to the studentRecord array.
        self.studentRecord.append(newStudent)
    }

    // Public function to retrieve the details of a student by index.
    pub fun getStudentDetails(index: UInt): Student? {
        if index < UInt(self.studentRecord.length) {
            return self.studentRecord[index]
        } else {
            return nil
        }
    }

    // Initializer function that initializes the studentRecord list to an empty list.
    init() {
        self.studentRecord = []
    }
}


