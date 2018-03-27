#!groovy
node() {
    try {    
       stage('Newman Test'){
            script {
                docker.image('nginx').inside {
                    sh 'env' 
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