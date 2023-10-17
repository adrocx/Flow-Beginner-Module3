// Import the StudentRecord contract from the blockchain.
import StudentRecord from 0x05

// Define a script that returns a Student struct.
pub fun main(index: UInt): StudentRecord.Student {
    // Return the Student struct at the specified index in the studentRecord array.
    return StudentRecord.studentRecord[index]
}
