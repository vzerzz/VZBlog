<!-- 赞赏模块 -->
<template>
  <div class="tRewardBox tcommonBox">
    <header>
      <h1>
        <a href="#/DetailShare" target="_blank"> 赞赏 </a>
      </h1>
    </header>
    <section>
      <div>
        <img
          src="static/img/coffee.jpg"
          alt=""
          style="max-width: 20%"
          class="coffee"
        />
      </div>
      <h1>赞赏说明：</h1>
      <p>
        如果我的博客对你有所帮助，你可以请作者喝杯咖啡表示鼓励
        ☕️
      </p>
      <hr />
      <h1>赞赏方式：</h1>
      <el-row :gutter="30">
        <el-col :span="12" class="donate-item">
          <div class="donate-tip">
            <img
              :src="
                rewardData.wechat_image
                  ? rewardData.wechat_image
                  : 'static/img/wx_pay.png'
              "
              :onerror="$store.state.errorImg"
            />
            <span>微信扫一扫，请我喝杯咖啡</span>
          </div>
        </el-col>
      </el-row>
    </section>
  </div>
</template>

<script>
export default {
  data() {
    //选项 / 数据
    return {
      rewardData: "", //赞赏二维码
      tableData: [
      ],
    };
  },
  methods: {
    //事件处理器
    showInitDate: function (date, full) {
      //时间处理
      return initDate(date, full);
    },
  },
  components: {
    //定义组件
  },
  created() {
    //生命周期函数
    var that = this;
  },
};
</script>

<style>
.tRewardBox section {
  padding-bottom: 20px;
}
.tRewardBox section h1 {
  margin: 10px 0;
  font-size: 25px;
  font-weight: 700;
  /*text-align: center;*/
  line-height: 30px;
}
.tRewardBox section p {
  margin: 10px 0;
  line-height: 24px;
}
.tRewardBox section hr {
  background: #ccc;
  margin-bottom: 30px;
}

.tRewardBox .donate-item {
  text-align: center;
  color: #44b549;
}
.tRewardBox .donate-item:last-child {
  text-align: center;
  color: #00a0e9;
}
.tRewardBox .donate-item img {
  width: 100%;
  display: block;
  height: auto;
}
.tRewardBox .donate-item div {
  display: inline-block;
  width: 150px;
  padding: 0 6px;
  text-align: center;
  box-sizing: border-box;
}
.tRewardBox .donate-item div span {
  display: inline-block;
  width: 100%;
  margin: 10px 0;
  text-align: center;
}
.tRewardBox .el-table__body-wrapper {
  overflow: hidden;
}
.el-table--enable-row-hover .el-table__body tr:hover > td {
  background: transparent;
}
</style>
