pipeline {
  agent any
  stages {
    stage('Git Steps') {
      steps {
        sh 'git clean -xfd'
        sh 'git submodule update --init'
        sh 'git submodule foreach git clean -xfd
      }
    }
    stage('simulink_embedded_coder') {
      steps {
        sh './build.sh'
      }
    }
  }
}
