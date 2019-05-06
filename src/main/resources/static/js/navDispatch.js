// JavaScript Document


new Vue({
	el: '#nav_button_list',
	data: {
		iframe_path: 'hello',
		init_path: '&nbsp;&nbsp;&nbsp;🏠<a href="index">首页</a>',
		view_path: '&nbsp;&nbsp;&nbsp;🏠<a href="index">首页</a>',
		baseInf: false,
		scheMan: false,
		inneMag: false,
		searCal: false
	},
	methods:{
		reg_click:function(){
			this.baseInf=this.scheMan=this.inneMag=this.searCal=false
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>挂号登记</font>'
		},
		inf_click:function(){
			this.baseInf=!this.baseInf
			this.scheMan=this.inneMag=this.searCal=false
		},
		sch_click:function(){
			this.scheMan=!this.scheMan
			this.baseInf=this.inneMag=this.searCal=false
		},
		inn_click:function(){
			this.inneMag=!this.inneMag
			this.baseInf=this.scheMan=this.searCal=false
		},
		cal_click:function(){
			this.searCal=!this.searCal
			this.baseInf=this.scheMan=this.inneMag=false
		},
		innerHtml21:function(){
			this.iframe_path = 'test'
			this.view_path = this.init_path+'<font color="#0099FF">>基本信息>挂号类别</font>'
		},
		innerHtml22:function(){
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>基本信息>收费类别</font>'
		},
		innerHtml23:function(){
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>基本信息>医生职称</font>'
		},
		innerHtml24:function(){
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>基本信息>科室管理</font>'
		},
		innerHtml31:function(){
			this.iframe_path = "departScheEx"
			this.view_path = this.init_path+'<font color="#0099FF">>排班管理>专科排班模板</font>'
		},
		innerHtml32:function(){
			this.iframe_path = "expertScheEx"
			this.view_path = this.init_path+'<font color="#0099FF">>排班管理>专家排班模板</font>'
		},
		innerHtml33:function(){
			this.iframe_path = "departSche"
			this.view_path = this.init_path+'<font color="#0099FF">>排班管理>专科排班</font>'
		},
		innerHtml34:function(){
			this.iframe_path = "expertSche"
			this.view_path = this.init_path+'<font color="#0099FF">>排班管理>专家排班</font>'
		},
		innerHtml35:function(){
			this.iframe_path = "suspendSche"
			this.view_path = this.init_path+'<font color="#0099FF">>排班管理>医生停诊管理</font>'
		},
		innerHtml41:function(){
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>内部管理>个人信息</font>'
		},
		innerHtml42:function(){
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>内部管理>挂号员管�?/font>'
		},
		innerHtml51:function(){
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>查询统计>日结报告</font>'
		},
		innerHtml52:function(){
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>查询统计>医生诊金提成报表</font>'
		},
		innerHtml53:function(){
			this.iframe_path = "test"
			this.view_path = this.init_path+'<font color="#0099FF">>查询统计>挂号员日结汇总表</font>'
		}
	}
})