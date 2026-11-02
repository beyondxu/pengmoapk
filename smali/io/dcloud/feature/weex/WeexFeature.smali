###### Class io.dcloud.feature.weex.WeexFeature (io.dcloud.feature.weex.WeexFeature)
.class public Lio/dcloud/feature/weex/WeexFeature;
.super Lio/dcloud/common/DHInterface/StandardFeature;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWaiter;
.implements Lio/dcloud/common/DHInterface/ReceiveSystemEventVoucher;


# instance fields
.field isRegisterAllEvent:Z

.field mApp:Lio/dcloud/common/DHInterface/IApp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/StandardFeature;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    return-void
.end method

.method private createUniNView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 11

    .line 1
    sget v5, Lio/dcloud/feature/weex/WXBaseWrapper;->DE_INDEX:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/weex/WeexFeature;->createUniNView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method private createUniNView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .registers 12

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/weex/WeexInstanceMgr;->createWeexView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;

    return-void
.end method

.method private createWeexService([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexFeature;->registerAllEvent(Lio/dcloud/common/DHInterface/IApp;)V

    const/4 v1, 0x1

    .line 3
    aget-object v1, p1, v1

    check-cast v1, Lorg/json/JSONObject;

    const/4 v2, 0x2

    .line 4
    aget-object v2, p1, v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x3

    .line 5
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v3

    invoke-virtual {v3, v0, v2, p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->createWeexService(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)Lio/dcloud/feature/weex/WXServiceWrapper;

    move-result-object p1

    return-object p1
.end method

.method private createWeexWindow([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    move-object v2, v0

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 2
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexFeature;->registerAllEvent(Lio/dcloud/common/DHInterface/IApp;)V

    const/4 v0, 0x1

    .line 3
    aget-object v0, p1, v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v0, 0x2

    .line 4
    aget-object v0, p1, v0

    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    const/4 v0, 0x3

    .line 5
    aget-object p1, p1, v0

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    sget v6, Lio/dcloud/feature/weex/WXBaseWrapper;->DE_INDEX:I

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/weex/WeexInstanceMgr;->createWeexView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public callNativeModule(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, "plugin"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    const-string v0, "method"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    const-string v0, "args"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 4
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 6
    instance-of p2, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p2, :cond_35

    .line 7
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_35
    instance-of p2, p1, Ljava/util/HashMap;

    if-eqz p2, :cond_4d

    .line 10
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4d
    instance-of p2, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p2, :cond_60

    .line 13
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_60
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_6d

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6d
    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_78

    .line 18
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_78
    instance-of p2, p1, Lorg/json/JSONArray;

    if-eqz p2, :cond_83

    .line 20
    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_83
    const-string p1, ""

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dispose(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/common/DHInterface/StandardFeature;->dispose(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_19

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexFeature;->onDestroy()V

    .line 4
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    if-eqz p1, :cond_19

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-virtual {p0, p1}, Lio/dcloud/common/DHInterface/StandardFeature;->unregisterSysEvent(Lio/dcloud/common/DHInterface/IApp;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    :cond_19
    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_22e

    goto/16 :goto_96

    :sswitch_15
    const-string v0, "updateServiceReload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_96

    :cond_1f
    const/16 v6, 0xa

    goto/16 :goto_96

    :sswitch_23
    const-string v0, "createServiceUniNView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_96

    :cond_2d
    const/16 v6, 0x9

    goto/16 :goto_96

    :sswitch_31
    const-string v0, "createUniNView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_96

    :cond_3b
    const/16 v6, 0x8

    goto/16 :goto_96

    :sswitch_3f
    const-string v0, "postMessageToUniNView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_96

    :cond_48
    const/4 v6, 0x7

    goto :goto_96

    :sswitch_4a
    const-string v0, "weexViewUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_96

    :cond_53
    const/4 v6, 0x6

    goto :goto_96

    :sswitch_55
    const-string v0, "callNativeModuleSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_96

    :cond_5e
    const/4 v6, 0x5

    goto :goto_96

    :sswitch_60
    const-string v0, "getUniNViewModules"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_96

    :cond_69
    const/4 v6, 0x4

    goto :goto_96

    :sswitch_6b
    const-string v0, "findWebviewByInstanceId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_74

    goto :goto_96

    :cond_74
    const/4 v6, 0x3

    goto :goto_96

    :sswitch_76
    const-string v0, "updateReload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7f

    goto :goto_96

    :cond_7f
    const/4 v6, 0x2

    goto :goto_96

    :sswitch_81
    const-string v0, "setUniNViewModuleReladyCallBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    goto :goto_96

    :cond_8a
    const/4 v6, 0x1

    goto :goto_96

    :sswitch_8c
    const-string v0, "onKeyboardHeightChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_95

    goto :goto_96

    :cond_95
    const/4 v6, 0x0

    :goto_96
    const-string p1, "data"

    const/4 v0, 0x0

    packed-switch v6, :pswitch_data_25c

    goto/16 :goto_1db

    .line 74
    :pswitch_9e
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->reloadWXServiceWrapper()V

    return-object v0

    .line 78
    :pswitch_a6
    check-cast p2, [Ljava/lang/Object;

    .line 79
    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/WeexFeature;->createWeexService([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_ad
    check-cast p2, [Ljava/lang/Object;

    .line 81
    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/WeexFeature;->createWeexWindow([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 115
    :pswitch_b4
    check-cast p2, [Ljava/lang/Object;

    .line 116
    aget-object v5, p2, v5

    check-cast v5, Lio/dcloud/common/DHInterface/IWebview;

    .line 117
    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    .line 118
    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/String;

    .line 119
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    .line 120
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    .line 121
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    const-string v6, "targetId"

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "originId"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_eb

    move-object v4, v3

    .line 131
    :cond_eb
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_fa

    .line 132
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object p1

    goto :goto_102

    .line 134
    :cond_fa
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object p1

    :goto_102
    if-eqz p1, :cond_1db

    .line 137
    const-string p2, "plusMessage"

    invoke-virtual {p1, p2, v1}, Lio/dcloud/feature/weex/WXBaseWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    return-object v0

    .line 138
    :pswitch_10a
    check-cast p2, [Ljava/lang/Object;

    .line 139
    aget-object v1, p2, v5

    check-cast v1, Lio/dcloud/common/DHInterface/IWebview;

    .line 140
    aget-object v4, p2, v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 141
    aget-object v3, p2, v3

    check-cast v3, Lorg/json/JSONObject;

    .line 142
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    .line 143
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 144
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p2

    .line 146
    :cond_12a
    const-string v2, "path"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1db

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1db

    .line 147
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v5

    invoke-virtual {v5, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object v5

    .line 148
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 149
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v7

    if-eqz v7, :cond_159

    .line 151
    move-object v7, v1

    check-cast v7, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v7, v2}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->setNVuePath(Ljava/lang/String;)V

    .line 154
    :cond_159
    :try_start_159
    const-string v7, "js"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v6, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_161
    .catch Lorg/json/JSONException; {:try_start_159 .. :try_end_161} :catch_162

    goto :goto_166

    :catch_162
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_166
    if-eqz v5, :cond_16c

    .line 160
    invoke-virtual {v5, v6}, Lio/dcloud/feature/weex/WXBaseWrapper;->loadTemplate(Lorg/json/JSONObject;)V

    goto :goto_1db

    .line 162
    :cond_16c
    invoke-direct {p0, v1, v4, p2, v6}, Lio/dcloud/feature/weex/WeexFeature;->createUniNView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1db

    .line 229
    :pswitch_170
    check-cast p2, [Ljava/lang/Object;

    .line 230
    aget-object p1, p2, v5

    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    .line 231
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 232
    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/String;

    .line 233
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    .line 234
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    .line 235
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 238
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_191

    move-object p1, v3

    .line 241
    :cond_191
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 242
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    goto :goto_1a8

    .line 244
    :cond_1a0
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    :goto_1a8
    if-eqz p1, :cond_1db

    .line 247
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/WeexFeature;->callNativeModule(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 248
    :pswitch_1b3
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniNViewModules()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c7

    .line 250
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->getRegisterJsModules()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1c7

    .line 252
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    :cond_1c7
    return-object p1

    .line 253
    :pswitch_1c8
    check-cast p2, [Ljava/lang/Object;

    .line 254
    aget-object p1, p2, v5

    check-cast p1, Ljava/lang/String;

    .line 255
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findPathByWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_1db

    .line 257
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXViewWrapper;->reload()V

    :cond_1db
    :goto_1db
    return-object v0

    .line 281
    :pswitch_1dc
    check-cast p2, [Ljava/lang/Object;

    .line 282
    aget-object p1, p2, v5

    check-cast p1, Lio/dcloud/common/DHInterface/ICallBack;

    .line 283
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setUniNViewModuleReladyCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-object v0

    .line 310
    :pswitch_1ea
    move-object p1, p2

    check-cast p1, [Ljava/lang/Object;

    .line 311
    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/String;

    .line 312
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 313
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object v0

    if-eqz v0, :cond_21f

    int-to-float p1, p1

    .line 315
    iget-object v1, v0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "height"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string p1, "KeyboardHeightChange"

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex/WXBaseWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    .line 322
    :cond_21f
    :pswitch_21f
    check-cast p2, [Ljava/lang/Object;

    .line 323
    aget-object p1, p2, v5

    check-cast p1, Ljava/lang/String;

    .line 324
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebviewByInstanceId(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    return-object p1

    :sswitch_data_22e
    .sparse-switch
        -0x77766643 -> :sswitch_8c
        -0x481b8a2d -> :sswitch_81
        -0x3a95d43e -> :sswitch_76
        -0x32d78b99 -> :sswitch_6b
        -0x252b1552 -> :sswitch_60
        -0x9c362e4 -> :sswitch_55
        -0x8ecc151 -> :sswitch_4a
        0x16032b65 -> :sswitch_3f
        0x2374f23f -> :sswitch_31
        0x2aa1ce5c -> :sswitch_23
        0x7f2bde65 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_25c
    .packed-switch 0x0
        :pswitch_1ea
        :pswitch_1dc
        :pswitch_1c8
        :pswitch_21f
        :pswitch_1b3
        :pswitch_170
        :pswitch_10a
        :pswitch_b4
        :pswitch_ad
        :pswitch_a6
        :pswitch_9e
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/common/DHInterface/StandardFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->init(Lio/dcloud/common/DHInterface/AbsMgr;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/common/DHInterface/StandardFeature;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->getQuitModel()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V

    goto :goto_1b

    .line 4
    :cond_14
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy()V

    .line 6
    :goto_1b
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setUniServiceCreated(ZLio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/common/DHInterface/StandardFeature;->onPause()V

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityPause()V

    return-void
.end method

.method protected onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/common/DHInterface/StandardFeature;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/common/DHInterface/StandardFeature;->onResume()V

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityResume()V

    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/common/DHInterface/StandardFeature;->onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 2
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_10

    .line 3
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initWeexEnv(Landroid/app/Application;)V

    :cond_10
    return-void
.end method

.method public registerAllEvent(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 2
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    .line 4
    invoke-virtual {p0, p1}, Lio/dcloud/common/DHInterface/StandardFeature;->unregisterSysEvent(Lio/dcloud/common/DHInterface/IApp;)V

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-virtual {p0, p1}, Lio/dcloud/common/DHInterface/StandardFeature;->registerSysEvent(Lio/dcloud/common/DHInterface/IApp;)V

    :cond_11
    return-void
.end method
