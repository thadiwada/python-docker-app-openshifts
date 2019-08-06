node{
   
   stage("App Build started"){
      echo 'App build started..'
      git credentialsId: 'Github-ID', url: 'https://github.com/thadiwada/python-docker-app-openshifts.git'
      }
   
   stage('Docker Build') {
     def app = docker.build "thadiwada/python-docker-app-openshifts"
    }
   
   stage("Tag & Push image"){
      withDockerRegistry([credentialsId: 'dockerID',url: ""]) {
          sh 'docker tag thadiwada/python-docker-app-openshifts thadiwada/python-docker-app-openshifts:001'
          sh 'docker push thadiwada/python-docker-app-openshifts:001'
          sh 'docker push thadiwada/python-docker-app-openshifts:latest'
      }
    }
   
   stage("App deployment started"){
     sh 'oc login --token=1Zjzee5hEUqTKhPde6eevi1gCZH81foIgOSUowtl-3E --server=https://api.us-east-1.online-starter.openshift.com:6443'
    sh 'oc new project padmavathy'
     sh 'oc new-app thadiwada/python-docker-app-openshifts:001 --name python-app'
     sh 'oc expose svc python-app --name=python-app'
     sh 'oc status'
    }
   
    stage('App deployed to Openshift environment') {
     echo 'App deployed to Openshift environment..'
    }
   
























}
