// Import the StudentRecord contract from the blockchain.
import StudentRecord from "./StudentRecord"

// Define a script that returns a Student struct.
pub fun getStudent(index: UInt): StudentRecord.Student {
    // Return the Student struct at the specified index in the studentRecord array.
    return StudentRecord.studentRecord[index]
}
