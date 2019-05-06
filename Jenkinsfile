
node('c07fcf718803') {
  stage('Setup') {
    git credentialsId: 'Password Try 2', url: 'https://github.com/UST-SEIS665/hw11-seis665-01-spring2019-ludewiaj.git'
    sh 'aws s3 cp s3://665-assignment-11-lude3849/index.html /workspace/docker-pipeline/index.html'
  }
  stage('Build') {
      sh 'docker build -t classweb .'
  }
  stage('Test') {
    sh 'docker run --name classweb1 --env NGINX_PORT=80 --publish=80:80 -d classweb'
    IPAddr = sh 'docker inspect --format="{{.NetworkSettings.IPAddress}}" classweb1'
    sh 'curl -s 10.120.1.38'
    sh 'docker stop classweb1'
    sh 'docker rm classweb1'
  }
} 
