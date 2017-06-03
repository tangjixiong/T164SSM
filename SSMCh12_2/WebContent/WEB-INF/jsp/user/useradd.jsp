<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/head.jsp"%>
<!-- 导入Spring表单标签 -->
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form"%>
<div class="right">
	<div class="location">
		<strong>你现在所在的位置是:</strong> <span>用户管理页面 >> 用户添加页面</span>
	</div>
	<div class="providerAdd">
		<fm:form method="post" modelAttribute="user"
			enctype="multipart/form-data">
			<div>
				<fm:errors path="userCode" />
				用户编号：
				<fm:input path="userCode" />
				 <font color="red">SDAD</font>
			</div>
			<div>
				<fm:errors path="userName" />
				</br> 用户名称：
				<fm:input path="userName" />
				<br /> <font color="red"></font>
			</div>
			<div>
				<fm:errors path="userPassword" />
				</br> 用户密码：
				<fm:password path="userPassword" />
				<br /> <font color="red"></font>
			</div>
			<%--     确认密码：<fm:input path="ruserPassword" />
			<br /> --%>
			<div>
				<fm:errors path="birthday" />
				</br> 用户生日：
				<fm:input path="birthday" />
				<br /> <font color="red"></font>
			</div>
			<div>
				用户地址：
				<fm:input path="address" />
				<br /> <font color="red"></font>
			</div>
			<div>
				电话：
				<fm:input path="phone" />
				<br /> <font color="red"></font>
			</div>
			<div>
				用户角色：
				<fm:radiobutton path="userRole" value="1" />
				系统管理员
				<fm:radiobutton path="userRole" value="2" />
				经理
				<fm:radiobutton path="userRole" value="3" />
				普通用户<br /> <font color="red"></font>
			</div>
			<!--单文件 证件照：<input type="file" name="a_idPicPath"/><br/> -->
			<!-- 多文件上传 -->
			<div>
				证件照：<input type="file" name="attachs" id="a_idPicPath" /> <br /> <font
					color="red"></font>
			</div>
			<div>
				工作证照片：<input type="file" name="attachs" id="a_workPicPath" /> <br />
				<font color="red"></font>
			</div>
			<input type="submit" name="add" id="add" value="保存">
		</fm:form>
		<%-- <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath }/user/addUserSave">
				<input type="hidden" name="method" value="add">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div>
                    <label for="userCode">用户编码：</label>
                    <input type="text" name="userCode" id="userCode" value=""> 
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="userName">用户名称：</label>
                    <input type="text" name="userName" id="userName" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="userPassword">用户密码：</label>
                    <input type="password" name="userPassword" id="userPassword" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="ruserPassword">确认密码：</label>
                    <input type="password" name="ruserPassword" id="ruserPassword" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label >用户性别：</label>
					<select name="gender" id="gender">
					    <option value="1" selected="selected">男</option>
					    <option value="2">女</option>
					 </select>
                </div>
                <div>
                    <label for="birthday">出生日期：</label>
                    <input type="text" Class="Wdate" id="birthday" name="birthday" 
					readonly="readonly" onclick="WdatePicker();">
					<font color="red"></font>
                </div>
                <div>
                    <label for="phone">用户电话：</label>
                    <input type="text" name="phone" id="phone" value=""> 
					<font color="red"></font>
                </div>
                <div>
                    <label for="address">用户地址：</label>
                   <input name="address" id="address"  value="">
                </div>
             
                <div class="providerAddBtn">
                    <input type="button" name="add" id="add" value="保存" >
					<input type="button" id="back" name="back" value="返回" >
                </div>
            </form> --%>
	</div>
</div>
</section>
<%@include file="../common/foot.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/useradd.js"></script>
