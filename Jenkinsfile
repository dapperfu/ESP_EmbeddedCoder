pipeline {
  agent any
  stages {
    stage('Run build.sh') {
      steps {
        sh './build.sh'
      }
    }

    stage('') {
      steps {
        archiveArtifacts(artifacts: 'build.log', fingerprint: true, onlyIfSuccessful: true)
      }
    }

  }
}