<style lang="less">
  .fileImg{
    border: solid 1px #000;
    padding: ;
  }
</style>
<template>
  <div>
    <Modal
      v-model="showModal"
      height="600"
      width="1200"
      :closable='false'
      :mask-closable="false"
      title="电子档案">
      <div class="box_col" style="height: 600px;overflow: auto">
        <div class="box_row_list">
          <Card v-for="(r,k) of fileGroup" style="min-width:200px;margin: 0 8px">
            <p slot="title">
              <Icon type="ios-film-outline"></Icon>
              {{r.type}}
            </p>
            <div>
              <add-img-list :urlList="r.urlList" :uploadUrl="r.uploadUrl" @removeFile="(mes)=>{removeFile(r,mes)}"
              @addImg="(mes)=>{addImg(r,mes)}"></add-img-list>
            </div>
          </Card>

          <!--<div class="fileImg" v-for="(r,k) of fileGroup">-->
            <!--<h4>{{r.type}}</h4>-->
            <!--<add-img-list :urlList="r.urlList" :uploadUrl="r.uploadUrl" @removeFile="(mes)=>{removeFile(r,mes)}"-->
                          <!--@addImg="(mes)=>{addImg(r,mes)}"></add-img-list>-->
          <!--</div>-->
        </div>

        <!--<Row v-for="(r,k) of fileGroup">-->
          <!--<Col>-->
            <!--<h4>{{r.type}}</h4>-->
            <!--<add-img-list :urlList="r.urlList" :uploadUrl="r.uploadUrl" @removeFile="(mes)=>{removeFile(r,mes)}"-->
                          <!--@addImg="(mes)=>{addImg(r,mes)}"></add-img-list>-->
          <!--</Col>-->
          <!--<Divider/>-->
        <!--</Row>-->
      </div>
      <div slot='footer'>
        <Button type="default" @click="v.util.closeDialog(v)" style="color: #949494">取消</Button>
        <!--v.util.save(v)-->
        <Button type="primary" @click="save">确定</Button>
      </div>
    </Modal>
  </div>
</template>

<script>
  import addImgList from '../../../components/addlistfileImg'

  export default {
    name: "files",
    components: {addImgList},
    data() {
      return {
        v: this,
        showModal: true,
        editMode: false,
        urlList: {cqyx: []},
        fileGroup: {
          dzdDjzFileurl:{type: '机动车登记证书', urlType:'dzdDjzFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
          dzdWszmFileurl:{type: '购置税完税证明', urlType:'dzdWszmFileurl',urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
          dzdFpFileurl:{type: '发票', urlType:'dzdFpFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
          // dzdCchgFileurl:{type: '出场合格证', urlType:'dzdCchgFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
          // dzdJyhgFileurl:{type: '检验合格证', urlType:'dzdJyhgFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
          // dzdXlhgFileurl:{type: '修理合格证', urlType:'dzdXlhgFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
          dzdXszfyFileurl:{type: '行驶证', urlType:'dzdXszfyFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
          dzdCchgFileurl:{type: '道路运输证', urlType:'dzdCchgFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
        },
        // fileGroup: [
        //   {type: '机动车登记证书', urlType:'dzdDjzFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
        //   {type: '购置税完税证明', urlType:'dzdWszmFileurl',urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
        //   {type: '发票', urlType:'dzdFpFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
        //   {type: '出场合格证', urlType:'dzdCchgFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
        //   {type: '检验合格证', urlType:'dzdJyhgFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
        //   {type: '修理合格证', urlType:'dzdXlhgFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
        //   {type: '行驶证', urlType:'dzdXszfyFileurl', urlList: [], uploadUrl: this.apis.upFile + '?targetPath=car'},//
        // ],
        params:{
          id:'',
          dzdDjzFileurl:'',
          dzdWszmFileurl:'',
          dzdFpFileurl:'',
          // dzdCchgFileurl:'',
          // dzdJyhgFileurl:'',
          // dzdXlhgFileurl:'',
          dzdXszfyFileurl:'',
          dzdCchgFileurl:''
        }
      }
    },
    created(){
      this.params.id = this.$parent.choosedItem.id
      console.log(this.$parent.choosedItem);
      for( let key in this.fileGroup ){
        if(key == 'id'){
          this.params.id = this.$parent.choosedItem['id']
        }else {
          if(!this.$parent.choosedItem[key] || this.$parent.choosedItem[key] == ''){
            this.fileGroup[key].urlList = []
          }else {
            this.fileGroup[key].urlList = this.$parent.choosedItem[key].split(',')
          }
          this.params[key] = this.$parent.choosedItem[key]
        }
      }
    },
    methods: {
      removeFile(r,mes) {
        var v = this
        let arr = r.urlList
        r.urlList.forEach((it,index)=>{
          if(it == mes){
            r.urlList.splice(index,1)
            this.params[r.urlType] = r.urlList.join(',')
            return
          }
        })
      },
      addImg(r,mes) {


        r.urlList.push(mes);//将新添加的图片地址存到urlList 里
        this.params[r.urlType] = r.urlList.join(',')//将图片地址数组转成字符串
      },
      save(){
        console.log(this.params);
        this.$http.post('/api/car/dzda',this.params).then(res=>{
          if(res.code == 200){
            this.$parent.componentName = ''
            this.$parent.getPagerList()
          }
        }).catch(err=>{

        })
      }
    }
  }
</script>
