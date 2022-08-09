
   layui.use('table', function(){
	  var table = layui.table;
	  var Usermc = $("#UserMC").val();
	  table.render({
	    elem: '#test'
	    ,url:"servlet/OutStopServlet?fun=selectuserinfo&usermc=" + Usermc
	    ,toolbar: '#toolbarDemo'
	    ,title: '用户数据表'
	    ,totalRow: true
	    ,page: true/*开启分页*/
	    ,cols: [[
	       {type: 'checkbox', fixed: 'left',align:'center',hide:true}
	      ,{field:'userMC', title:'用户名', width:120, edit: 'text',align:'center', sort: true}
	      ,{field:'userTypeID',hide:true, title:'用户类型id', width:0,align:'center', sort: true}
	      ,{field:'password',hide:true, title:'密码', width:0,align:'center', sort: true}
	      ,{field:'phonenumber', title:'手机号', width:180, edit: 'text',align:'center', sort: true}
	      ,{field:'site', title:'地址', width:300, edit: 'text',align:'center', sort: true}
	    ]]
	    ,request: {
		     pageName: 'currentPage' //页码的参数名称，默认：page
		    ,limitName: 'pageSize' //每页数据量的参数名，默认：limit
		  }
	    ,response: {
		    statusName: 'success' //规定数据状态的字段名称，默认：code
		    ,statusCode: true //规定成功的状态码，默认：0
		    ,countName: 'totalRows' //规定数据总数的字段名称，默认：count
		    ,dataName: 'data' //规定数据列表的字段名称，默认：data
		  }
	  });
	  /*刷新*/
	$("#sxin").click(function () {
        table.reload("test");
    });
    }); 
	/*模糊查询*/
	$("#chax").click(function(){
	    var UserMC = $("#UserMC").val();
	    window.location.href="servlet/OutStopServlet?fun=selectuser&usermc=" + UserMC;
	});


