pipeline {
  agent any
  stages {
    stage('Run build.sh') {
      steps {
        sh './build.sh'
      }
    }

    stage('Archive Artifacts') {
      steps {
        archiveArtifacts(artifacts: 'build.log', fingerprint: true, onlyIfSuccessful: true)
      }
    }

  }
}