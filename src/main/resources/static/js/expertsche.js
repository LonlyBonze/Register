// JavaScript Document

new Vue({	
	el: '#departScheTable',
	data: {
		updatestatus:false,
		table_output:true,
		alertWindowsShow:false,
		alert_tip:'',
		button_text:'新建',
		import_button_text:'导入模板',
		SelectSearchableListShow0:false,
		SelectSearchableListFocus0:false,
		SelectSearchableListShow1:false,
		SelectSearchableListFocus1:false,
		selectedID0:-1,
		selectedID1:-1,
		selectedValue0:'',
		selectedValue1:'',
		table_name:'',
		table_note:'',
		schetableid:-1,
		searchtablename:'',
		records_num:0,
		records_page:0,
		page_index:1,
		jump_page:1,
		sche_context:'',
		consult_tip: '',
		name_tip: '',
		table_editname:'[新建值班表]',
		tableData: [
			{
				row: 1,
				rowData: [
					{
						col: 1,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 2,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 3,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 4,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 5,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 6,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 7,
						work: false,
						stop: false,
						cont: ''
					}
				]
			},
			{
				row: 2,
				rowData: [
					{
						col: 1,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 2,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 3,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 4,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 5,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 6,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 7,
						work: false,
						stop: false,
						cont: ''
					}
				]
			},
			{
				row: 3,
				rowData: [
					{
						col: 1,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 2,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 3,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 4,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 5,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 6,
						work: false,
						stop: false,
						cont: ''
					},
					{
						col: 7,
						work: false,
						stop: false,
						cont: ''
					}
				]
			}
		],
		tableDataList:[],
		tableSearchList:[],
		tableDataShowList:[],
		employee:[],
		SelectDataList0:[],
		SelectDataList1:[]
	},
	mounted(){
		this.get_schedata()
		this.get_tabledata()
	},
	methods: {
		alertensure:function(){
			this.alertWindowsShow=false;
			this.$http.post('deleteexpertsche',{
				id:this.schetableid
			}).then((res)=>{
				if(res.body){
					this.get_tabledata();
					alert("删除成功！")
				}
				else{
					alert("删除排班表失败！")
				}
			});
		},
		alertcancel:function(){
			this.alertWindowsShow=false
		},
		searchlistget:function(){
			var tmplist=[]
			var searchkey=this.searchtablename
			if(this.selectedID1!=-1){
				if(searchkey!=''){
					for(var i=0;i<this.tableDataList.length;i++){
						if(this.tableDataList[i].doctorid==this.selectedID1&&this.tableDataList[i].expertschename.search(searchkey)!=-1){
							tmplist.push(this.tableDataList[i])
						}
					}
					this.jump_page=1;
					this.page_index=1;
					this.tableSearchList=tmplist
					this.recordsupdate()
					this.setPageList()
				}
				else{
					for(var i=0;i<this.tableDataList.length;i++){
						if(this.tableDataList[i].doctorid==this.selectedID1){
							tmplist.push(this.tableDataList[i])
						}
					}
					this.jump_page=1;
					this.page_index=1;
					this.tableSearchList=tmplist
					this.recordsupdate()
					this.setPageList()
				}
			}
			else{
				if(searchkey!=''){
					for(var i=0;i<this.tableDataList.length;i++){
						if(this.tableDataList[i].expertschename.search(searchkey)!=-1){
							tmplist.push(this.tableDataList[i])
						}
					}
					this.page_index=1;
					this.jump_page=1;
					this.tableSearchList=tmplist
					this.setPageList()
					this.recordsupdate()
				}
			}
		},
		searchlistreover:function(){
			this.selectedID1=-1
			this.selectedValue1=''
			this.searchtablename=''
			this.tableSearchList=this.tableDataList
			this.recordsupdate()
			this.setPageList()
		},
		getlastpage:function(){
			this.page_index=this.records_page
			this.jump_page=this.page_index
			this.setPageList()
		},
		getnextpage:function(){
			if(this.page_index<this.records_page){
				this.page_index++
				this.jump_page=this.page_index
				this.setPageList()
			}
		},
		jumppage:function(){
			if(this.jump_page>0&&this.jump_page<=this.records_page){
				this.page_index=this.jump_page
				this.setPageList()
			}
		},
		getfontpage:function(){
			if(this.page_index>1){
				this.page_index--
				this.jump_page=this.page_index
				this.setPageList()
			}
		},
		getfirstpage:function(){
			this.page_index=1
			this.jump_page=this.page_index
			this.setPageList()
		},
		add_table:function(){
			if(this.updatestatus){
				this.sche_context='';
				for(let i=0;i<this.tableData.length;i++){
					for(let j=0;j<this.tableData[i].rowData.length;j++){
						if(this.tableData[i].rowData[j].work){
							this.sche_context+='1'
						}
						else if(this.tableData[i].rowData[j].stop){
							this.sche_context+='2'
						}
						else{
							this.sche_context+='0'
						}
					}
				}
				this.$http.post('updateexpertsche',{
					id:this.schetableid,
					sche:this.sche_context,
					note:this.table_note
				}).then((res)=>{
					if(res.body){
						this.get_tabledata();
						alert("修改成功！")
					}
					else{
						alert("排班表修改失败！")
					}
				});
				this.updatestatus=false;
				this.selectedID0=-1;
				this.selectedValue0='';
				this.table_name='';
				this.table_note='';
				this.sche_context='';
				this.clear_table();
				this.button_text='新建';
				this.import_button_text='导入模板';
			}
			else{
				if(this.selectedID0==-1){
					this.consult_tip='所选专家不能为空';
				}
				else{
					this.consult_tip='';
				}
				if(this.table_name==''){
					this.name_tip='排班表名称不能为空';
				}
				else{
					this.name_tip='';
				}
				if(this.selectedID0!=-1&&this.table_name!=''){
					this.sche_context='';
					for(let i=0;i<this.tableData.length;i++){
						for(let j=0;j<this.tableData[i].rowData.length;j++){
							if(this.tableData[i].rowData[j].work){
								this.sche_context+='1'
							}
							else if(this.tableData[i].rowData[j].stop){
								this.sche_context+='2'
							}
							else{
								this.sche_context+='0'
							}
						}
					}
					this.$http.post('isthererepeatexpert',{
						name:this.table_name}).then((res)=>{
						if(res.body){
							alert("排班表名称重复，插入失败！");
						}
						else{
							this.$http.post('insertexperttable',{
								expertschename:this.table_name,
								doctorid:this.selectedID0,
								expertsche:this.sche_context,
								note:this.table_note
							}).then((res)=>{
								if(res.body){
									this.get_tabledata();
									alert("添加成功！");
									this.selectedID0=-1;
									this.selectedValue0='';
									this.table_name='';
									this.table_note='';
									this.sche_context='';
									this.clear_table();
								}
								else{
									alert("排班表添加失败！")
								}
							})
						}
					})
				}
			}
		},
		textchange0:function(){
			this.selectedID0=-1
			this.searchlist0()
		},
		textchange1:function(){
			this.selectedID1=-1
			this.searchlist1()
		},
		searchlist0:function(){
			var tmplist=[]
			if(this.selectedValue0==''){
				this.SelectDataList0 = this.employee
			}
			else{
				var search=this.selectedValue0
				this.employee.map(function(item){
					if(item.employeename.search(search)!=-1){
						tmplist.push(item)
					}
				})
				this.SelectDataList0=tmplist
			}
		},
		searchlist1:function(){
			var tmplist=[]
			if(this.searchValue1==''){
				this.SelectDataList1 = this.employee
			}
			else{
				var search=this.selectedValue1
				this.employee.map(function(item){
					if(item.employeename.search(search)!=-1){
						tmplist.push(item)
					}
				})
				this.SelectDataList1=tmplist
			}
		},
		SelectedLi0:function(list){
			this.selectedID0=list.id
			this.selectedValue0=list.employeename
			this.SelectSearchableListFocus0=false;
		},
		SelectedLi1:function(list){
			this.selectedID1=list.id
			this.selectedValue1=list.employeename
			this.SelectSearchableListFocus1=false;
		},
		SelectSearchableEnter0:function(){
			this.SelectSearchableListFocus0=true
		},
		SelectSearchableEnter1:function(){
			this.SelectSearchableListFocus1=true
		},
		SelectSearchableLeave0:function(){
			this.SelectSearchableListFocus0=false
			if(!this.SelectSearchableListShow0){
				if(this.selectedID0==-1){
					this.selectedValue0=''
					this.searchlist0()
				}
			}
		},
		SelectSearchableLeave1:function(){
			this.SelectSearchableListFocus1=false
			if(!this.SelectSearchableListShow1){
				if(this.selectedID1==-1){
					this.selectedValue1=''
					this.searchlist1()
				}
			}
		},
		SelectSearchableInputFocus0:function(){
			this.SelectSearchableListShow0=true
		},
		SelectSearchableInputFocus1:function(){
			this.SelectSearchableListShow1=true
		},
		SelectSearchableInputBlur0:function(){
			this.SelectSearchableListShow0=false
			if(!this.SelectSearchableListFocus0){
				if(this.selectedID0==-1){
					this.selectedValue0=''
					this.searchlist0()
				}
			}
		},
		SelectSearchableInputBlur1:function(){
			this.SelectSearchableListShow1=false
			if(!this.SelectSearchableListFocus1){
				if(this.selectedID1==-1){
					this.selectedValue1=''
					this.searchlist1()
				}
			}
		},
		setPageList:function(){
			var tmplist=[]
			for(let i=0;i<15&&(15*(this.page_index-1)+i<this.tableSearchList.length);i++){
				tmplist.push(this.tableSearchList[15*(this.page_index-1)+i])
			}
			this.tableDataShowList=tmplist
		},
		showthistable:function(items){
			this.table_editname='[查看]:'+items.expertschename;
			this.sche_context=items.expertsche;
			this.showtablesche()
		},
		showtablesche:function(){
			for(let i=0;i<3;i++){
				for(let j=0;j<7;j++){
					if(this.sche_context.charAt(i*7+j)=='1'){
						this.tableData[i].rowData[j].stop=false
						this.tableData[i].rowData[j].work=true
						this.tableData[i].rowData[j].cont='值班'
					}
					else if(this.sche_context.charAt(i*7+j)=='2'){
						this.tableData[i].rowData[j].work=false
						this.tableData[i].rowData[j].stop=true
						this.tableData[i].rowData[j].cont='停诊'
					}
					else{
						this.tableData[i].rowData[j].work=false
						this.tableData[i].rowData[j].stop=false
						this.tableData[i].rowData[j].cont=''
					}
				}
			}
		},
		recordsupdate:function(){
			this.records_num=this.tableSearchList.length
			this.records_page=this.records_num%15>0?(this.records_num-this.records_num%15)/15+1:this.records_num/15
		},
		get_tabledata:function(){
			this.$http.get('tableDataExpert').then((response)=>{
				this.tableDataList=response.body
				this.tableSearchList=this.tableDataList
				this.recordsupdate()
				this.setPageList()
			},function(err){
				console.log(err)
			});
		},
		get_schedata:function(){
			this.$http.get('scheDataExpert').then((response)=>{
                this.employee=response.body
                this.searchlist0()
                this.searchlist1()
            }, function(err){
                console.log(err)
            });
		},
		import_page:function(){
			if(this.updatestatus){
				this.updatestatus=false;
				this.selectedID0=-1;
				this.selectedValue0='';
				this.table_name='';
				this.table_note='';
				this.sche_context='';
				this.clear_table();
				this.button_text='新建';
				this.import_button_text='导入模板';
			}
			else{
				window.location.href="expertScheImport"
			}
		},
		clear_table:function(){
			if(!this.updatestatus){
				this.table_editname='[新建值班表]'
			}
			for(var i=0;i<3;i++){
				for(var j=0;j<7;j++){
					this.tableData[i].rowData[j].work=false
					this.tableData[i].rowData[j].stop=false
					this.tableData[i].rowData[j].cont=''
				}
			}
		},
		schelistupdate:function(items){
			this.updatestatus=true;
			this.schetableid=items.expertscheid;
			this.selectedID0=items.doctorid;
			this.selectedValue0=items.doctorname;
			this.table_name=items.expertschename;
			this.table_note=items.note;
			this.sche_context=items.expertsche;
			this.table_editname='[修改]:'+items.expertschename;
			this.button_text='修改';
			this.import_button_text='返回';
			this.showtablesche()
		},
		schelistdelete:function(items){
			this.schetableid=items.expertscheid;
			this.alertWindowsShow=true;
			this.alert_tip='确定要删除“'+items.expertschename+"”吗？";
		},
		schelistoutput:function(){
			this.printtable();
			this.table_output=true;
			this.table_editname='[新建排班表]';
			this.clear_table();
		},
		printpreload:function(items){
			this.table_editname=items.expertschename;
			this.table_output=false;
			this.sche_context=items.expertsche;
			this.showtablesche();
		},
		printtable:function(){
			let subOutputRankPrint = document.getElementById('printtable');
            console.log(subOutputRankPrint.innerHTML);
            let newContent =subOutputRankPrint.innerHTML;
            let oldContent = document.body.innerHTML;
            document.body.innerHTML = newContent;
            window.print();
            window.location.reload();
            document.body.innerHTML = oldContent;
		},
		work00:function(){
			this.tableData[0].rowData[0].work = !this.tableData[0].rowData[0].work;
			this.tableData[0].rowData[0].stop = false;
			if(this.tableData[0].rowData[0].work){
				this.tableData[0].rowData[0].cont='值班'
			}
			else{
				this.tableData[0].rowData[0].cont=''
			}
		},
		work01:function(){
			this.tableData[0].rowData[1].stop = false;
			this.tableData[0].rowData[1].work = !this.tableData[0].rowData[1].work;
			if(this.tableData[0].rowData[1].work){
				this.tableData[0].rowData[1].cont='值班'
			}
			else{
				this.tableData[0].rowData[1].cont=''
			}
		},
		work02:function(){
			this.tableData[0].rowData[2].stop = false;
			this.tableData[0].rowData[2].work = !this.tableData[0].rowData[2].work;
			if(this.tableData[0].rowData[2].work){
				this.tableData[0].rowData[2].cont='值班'
			}
			else{
				this.tableData[0].rowData[2].cont=''
			}
		},
		work03:function(){
			this.tableData[0].rowData[3].stop = false;
			this.tableData[0].rowData[3].work = !this.tableData[0].rowData[3].work;
			if(this.tableData[0].rowData[3].work){
				this.tableData[0].rowData[3].cont='值班'
			}
			else{
				this.tableData[0].rowData[3].cont=''
			}
		},
		work04:function(){
			this.tableData[0].rowData[4].stop = false;
			this.tableData[0].rowData[4].work = !this.tableData[0].rowData[4].work;
			if(this.tableData[0].rowData[4].work){
				this.tableData[0].rowData[4].cont='值班'
			}
			else{
				this.tableData[0].rowData[4].cont=''
			}
		},
		work05:function(){
			this.tableData[0].rowData[5].stop = false;
			this.tableData[0].rowData[5].work = !this.tableData[0].rowData[5].work;
			if(this.tableData[0].rowData[5].work){
				this.tableData[0].rowData[5].cont='值班'
			}
			else{
				this.tableData[0].rowData[5].cont=''
			}
		},
		work06:function(){
			this.tableData[0].rowData[6].stop = false;
			this.tableData[0].rowData[6].work = !this.tableData[0].rowData[6].work;
			if(this.tableData[0].rowData[6].work){
				this.tableData[0].rowData[6].cont='值班'
			}
			else{
				this.tableData[0].rowData[6].cont=''
			}
		},
		work10:function(){
			this.tableData[1].rowData[0].stop = false;
			this.tableData[1].rowData[0].work = !this.tableData[1].rowData[0].work;
			if(this.tableData[1].rowData[0].work){
				this.tableData[1].rowData[0].cont='值班'
			}
			else{
				this.tableData[1].rowData[0].cont=''
			}
		},
		work11:function(){
			this.tableData[1].rowData[1].stop = false;
			this.tableData[1].rowData[1].work = !this.tableData[1].rowData[1].work;
			if(this.tableData[1].rowData[1].work){
				this.tableData[1].rowData[1].cont='值班'
			}
			else{
				this.tableData[1].rowData[1].cont=''
			}
		},
		work12:function(){
			this.tableData[1].rowData[2].stop = false;
			this.tableData[1].rowData[2].work = !this.tableData[1].rowData[2].work;
			if(this.tableData[1].rowData[2].work){
				this.tableData[1].rowData[2].cont='值班'
			}
			else{
				this.tableData[1].rowData[2].cont=''
			}
		},
		work13:function(){
			this.tableData[1].rowData[3].stop = false;
			this.tableData[1].rowData[3].work = !this.tableData[1].rowData[3].work;
			if(this.tableData[1].rowData[3].work){
				this.tableData[1].rowData[3].cont='值班'
			}
			else{
				this.tableData[1].rowData[3].cont=''
			}
		},
		work14:function(){
			this.tableData[1].rowData[4].stop = false;
			this.tableData[1].rowData[4].work = !this.tableData[1].rowData[4].work;
			if(this.tableData[1].rowData[4].work){
				this.tableData[1].rowData[4].cont='值班'
			}
			else{
				this.tableData[1].rowData[4].cont=''
			}
		},
		work15:function(){
			this.tableData[1].rowData[5].stop = false;
			this.tableData[1].rowData[5].work = !this.tableData[1].rowData[5].work;
			if(this.tableData[1].rowData[5].work){
				this.tableData[1].rowData[5].cont='值班'
			}
			else{
				this.tableData[1].rowData[5].cont=''
			}
		},
		work16:function(){
			this.tableData[1].rowData[6].stop = false;
			this.tableData[1].rowData[6].work = !this.tableData[1].rowData[6].work;
			if(this.tableData[1].rowData[6].work){
				this.tableData[1].rowData[6].cont='值班'
			}
			else{
				this.tableData[1].rowData[6].cont=''
			}
		},
		work20:function(){
			this.tableData[2].rowData[0].stop = false;
			this.tableData[2].rowData[0].work = !this.tableData[2].rowData[0].work;
			if(this.tableData[2].rowData[0].work){
				this.tableData[2].rowData[0].cont='值班'
			}
			else{
				this.tableData[2].rowData[0].cont=''
			}
		},
		work21:function(){
			this.tableData[2].rowData[1].stop = false;
			this.tableData[2].rowData[1].work = !this.tableData[2].rowData[1].work;
			if(this.tableData[2].rowData[1].work){
				this.tableData[2].rowData[1].cont='值班'
			}
			else{
				this.tableData[2].rowData[1].cont=''
			}
		},
		work22:function(){
			this.tableData[2].rowData[2].stop = false;
			this.tableData[2].rowData[2].work = !this.tableData[2].rowData[2].work;
			if(this.tableData[2].rowData[2].work){
				this.tableData[2].rowData[2].cont='值班'
			}
			else{
				this.tableData[2].rowData[2].cont=''
			}
		},
		work23:function(){
			this.tableData[2].rowData[3].stop = false;
			this.tableData[2].rowData[3].work = !this.tableData[2].rowData[3].work;
			if(this.tableData[2].rowData[3].work){
				this.tableData[2].rowData[3].cont='值班'
			}
			else{
				this.tableData[2].rowData[3].cont=''
			}
		},
		work24:function(){
			this.tableData[2].rowData[4].stop = false;
			this.tableData[2].rowData[4].work = !this.tableData[2].rowData[4].work;
			if(this.tableData[2].rowData[4].work){
				this.tableData[2].rowData[4].cont='值班'
			}
			else{
				this.tableData[2].rowData[4].cont=''
			}
		},
		work25:function(){
			this.tableData[2].rowData[5].stop = false;
			this.tableData[2].rowData[5].work = !this.tableData[2].rowData[5].work;
			if(this.tableData[2].rowData[5].work){
				this.tableData[2].rowData[5].cont='值班'
			}
			else{
				this.tableData[2].rowData[5].cont=''
			}
		},
		work26:function(){
			this.tableData[2].rowData[6].stop = false;
			this.tableData[2].rowData[6].work = !this.tableData[2].rowData[6].work;
			if(this.tableData[2].rowData[6].work){
				this.tableData[2].rowData[6].cont='值班'
			}
			else{
				this.tableData[2].rowData[6].cont=''
			}
		}
	}
})