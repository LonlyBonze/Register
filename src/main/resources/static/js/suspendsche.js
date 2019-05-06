// JavaScript Document

new Vue({	
	el: '#departScheTable',
	data: {
		alertWindowsShow:false,
		alert_tip:'',
		SelectSearchableListShow1:false,
		SelectSearchableListFocus1:false,
		selectedID1:-1,
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
		expert:[],
		SelectDataList1:[]
	},
	mounted(){
		this.get_schedata()
		this.get_tabledata()
	},
	methods: {
		alertensure:function(){
			this.alertWindowsShow=false;
			this.$http.post('updateexpertsche',{
				id:this.schetableid,
				note:this.table_note,
				sche:this.sche_context
			}).then((res)=>{
				if(res.body){
					this.get_tabledata();
					alert("提交成功！")
				}
				else{
					alert("停诊提交失败！")
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
			this.sche_context='';
			for(let i=0;i<this.tableData.length;i++){
				for(let j=0;j<this.tableData[i].rowData.length;j++){
					if(this.tableData[i].rowData[j].work){
						if(this.tableData[i].rowData[j].stop){
							this.sche_context+='2';
						}
						else{
							this.sche_context+='1';
						}
					}
					else{
						if(this.tableData[i].rowData[j].stop){
							this.sche_context+='2';
						}
						else{
							this.sche_context+='0';
						}
					}
				}
			}
			this.alertWindowsShow=true;
			this.alert_tip='是否要对“'+this.table_name+"”提交停诊请求？";
		},
		textchange1:function(){
			this.selectedID1=-1
			this.searchlist1()
		},
		searchlist1:function(){
			var tmplist=[]
			if(this.searchValue1==''){
				this.SelectDataList1 = this.expert
			}
			else{
				var search=this.selectedValue1
				this.expert.map(function(item){
					if(item.employeename.search(search)!=-1){
						tmplist.push(item)
					}
				})
				this.SelectDataList1=tmplist
			}
		},
		SelectedLi1:function(list){
			this.selectedID1=list.id
			this.selectedValue1=list.employeename
			this.SelectSearchableListFocus1=false;
		},
		SelectSearchableEnter1:function(){
			this.SelectSearchableListFocus1=true
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
		SelectSearchableInputFocus1:function(){
			this.SelectSearchableListShow1=true
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
			this.table_editname='[停诊]:'+items.expertschename;
			this.sche_context=items.expertsche;
			this.schetableid=items.expertscheid;
			this.table_name=items.expertschename;
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
                this.expert=response.body
                this.searchlist1()
            }, function(err){
                console.log(err)
            });
		},
		clear_table:function(){
			this.table_editname='[新建值班表]'
			for(var i=0;i<3;i++){
				for(var j=0;j<7;j++){
					this.tableData[i].rowData[j].work=false
					this.tableData[i].rowData[j].stop=false
					this.tableData[i].rowData[j].cont=''
				}
			}
		},
		work00:function(){
			if(this.tableData[0].rowData[0].work){
				this.tableData[0].rowData[0].stop=!this.tableData[0].rowData[0].stop;
				if(this.tableData[0].rowData[0].stop){
					this.tableData[0].rowData[0].cont='停诊'
				}
				else{
					this.tableData[0].rowData[0].cont='值班'
				}
			}
		},
		work01:function(){
			if(this.tableData[0].rowData[1].work){
				this.tableData[0].rowData[1].stop=!this.tableData[0].rowData[1].stop;
				if(this.tableData[0].rowData[1].stop){
					this.tableData[0].rowData[1].cont='停诊'
				}
				else{
					this.tableData[0].rowData[1].cont='值班'
				}
			}
		},
		work02:function(){
			if(this.tableData[0].rowData[2].work){
				this.tableData[0].rowData[2].stop=!this.tableData[0].rowData[2].stop;
				if(this.tableData[0].rowData[2].stop){
					this.tableData[0].rowData[2].cont='停诊'
				}
				else{
					this.tableData[0].rowData[2].cont='值班'
				}
			}
		},
		work03:function(){
			if(this.tableData[0].rowData[3].work){
				this.tableData[0].rowData[3].stop=!this.tableData[0].rowData[3].stop;
				if(this.tableData[0].rowData[3].stop){
					this.tableData[0].rowData[3].cont='停诊'
				}
				else{
					this.tableData[0].rowData[3].cont='值班'
				}
			}
		},
		work04:function(){
			if(this.tableData[0].rowData[4].work){
				this.tableData[0].rowData[4].stop=!this.tableData[0].rowData[4].stop;
				if(this.tableData[0].rowData[4].stop){
					this.tableData[0].rowData[4].cont='停诊'
				}
				else{
					this.tableData[0].rowData[4].cont='值班'
				}
			}
		},
		work05:function(){
			if(this.tableData[0].rowData[5].work){
				this.tableData[0].rowData[5].stop=!this.tableData[0].rowData[5].stop;
				if(this.tableData[0].rowData[5].stop){
					this.tableData[0].rowData[5].cont='停诊'
				}
				else{
					this.tableData[0].rowData[5].cont='值班'
				}
			}
		},
		work06:function(){
			if(this.tableData[0].rowData[6].work){
				this.tableData[0].rowData[6].stop=!this.tableData[0].rowData[6].stop;
				if(this.tableData[0].rowData[6].stop){
					this.tableData[0].rowData[6].cont='停诊'
				}
				else{
					this.tableData[0].rowData[6].cont='值班'
				}
			}
		},
		work10:function(){
			if(this.tableData[1].rowData[0].work){
				this.tableData[1].rowData[0].stop=!this.tableData[1].rowData[0].stop;
				if(this.tableData[1].rowData[0].stop){
					this.tableData[1].rowData[0].cont='停诊'
				}
				else{
					this.tableData[1].rowData[0].cont='值班'
				}
			}
		},
		work11:function(){
			if(this.tableData[1].rowData[1].work){
				this.tableData[1].rowData[1].stop=!this.tableData[1].rowData[1].stop;
				if(this.tableData[1].rowData[1].stop){
					this.tableData[1].rowData[1].cont='停诊'
				}
				else{
					this.tableData[1].rowData[1].cont='值班'
				}
			}
		},
		work12:function(){
			if(this.tableData[1].rowData[2].work){
				this.tableData[1].rowData[2].stop=!this.tableData[1].rowData[2].stop;
				if(this.tableData[1].rowData[2].stop){
					this.tableData[1].rowData[2].cont='停诊'
				}
				else{
					this.tableData[1].rowData[2].cont='值班'
				}
			}
		},
		work13:function(){
			if(this.tableData[1].rowData[3].work){
				this.tableData[1].rowData[3].stop=!this.tableData[1].rowData[3].stop;
				if(this.tableData[1].rowData[3].stop){
					this.tableData[1].rowData[3].cont='停诊'
				}
				else{
					this.tableData[1].rowData[3].cont='值班'
				}
			}
		},
		work14:function(){
			if(this.tableData[1].rowData[4].work){
				this.tableData[1].rowData[4].stop=!this.tableData[1].rowData[4].stop;
				if(this.tableData[1].rowData[4].stop){
					this.tableData[1].rowData[4].cont='停诊'
				}
				else{
					this.tableData[1].rowData[4].cont='值班'
				}
			}
		},
		work15:function(){
			if(this.tableData[1].rowData[5].work){
				this.tableData[1].rowData[5].stop=!this.tableData[1].rowData[5].stop;
				if(this.tableData[1].rowData[5].stop){
					this.tableData[1].rowData[5].cont='停诊'
				}
				else{
					this.tableData[1].rowData[5].cont='值班'
				}
			}
		},
		work16:function(){
			if(this.tableData[1].rowData[6].work){
				this.tableData[1].rowData[6].stop=!this.tableData[1].rowData[6].stop;
				if(this.tableData[1].rowData[6].stop){
					this.tableData[1].rowData[6].cont='停诊'
				}
				else{
					this.tableData[1].rowData[6].cont='值班'
				}
			}
		},
		work20:function(){
			if(this.tableData[2].rowData[0].work){
				this.tableData[2].rowData[0].stop=!this.tableData[2].rowData[0].stop;
				if(this.tableData[2].rowData[0].stop){
					this.tableData[2].rowData[0].cont='停诊'
				}
				else{
					this.tableData[2].rowData[0].cont='值班'
				}
			}
		},
		work21:function(){
			if(this.tableData[2].rowData[1].work){
				this.tableData[2].rowData[1].stop=!this.tableData[2].rowData[1].stop;
				if(this.tableData[2].rowData[1].stop){
					this.tableData[2].rowData[1].cont='停诊'
				}
				else{
					this.tableData[2].rowData[1].cont='值班'
				}
			}
		},
		work22:function(){
			if(this.tableData[2].rowData[2].work){
				this.tableData[2].rowData[2].stop=!this.tableData[2].rowData[2].stop;
				if(this.tableData[2].rowData[2].stop){
					this.tableData[2].rowData[2].cont='停诊'
				}
				else{
					this.tableData[2].rowData[2].cont='值班'
				}
			}
		},
		work23:function(){
			if(this.tableData[2].rowData[3].work){
				this.tableData[2].rowData[3].stop=!this.tableData[2].rowData[3].stop;
				if(this.tableData[2].rowData[3].stop){
					this.tableData[2].rowData[3].cont='停诊'
				}
				else{
					this.tableData[2].rowData[3].cont='值班'
				}
			}
		},
		work24:function(){
			if(this.tableData[2].rowData[4].work){
				this.tableData[2].rowData[4].stop=!this.tableData[2].rowData[4].stop;
				if(this.tableData[2].rowData[4].stop){
					this.tableData[2].rowData[4].cont='停诊'
				}
				else{
					this.tableData[2].rowData[4].cont='值班'
				}
			}
		},
		work25:function(){
			if(this.tableData[2].rowData[5].work){
				this.tableData[2].rowData[5].stop=!this.tableData[2].rowData[5].stop;
				if(this.tableData[2].rowData[5].stop){
					this.tableData[2].rowData[5].cont='停诊'
				}
				else{
					this.tableData[2].rowData[5].cont='值班'
				}
			}
		},
		work26:function(){
			if(this.tableData[2].rowData[6].work){
				this.tableData[2].rowData[6].stop=!this.tableData[2].rowData[6].stop;
				if(this.tableData[2].rowData[6].stop){
					this.tableData[2].rowData[6].cont='停诊'
				}
				else{
					this.tableData[2].rowData[6].cont='值班'
				}
			}
		}
	}
})