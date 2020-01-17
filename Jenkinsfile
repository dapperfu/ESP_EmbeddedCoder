pipeline {
  agent any
  stages {
    stage('Git Steps') {
      steps {
        sh 'git clean -xfd'
        sh 'git submodule update --init'
      }
    }
    stage('platformio example builds') {
      steps {
        sh 'cd platform-espressif32/examples/espidf-arduino-blink/;platformio run'
      }
      steps {
        sh 'cd platform-espressif32/examples/espidf-blink/;platformio run'
      }
    }
    stage('Run build.sh') {
      steps {
        sh './build.sh'
      }
    }

  }
}
