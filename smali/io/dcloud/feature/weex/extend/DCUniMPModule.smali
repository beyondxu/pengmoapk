###### Class io.dcloud.feature.weex.extend.DCUniMPModule (io.dcloud.feature.weex.extend.DCUniMPModule)
.class public Lio/dcloud/feature/weex/extend/DCUniMPModule;
.super Lio/dcloud/feature/uniapp/common/UniModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/common/UniModule;-><init>()V

    return-void
.end method


# virtual methods
.method public closeUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;

    invoke-direct {v0, p0, p2, p1}, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUniMPVersion(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p2, :cond_6f

    .line 4
    sget-object p1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {p1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "__UNI__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_25
    if-eqz p2, :cond_30

    .line 9
    sget-object v0, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v0}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 12
    :cond_30
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 14
    new-instance v1, Lio/dcloud/feature/weex/extend/DCUniMPModule$8;

    invoke-direct {v1, p0, p2}, Lio/dcloud/feature/weex/extend/DCUniMPModule$8;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 31
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    aput-object v0, v1, p1

    const-string p1, "getUniMPVersion"

    aput-object p1, v1, v2

    const/4 p1, 0x3

    aput-object v3, v1, p1

    .line 32
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    return-void
.end method

.method public hideUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;

    invoke-direct {v0, p0, p2, p1}, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public installUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 10
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p1, 0x0

    .line 4
    :goto_6
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p2, :cond_a9

    .line 6
    sget-object p1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {p1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto/16 :goto_a9

    :cond_19
    if-eqz p1, :cond_9e

    .line 10
    const-string v0, "appid"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    const-string v1, "wgtFile"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    const-string v2, "password"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 14
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_36

    .line 13
    :cond_34
    const-string p1, ""

    .line 17
    :goto_36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 18
    iget-object v2, p0, Lcom/taobao/weex/common/WXModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "file"

    invoke-interface {v2, v3, v4}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 20
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_5a

    :cond_4f
    if-eqz p2, :cond_5a

    .line 24
    sget-object v2, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_RESOURCE_EXIST:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v2}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 27
    :cond_5a
    :goto_5a
    new-instance v2, Lio/dcloud/feature/weex/extend/DCUniMPModule$6;

    invoke-direct {v2, p0, p2}, Lio/dcloud/feature/weex/extend/DCUniMPModule$6;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 48
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    iget-object v3, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p2, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_a9

    .line 50
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object p1, v5, v1

    const/4 p1, 0x3

    aput-object v2, v5, p1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v6

    aput-object v3, v2, v0

    const-string p2, "installUniMP"

    aput-object p2, v2, v1

    aput-object v5, v2, p1

    .line 51
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a9

    :cond_9e
    if-eqz p2, :cond_a9

    .line 56
    sget-object p1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {p1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method public onUniMPEventReceive(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5b

    .line 4
    :cond_7
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 6
    instance-of v1, p1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    if-eqz v1, :cond_5b

    .line 7
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/SimpleJSCallback;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    const/4 v3, 0x2

    aput-object p1, v5, v3

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v6

    aput-object v2, p1, v0

    const-string v0, "onUniMPEventReceive"

    aput-object v0, p1, v3

    aput-object v5, p1, v4

    .line 8
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    :goto_5b
    return-void
.end method

.method public openUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendUniMPEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 10
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6a

    .line 9
    :cond_d
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p4, :cond_75

    .line 12
    sget-object p1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {p1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_1f
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_26

    move-object p3, v0

    .line 28
    :cond_26
    new-instance v0, Lio/dcloud/feature/weex/extend/DCUniMPModule$7;

    invoke-direct {v0, p0, p4}, Lio/dcloud/feature/weex/extend/DCUniMPModule$7;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 50
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p4

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p4, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p4

    if-eqz p4, :cond_75

    .line 53
    invoke-interface {p4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p4

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p2, 0x2

    aput-object p3, v3, p2

    const/4 p3, 0x3

    aput-object v0, v3, p3

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p4, v0, v4

    aput-object v1, v0, p1

    const-string p1, "sendUniMPEvent"

    aput-object p1, v0, p2

    aput-object v3, v0, p3

    .line 54
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 p3, 0xa

    invoke-virtual {p1, p2, p3, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6a
    :goto_6a
    if-eqz p4, :cond_75

    .line 55
    sget-object p1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {p1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_75
    return-void
.end method

.method public setDefaultMenuItems(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    .line 5
    :goto_6
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5a

    :cond_d
    if-eqz v0, :cond_4f

    .line 12
    new-instance v0, Lio/dcloud/feature/weex/extend/DCUniMPModule$4;

    invoke-direct {v0, p0, p2}, Lio/dcloud/feature/weex/extend/DCUniMPModule$4;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 37
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p2, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 40
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v4

    aput-object v1, v0, p1

    const-string p1, "setDefaultMenuItems"

    aput-object p1, v0, v2

    const/4 p1, 0x3

    aput-object v3, v0, p1

    .line 41
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    :cond_4f
    if-eqz p2, :cond_5a

    .line 46
    sget-object p1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {p1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public showUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    new-instance v0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    invoke-direct {v0, p0, p2, p1}, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass1 (io.dcloud.feature.weex.extend.DCUniMPModule$1)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->showUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_6b

    .line 3
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_12
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_6b

    .line 8
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_28
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iget-object v1, v1, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 14
    new-instance v1, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$1;)V

    .line 36
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$appId:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v6

    aput-object v2, v1, v3

    const-string v0, "showUniMP"

    aput-object v0, v1, v4

    const/4 v0, 0x3

    aput-object v5, v1, v0

    .line 37
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    :cond_6b
    return-void

    :catch_6c
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass1.C00591 (io.dcloud.feature.weex.extend.DCUniMPModule$1$1)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "type"

    if-ltz p1, :cond_19

    .line 4
    const-string p1, "success"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 7
    :cond_19
    const-string v3, "fail"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2c

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2c
    const-string p1, "Unknown error"

    :goto_2e
    const-string p2, "message"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_33
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_3c

    .line 13
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass2 (io.dcloud.feature.weex.extend.DCUniMPModule$2)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->closeUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_6b

    .line 3
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_12
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_6b

    .line 8
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_28
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iget-object v1, v1, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 14
    new-instance v1, Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$2;)V

    .line 36
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$appId:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v6

    aput-object v2, v1, v3

    const-string v0, "closeUniMP"

    aput-object v0, v1, v4

    const/4 v0, 0x3

    aput-object v5, v1, v0

    .line 37
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    :cond_6b
    return-void

    :catch_6c
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass2.AnonymousClass1 (io.dcloud.feature.weex.extend.DCUniMPModule$2$1)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$2;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "type"

    if-ltz p1, :cond_19

    .line 4
    const-string p1, "success"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 7
    :cond_19
    const-string v3, "fail"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2c

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2c
    const-string p1, "Unknown error"

    :goto_2e
    const-string p2, "message"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_33
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$2;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_3c

    .line 13
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass3 (io.dcloud.feature.weex.extend.DCUniMPModule$3)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->hideUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_6b

    .line 3
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_12
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_6b

    .line 8
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_28
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iget-object v1, v1, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 14
    new-instance v1, Lio/dcloud/feature/weex/extend/DCUniMPModule$3$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/extend/DCUniMPModule$3$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$3;)V

    .line 36
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$appId:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v6

    aput-object v2, v1, v3

    const-string v0, "hideUniMP"

    aput-object v0, v1, v4

    const/4 v0, 0x3

    aput-object v5, v1, v0

    .line 37
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    :cond_6b
    return-void

    :catch_6c
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass3.AnonymousClass1 (io.dcloud.feature.weex.extend.DCUniMPModule$3$1)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$3;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "type"

    if-ltz p1, :cond_19

    .line 4
    const-string p1, "success"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 7
    :cond_19
    const-string v3, "fail"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2c

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2c
    const-string p1, "Unknown error"

    :goto_2e
    const-string p2, "message"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_33
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$3$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$3;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$3;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_3c

    .line 13
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass4 (io.dcloud.feature.weex.extend.DCUniMPModule$4)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->setDefaultMenuItems(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$4;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 3
    const-string p2, "appId"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_34

    .line 9
    :cond_22
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$4;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_34

    .line 15
    invoke-interface {p1, v2}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_34
    :goto_34
    return-object v3
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass5 (io.dcloud.feature.weex.extend.DCUniMPModule$5)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->openUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$opStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$opStr:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$opStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    .line 5
    :goto_8
    :try_start_8
    sget-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v1, :cond_1a

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_81

    .line 7
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_81

    :cond_1a
    if-nez v0, :cond_2a

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_81

    .line 13
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_81

    .line 17
    :cond_2a
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iget-object v2, v2, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 19
    new-instance v2, Lio/dcloud/feature/weex/extend/DCUniMPModule$5$1;

    invoke-direct {v2, p0}, Lio/dcloud/feature/weex/extend/DCUniMPModule$5$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$5;)V

    .line 41
    const-string v3, "appInfo"

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v6

    aput-object v3, v2, v0

    const-string v0, "openUniMP"

    aput-object v0, v2, v4

    const/4 v0, 0x3

    aput-object v5, v2, v0

    .line 43
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_81
    :goto_81
    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass5.AnonymousClass1 (io.dcloud.feature.weex.extend.DCUniMPModule$5$1)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$5$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$5;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "type"

    if-ltz p1, :cond_19

    .line 4
    const-string p1, "success"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 7
    :cond_19
    const-string v3, "fail"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2c

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2c
    const-string p1, "Unknown error"

    :goto_2e
    const-string p2, "message"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_33
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$5;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_3c

    .line 13
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass6 (io.dcloud.feature.weex.extend.DCUniMPModule$6)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->installUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$6;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$6;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "type"

    if-ltz p1, :cond_19

    .line 4
    const-string p1, "success"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 7
    :cond_19
    const-string v3, "fail"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2c

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2c
    const-string p1, "Unknown error"

    :goto_2e
    const-string p2, "message"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_33
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$6;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_3a

    .line 13
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass7 (io.dcloud.feature.weex.extend.DCUniMPModule$7)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$7;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->sendUniMPEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$7;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$7;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "type"

    if-ltz p1, :cond_19

    .line 4
    const-string p1, "success"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 7
    :cond_19
    const-string v3, "fail"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2c

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2c
    const-string p1, "Unknown error"

    :goto_2e
    const-string p2, "message"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_33
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$7;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_3a

    .line 13
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.extend.DCUniMPModule.AnonymousClass8 (io.dcloud.feature.weex.extend.DCUniMPModule$8)
.class Lio/dcloud/feature/weex/extend/DCUniMPModule$8;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->getUniMPVersion(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$8;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$8;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-nez p2, :cond_10

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$8;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_27

    .line 2
    sget-object p2, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_RESOURCE_EXIST:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {p2}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_27

    .line 5
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$8;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p2, :cond_27

    .line 7
    sget-object v0, Lio/dcloud/feature/weex/EnumStateCode;->SUCCESS_NO_BODY:Lio/dcloud/feature/weex/EnumStateCode;

    const-string v1, "versionInfo"

    invoke-static {v0, v1, p1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return-object p1
.end method
