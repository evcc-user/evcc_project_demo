pipeline {
    agent any

    environment {
        ADS_PATH = 'C:\\Infineon\\AURIX-Studio-1.10.10'
        PROJECT_DIR = 'C:\\Users\\admin\\Documents\\demo_project'
        PROJECT_NAME = 'code_test'
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/evcc-user/evcc_project_demo.git', branch: 'main'
            }
        }

        stage('Clean Project') {
            steps {
                bat """
                "${ADS_PATH}\\launch-tool\\launch-tool.exe" ^
                -nosplash ^
                -application org.eclipse.cdt.managedbuilder.core.headlessbuild ^
                -data "C:\\Users\\admin\\Documents\\demo_project" ^
                -cleanBuild code_test/Debug
                """
            }
        }

      stages {
        stage('Build AURIX Project') {
            steps {
                bat 'build_ads_project.bat'
            }
        }
    }

        stage('Post Build - Output Binary Check') {
            steps {
                bat "dir /b \"C:\\Users\\admin\\Documents\\demo_project\\code_test\\Debug\\*.elf\""
            }
        }
    }

    post {
        success {
            echo "Build completed successfully!"
        }
        failure {
            echo "Build failed."
        }
    }
}
