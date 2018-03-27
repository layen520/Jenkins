#!groovy

node() {

    try {
       //检出代码
       stage('Checkout'){

          echo "Checkout git"
          sh "whoami"
        //   checkout scm
          sh "sudo docker run newman:latest"
          

       }
       //使用Postman测试
       stage('Newman Test'){
            echo "Use Newman to Test"
            script {
                docker.image('newman:latest').inside {
                    sh 'newman run ./newman.postman_collection.json -e ./myenv.postman_environment.json --reporters cli' 
                }
            }
       }
    }
    //捕获异常
    catch (err) {
        //出错清除运行中容器
        throw err
    }

}