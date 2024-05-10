const base = {
    get() {
                return {
            url : "http://localhost:8080/php9w1n3/",
            name: "php9w1n3",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/php9w1n3/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "新闻资讯小程序"
        } 
    }
}
export default base
