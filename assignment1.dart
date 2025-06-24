import 'dart:io';

double continuousAssessment(){
    print("Enter your Continuous Assessment score : ");
    return double.parse(stdin.readLineSync()!);
}

double examsScore(){
    print("Enter your Exam score : ");
    return double.parse(stdin.readLineSync()!);
}

double projectScore(){
    print("Enter your Project score : ");
    return double.parse(stdin.readLineSync()!);
}


void compute(){
    double assessment = continuousAssessment();
    double exam = examsScore();
    double project = projectScore();

    double totalScore = assessment + exam + project;

    print("\n Total score = $totalScore\n");

    gradingSystem(totalScore);

}

void gradingSystem(double totalScore){


    if( totalScore >= 80 && totalScore <=100){
        print("You got A");
    } else if( totalScore >= 75 && totalScore <=79){
        print("You got B+");
    }else if( totalScore >= 70 && totalScore <=74){
        print("You got B");
    }else if( totalScore >= 65 && totalScore <=69){
        print("You got C+");
    }else if( totalScore >= 60 && totalScore <=64){
        print("You got C");
    }else if( totalScore >= 55 && totalScore <=59){
        print("You got D+");
    }else if( totalScore >= 50 && totalScore <=54){
        print("You got D");
    }else if( totalScore >= 45 && totalScore <=49){
        print("You got E");
    }else if( totalScore < 45){
        print("You got F");
    }
}

void main(){
   compute();
}