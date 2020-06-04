// Set schedule
String cron_string = BRANCH_NAME == "master" ? "@hourly" : ""

// Set target environment
String env_string = BRANCH_NAME == "master" ? "--target prod" : 
                    BRANCH_NAME ==~ /(release|hotfix)(\/)(.*)/ ? "--target test" :
                    BRANCH_NAME ==~ /(develop|(feature|bugfix)(\/)(.*))/ ? "--target dev" : "--target dev"
                    

pipeline {

  agent any
  triggers { cron(cron_string) }

  stages {

    // Debug and compile
    stage('Compile') {
      steps {
        sh "dbt debug ${env_string}"
        sh "dbt compile ${env_string}"
      }
    }

    // Run tests
    stage('Test') {
      steps {
        sh "dbt test ${env_string}"
      }
    }

    // Run
    stage('Run') {
      steps {
        sh "dbt run ${env_string}"
      }
    }

    // Generate docs
    stage('Docs') {
      steps {
        sh "dbt docs generate ${env_string}"
        archiveArtifacts artifacts: 'target/**/*', fingerprint: true, allowEmptyArchive: true
      }
    }

  } // End of stages

} // End of pipeline