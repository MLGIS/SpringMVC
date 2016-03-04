<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar-module sidebar-module-inset">
	<h4>本站介绍</h4>
	<p>
		师说CMS是用Java开发的内容管理系统，目前是开源中国比较活跃的开源项目之一。师说CMS采用目前最流行的Maven项目架构，设计简单易懂，是一个轻量级的Java
		CMS。 Spring
		MVC为表现层，Spring为业务层，MyBatis为数据层。项目大量使用注解，代码注释清晰，文档齐全，是学习和二次开发的首选。</p>
</div>
<div class="sidebar-module sidebar-module-inset">
	<h4>
		<a href="<@shishuo_folder_url_tag folderId=1/>">博客目录</a>
	</h4>
	<ol class="list-unstyled">
		<li><a
			href="<@shishuo_folder_url_tag folderId=tag_folder.folderId/>">${tag_folder.name}</a>
		<li>
	</ol>
</div>
<div class="sidebar-module sidebar-module-inset">
	<h4>功能</h4>
	<ol class="list-unstyled">
		<li><a href="${BASE_PATH}/admin/login.htm">登录</a>
		<li>
	</ol>
</div>