def clean() {
        cleanWs()
}
def checkout() {
        git branch: "${BRANCH}", url: "$GITHUB_URL"
}