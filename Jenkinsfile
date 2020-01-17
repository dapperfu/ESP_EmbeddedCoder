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
      steps {
        sh 'cd platform-espressif32/examples/espidf-blink/; platformio run'
      }
    }
  }
}