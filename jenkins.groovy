def clean() {
        cleanWs()
}
def checkout() {
        git branch: 'main', url: 'https://github.com/prabhat-roy/particle41.git'
}