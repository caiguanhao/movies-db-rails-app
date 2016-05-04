$(function() {
  if ($('[data-city-select]').length === 0) {
    return;
  }

  var provinceSelector, provinceSelectorWrapper, citySelector, citySelectorWrapper;

  var makeSelect = function(name, firstItem, data) {
    var select = $('<select />', { name: name, class: 'form-control' });
    if (firstItem !== null) select.append('<option value="">' + firstItem + '</option>');
    var isArray = (data instanceof Array);
    $.each(data, function(a, b) {
      if (isArray) {
        select.append('<option value="' + b + '">' + b + '</option>');
      } else {
        select.append('<option value="' + a + '">' + a + '</option>');
      }
    });
    return select;
  };

  var makeSelector = function(selector, districts) {
    var target = $($(selector).data('city-select'));
    provinceSelector = makeSelect('province', '请选择地区', districts);
    provinceSelectorWrapper = $('<div class="col-xs-6" />').append(provinceSelector);
    $(selector).append(provinceSelectorWrapper);
    provinceSelector.change(function() {
      $('option[value=""]', this).remove();
      if (citySelector) {
        citySelector.remove();
        citySelector = null;
      }
      if (citySelectorWrapper) {
        citySelectorWrapper.remove();
        citySelectorWrapper = null;
      }
      var province = provinceSelector.val();
      target.val(province);
      var cities = districts[province];
      if (cities instanceof Array && cities.length > 0 && cities[0] !== province) {
        citySelector = makeSelect('city', null, cities);
        citySelectorWrapper = $('<div class="col-xs-6" />').append(citySelector);
        $(selector).append(citySelectorWrapper);
        citySelector.change(function() {
          target.val(province + ' ' + citySelector.val());
        }).trigger('change');
      }
    });
    var defaults = target.val().split(' ');
    var province = defaults[0];
    var city = defaults[1];
    if (province) {
      provinceSelector.val(province).trigger('change');
    }
    if (city && citySelector) {
      citySelector.val(city).trigger('change');
    }
  };

  makeSelector('[data-city-select]', {
    "北京": [
      "北京"
    ],
    "天津": [
      "天津"
    ],
    "河北": [
      "石家庄",
      "唐山",
      "秦皇岛",
      "邯郸",
      "邢台",
      "保定",
      "张家口",
      "承德",
      "沧州",
      "廊坊",
      "衡水"
    ],
    "山西": [
      "太原",
      "大同",
      "阳泉",
      "长治",
      "晋城",
      "朔州",
      "晋中",
      "运城",
      "忻州",
      "临汾",
      "吕梁"
    ],
    "内蒙古": [
      "呼和浩特",
      "包头",
      "乌海",
      "赤峰",
      "通辽",
      "鄂尔多斯",
      "呼伦贝尔",
      "巴彦淖尔",
      "乌兰察布",
      "兴安",
      "锡林郭勒",
      "阿拉善"
    ],
    "辽宁": [
      "沈阳",
      "大连",
      "鞍山",
      "抚顺",
      "本溪",
      "丹东",
      "锦州",
      "营口",
      "阜新",
      "辽阳",
      "盘锦",
      "铁岭",
      "朝阳",
      "葫芦岛"
    ],
    "吉林": [
      "长春",
      "吉林",
      "四平",
      "辽源",
      "通化",
      "白山",
      "松原",
      "白城",
      "延边朝鲜族"
    ],
    "黑龙江": [
      "哈尔滨",
      "齐齐哈尔",
      "鸡西",
      "鹤岗",
      "双鸭山",
      "大庆",
      "伊春",
      "佳木斯",
      "七台河",
      "牡丹江",
      "黑河",
      "绥化",
      "大兴安岭"
    ],
    "上海": [
      "上海"
    ],
    "江苏": [
      "南京",
      "无锡",
      "徐州",
      "常州",
      "苏州",
      "南通",
      "连云港",
      "淮安",
      "盐城",
      "扬州",
      "镇江",
      "泰州",
      "宿迁"
    ],
    "浙江": [
      "杭州",
      "宁波",
      "温州",
      "嘉兴",
      "湖州",
      "绍兴",
      "金华",
      "衢州",
      "舟山",
      "台州",
      "丽水"
    ],
    "安徽": [
      "合肥",
      "芜湖",
      "蚌埠",
      "淮南",
      "马鞍山",
      "淮北",
      "铜陵",
      "安庆",
      "黄山",
      "滁州",
      "阜阳",
      "宿州",
      "六安",
      "亳州",
      "池州",
      "宣城"
    ],
    "福建": [
      "福州",
      "厦门",
      "莆田",
      "三明",
      "泉州",
      "漳州",
      "南平",
      "龙岩",
      "宁德"
    ],
    "江西": [
      "南昌",
      "景德镇",
      "萍乡",
      "九江",
      "新余",
      "鹰潭",
      "赣州",
      "吉安",
      "宜春",
      "抚州",
      "上饶"
    ],
    "山东": [
      "济南",
      "青岛",
      "淄博",
      "枣庄",
      "东营",
      "烟台",
      "潍坊",
      "济宁",
      "泰安",
      "威海",
      "日照",
      "莱芜",
      "临沂",
      "德州",
      "聊城",
      "滨州",
      "菏泽"
    ],
    "河南": [
      "郑州",
      "开封",
      "洛阳",
      "平顶山",
      "安阳",
      "鹤壁",
      "新乡",
      "焦作",
      "济源市",
      "濮阳",
      "许昌",
      "漯河",
      "三门峡",
      "南阳",
      "商丘",
      "信阳",
      "周口",
      "驻马店"
    ],
    "湖北": [
      "武汉",
      "黄石",
      "十堰",
      "宜昌",
      "襄阳",
      "鄂州",
      "荆门",
      "孝感",
      "荆州",
      "黄冈",
      "咸宁",
      "随州",
      "恩施",
      "仙桃市",
      "潜江市",
      "天门市",
      "神农架林区"
    ],
    "湖南": [
      "长沙",
      "株洲",
      "湘潭",
      "衡阳",
      "邵阳",
      "岳阳",
      "常德",
      "张家界",
      "益阳",
      "郴州",
      "永州",
      "怀化",
      "娄底",
      "湘西"
    ],
    "广东": [
      "广州",
      "韶关",
      "深圳",
      "珠海",
      "汕头",
      "佛山",
      "江门",
      "湛江",
      "茂名",
      "肇庆",
      "惠州",
      "梅州",
      "汕尾",
      "河源",
      "阳江",
      "清远",
      "东莞",
      "中山",
      "东沙",
      "潮州",
      "揭阳",
      "云浮"
    ],
    "广西": [
      "南宁",
      "柳州",
      "桂林",
      "梧州",
      "北海",
      "防城港",
      "钦州",
      "贵港",
      "玉林",
      "百色",
      "贺州",
      "河池",
      "来宾",
      "崇左"
    ],
    "海南": [
      "海口",
      "三亚",
      "三沙",
      "五指山市",
      "琼海市",
      "儋州市",
      "文昌市",
      "万宁市",
      "东方市",
      "定安县",
      "屯昌县",
      "澄迈县",
      "临高县",
      "白沙黎族自治县",
      "昌江黎族自治县",
      "乐东黎族自治县",
      "陵水黎族自治县",
      "保亭黎族苗族自治县",
      "琼中黎族苗族自治县",
      "西沙群岛",
      "南沙群岛",
      "中沙群岛的岛礁及其海域"
    ],
    "重庆": [
      "重庆"
    ],
    "四川": [
      "成都",
      "自贡",
      "攀枝花",
      "泸州",
      "德阳",
      "绵阳",
      "广元",
      "遂宁",
      "内江",
      "乐山",
      "南充",
      "眉山",
      "宜宾",
      "广安",
      "达州",
      "雅安",
      "巴中",
      "资阳",
      "阿坝",
      "甘孜",
      "凉山"
    ],
    "贵州": [
      "贵阳",
      "六盘水",
      "遵义",
      "安顺",
      "铜仁",
      "黔西南",
      "毕节",
      "黔东南",
      "黔南"
    ],
    "云南": [
      "昆明",
      "曲靖",
      "玉溪",
      "保山",
      "昭通",
      "丽江",
      "普洱",
      "临沧",
      "楚雄",
      "红河",
      "文山",
      "西双版纳",
      "大理",
      "德宏",
      "怒江",
      "迪庆"
    ],
    "西藏": [
      "拉萨",
      "昌都",
      "山南",
      "日喀则",
      "那曲",
      "阿里",
      "林芝"
    ],
    "陕西": [
      "西安",
      "铜川",
      "宝鸡",
      "咸阳",
      "渭南",
      "延安",
      "汉中",
      "榆林",
      "安康",
      "商洛"
    ],
    "甘肃": [
      "兰州",
      "嘉峪关",
      "金昌",
      "白银",
      "天水",
      "武威",
      "张掖",
      "平凉",
      "酒泉",
      "庆阳",
      "定西",
      "陇南",
      "临夏",
      "甘南"
    ],
    "青海": [
      "西宁",
      "海东",
      "海北",
      "黄南",
      "海南藏族",
      "果洛",
      "玉树",
      "海西"
    ],
    "宁夏": [
      "银川",
      "石嘴山",
      "吴忠",
      "固原",
      "中卫"
    ],
    "新疆": [
      "乌鲁木齐",
      "克拉玛依",
      "吐鲁番",
      "哈密",
      "昌吉",
      "博尔塔拉",
      "巴音郭楞",
      "阿克苏",
      "克孜勒苏柯尔克孜",
      "喀什",
      "和田",
      "伊犁",
      "塔城",
      "阿勒泰",
      "石河子市",
      "阿拉尔市",
      "图木舒克市",
      "五家渠市"
    ],
    "台湾": [
      "台北",
      "高雄",
      "台南",
      "台中",
      "金门",
      "南投",
      "基隆",
      "新竹",
      "嘉义",
      "新北",
      "宜兰",
      "桃园",
      "苗栗",
      "彰化",
      "云林",
      "屏东",
      "台东",
      "花莲",
      "澎湖",
      "连江"
    ],
    "香港": [
      "香港岛",
      "九龙",
      "新界"
    ],
    "澳门": [
      "澳门半岛",
      "离岛"
    ],
    "海外": [
      "海外"
    ]
  });
});
