import 'Dart:io';

///Student Grade Evaluator
void main(){

    const double passingGrade = 60.0;
    const double maxScore = 100.0;
    const double assignmentWeight = 0.2;
    const double midtermWeight = 0.3;
    const double finalExamWeight = 0.5;


    print("Enter your Name:");
    String? name = stdin.readLineSync();

    try{
        print("Enter Assignment Score: ");
        String? inputAssignmentScore = stdin.readLineSync();
        print("Enter Midterm Score: ");
        String? inputMidtermScore = stdin.readLineSync();
        print("Enter Assignment Score: ");
        String? inputFinalScore = stdin.readLineSync();

        if(inputAssignmentScore != null || inputMidtermScore != null || inputFinalScore != null ){
            double assignmentScore=double.parse(inputAssignmentScore);
            double midtermScore=double.parse(inputMidtermScore);
            double finalExamScore=double.parse(inputFinalScore);

            // Calculate weighted average
            double finalGrade = (assignmentScore * 0.2) + (midtermScore * 0.3) + (finalExamScore * 0.5);
            
            // Determine "Passed" or "Failed"
            String passingGrade;
            if (finalGrade >=75.0 ){
                passingGrade = "Passed";
            }else{
                passingGrade = "Failed";
            }
            //Print Output/Result
            print("Student Name:${name}");
            print("Assignment: ${assignmentScore.toStringAsFixed(1)}%");
            print("Midterm: ${midtermScore.toStringAsFixed(1)}%");
            print("Final Exam: ${finalExamScore.toStringAsFixed(1)}%");
            print("Final Grade: ${finalGrade.toStringAsFixed(1)}%");
            print("You Are ${passingGrade}");
        }else{
            print("No input Provided.");
        }

        // print("Enter Midterm Score: ");
        // String? inputMidtermScore = stdin.readLineSync();

        // if(inputMidtermScore != null){
        //     double midtermScore=double.parse(inputMidtermScore);
        // }else{
        //     print("No input Provided.");
        // }

        // print("Enter Assignment Score: ");
        // String? inputFinalScore = stdin.readLineSync();

        // if(inputFinalScore != null){
        //     double finalScore=double.parse(inputFinalScore);
        // }else{
        //     print("No input Provided.");
        // }

        // Calculate weighted average
        //double finalGrade = (assignmentScore * 0.2) + (midtermScore * 0.3) + (finalExamScore * 0.5);

        // Determine "Passed" or "Failed"
        // String passingGrade;
        // if (finalGrade >=75.0 ){
        //     passingGrade = "Passed";
        // }else{
        //     passingGrade = "Failed";
        // }

        //Print Output/Result
    }catch (e) {
        print("Error: Please Enter a Valid Decimal Number.");
    }

    // print("Enter Assignment Score: ");
    // double assignmentScore = double.parse(stdin.readLineSync()!);

    // print("Enter Midterm Score: ");
    // double midtermScore = double.parse(stdin.readLineSync()!);

    // print("Enter Assignment Score: ");
    // double finalScore = double.parse(stdin.readLineSync()!);
}

