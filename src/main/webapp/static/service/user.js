/**
 * 
 */
App.factory('UserService',['$http','$q',function($http,$q){
	return {
		fetchAllUsers:function(){
			return $http.get("http://localhost:8080/test/user/").then(
					function(response){
						return response.data;
						},
					function(errResponse){
							console.error("请求用户信息失败");return $q.reject(errResponse);
							}
			);
		},
		createUser:function(user){
			return $http.post("http://localhost:8080/test/user/",user).then(
					function(response){
						return response.data;
						},
					function(errResponse){
							console.error("创建用户信息失败");return $q.reject(errResponse);
							}
			);
		},
		updateUser:function(user,id){
			return $http.put("http://localhost:8080/test/user/"+id,user).then(
					function(response){return response.data;},
					function(errResponse){console.error("更新用户信息失败");return $q.reject(errResponse);}
			);
		},
		deleteUser:function(id){
			return $http.delete("http://localhost:8080/test/user/"+id).then(
					function(response){return response.data;},
					function(errResponse){console.error("删除用户信息失败");return $q.reject(errResponse);}
			);
		}
	}
}])