pipeline {
  agent any
  stages {
    stage('Git Steps') {
      steps {
        sh 'git clean -xfd'
        sh 'git submodule update --init'
        sh 'git submodule foreach git clean -xfd'
      }
    }

    stage('platformio example builds') {
      parallel {
        stage('espidf-blink') {
          steps {
            sh 'cd platform-espressif32/examples/espidf-blink/; platformio run'
          }
        }

        stage('espidf-arduino-blink') {
          steps {
            sh 'cd platform-espressif32/examples/espidf-arduino-blink/; platformio run'
          }
        }

      }
    }

  }
}