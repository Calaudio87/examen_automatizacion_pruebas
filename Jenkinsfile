pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps { 
                checkout scm 
            }
        }
        stage('Build') {
            steps { 
                // Compila el proyecto saltando las pruebas temporalmente
                sh 'mvn clean package -DskipTests' 
            }
        }
        stage('Unit Tests') {
            steps { 
                // Ejecuta pruebas unitarias[cite: 4]
                sh 'mvn test -Dgroups=unit' 
            }
            post { 
                always { junit '**/target/surefire-reports/*.xml' } 
            }
        }
        stage('Integration Tests') {
            steps { 
                // Ejecuta pruebas de integración[cite: 4]
                sh 'mvn verify -Dgroups=integration' 
            }
            post { 
                always { junit '**/target/failsafe-reports/*.xml' } 
            }
        }
    }
}