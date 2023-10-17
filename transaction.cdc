// Import the StudentRecord contract from the blockchain.
import StudentRecord from 0x05

// Define a transaction that adds a new student record to the registry.
transaction(name: String, age: Int, grade: String) {

    // The prepare function sets the signer of the transaction to the AuthAccount.
    prepare(signer: AuthAccount) {
        // In this case, the prepare function doesn't need to do anything else.
    }

    // The execute function calls the addStudent function of the StudentRecord contract with the provided parameters.
    execute {
        StudentRecord.addStudent(name: name, age: age, grade: grade)

        // Log a message to indicate that the student record has been added.
        log("Student record added.")
    }
}

