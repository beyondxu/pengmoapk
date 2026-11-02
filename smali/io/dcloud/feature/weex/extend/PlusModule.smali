###### Class io.dcloud.feature.weex.extend.PlusModule (io.dcloud.feature.weex.extend.PlusModule)
.class public Lio/dcloud/feature/weex/extend/PlusModule;
.super Lcom/taobao/weex/common/WXModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/extend/PlusModule$JsData;
    }
.end annotation


# static fields
.field private static final HELP_LOG_HASH:Ljava/lang/String; = "HELP_LOG_HASH_"


# instance fields
.field private EVENTS_DOCUMENT_EXECUTE:Ljava/lang/String;

.field chs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/weex/extend/PlusModule$JsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 4
    const-string v0, "javascript:!function(){(window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus)||window.__load__plus__&&window.__load__plus__();var _=document.createEvent(\"HTMLEvents\");_.initEvent(\"%s\",!1,!0),_.targetId=\"%s\",_.originId=\"%s\",_.data=%s,document.dispatchEvent(_)}();"

    iput-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule;->EVENTS_DOCUMENT_EXECUTE:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule;->chs:Ljava/util/ArrayList;

    return-void
.end method

.method private getClientKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HELP_LOG_HASH_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 4
    const-string p2, "HELP_LOG_HASH"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private runChData()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule;->chs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/PlusModule;->chs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_29

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lio/dcloud/feature/weex/extend/PlusModule$JsData;

    .line 4
    iget-object v5, v4, Lio/dcloud/feature/weex/extend/PlusModule$JsData;->data:Ljava/lang/String;

    iget-object v6, v4, Lio/dcloud/feature/weex/extend/PlusModule$JsData;->value:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lio/dcloud/feature/weex/extend/PlusModule;->exec(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 8
    :cond_29
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/PlusModule;->chs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2e
    return-void
.end method


# virtual methods
.method public decrypt(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isStandardBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_c1

    :cond_14
    if-eqz p1, :cond_b5

    if-nez p2, :cond_1a

    goto/16 :goto_b5

    .line 11
    :cond_1a
    const-string v0, "dcloud_sn_appkey"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    const-string v3, "key"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14
    const-string v4, "spaceId"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 15
    const-string v5, "provider"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto :goto_ab

    .line 20
    :cond_59
    invoke-direct {p0, v4, v5}, Lio/dcloud/feature/weex/extend/PlusModule;->getClientKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 22
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->APP_KEY_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_6d
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 26
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->CLIENT_KEY_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_7d
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v0, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 32
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->DECRYPT_ERROR:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 35
    :cond_9b
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Lio/dcloud/feature/weex/extend/result/Result;->boxSuccessResult(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 38
    :cond_ab
    :goto_ab
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->PARAMS_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    :cond_b5
    :goto_b5
    if-eqz p2, :cond_c0

    .line 39
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->PARAMS_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_c0
    return-void

    .line 40
    :cond_c1
    :goto_c1
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->NOT_SUPPORT_MP_OR_BASE:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public encrypt(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isStandardBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_ab

    :cond_14
    if-eqz p1, :cond_9f

    if-nez p2, :cond_1a

    goto/16 :goto_9f

    .line 11
    :cond_1a
    const-string v0, "dcloud_sn_appkey"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    const-string v2, "spaceId"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    const-string v3, "provider"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 15
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_95

    .line 20
    :cond_4b
    invoke-direct {p0, v2, p1}, Lio/dcloud/feature/weex/extend/PlusModule;->getClientKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 22
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->APP_KEY_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_5f
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 26
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->CLIENT_KEY_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_6f
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 32
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->ENCRYPT_ERROR:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 36
    :cond_89
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxSuccessResult(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 37
    :cond_95
    :goto_95
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->PARAMS_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    :cond_9f
    :goto_9f
    if-eqz p2, :cond_aa

    .line 38
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->PARAMS_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_aa
    return-void

    .line 39
    :cond_ab
    :goto_ab
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->NOT_SUPPORT_MP_OR_BASE:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public encryptGetClientKeyPayload(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isStandardBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_80

    :cond_13
    if-eqz p1, :cond_74

    if-nez p2, :cond_18

    goto :goto_74

    .line 11
    :cond_18
    const-string v0, "dcloud_sn_appkey"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 14
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->APP_KEY_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_32
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 19
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->encryptGetClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 21
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->ENCRYPT_CLIENT_KEY_PAYLOAD_ERROR:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_52
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 26
    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxSuccessResult(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 28
    :cond_60
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->NATIVE_JSON_FORMAT_ERROR:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 31
    :cond_6a
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->JSON_FORMAT_ERROR:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    :cond_74
    :goto_74
    if-eqz p2, :cond_7f

    .line 32
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->PARAMS_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_7f
    return-void

    .line 33
    :cond_80
    :goto_80
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->NOT_SUPPORT_MP_OR_BASE:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public evalJSFiles(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "msg"

    const-string v2, "type"

    const/4 v3, -0x1

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p1, :cond_3e

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    if-nez p1, :cond_30

    if-eqz p2, :cond_57

    .line 6
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/taobao/weex/R$string;->dcloud_feature_weex_msg_param_invalid:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_30
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/weex/extend/PlusModule$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lio/dcloud/feature/weex/extend/PlusModule$1;-><init>(Lio/dcloud/feature/weex/extend/PlusModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/util/Map;Lcom/alibaba/fastjson/JSONArray;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V

    return-void

    :cond_3e
    if-eqz p2, :cond_57

    .line 81
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/taobao/weex/R$string;->dcloud_feature_weex_msg_param_empty:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_57
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1e

    .line 4
    :cond_b
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v1, :cond_1e

    .line 6
    check-cast v0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->prompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1e
    :goto_1e
    return-void
.end method

.method public execSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    const-string v1, ""

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object v1

    .line 4
    :cond_d
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v2, :cond_22

    .line 6
    check-cast v0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->prompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_22
    return-object v1
.end method

.method public getAppAuthorizeSetting()Lcom/alibaba/fastjson/JSONObject;
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4
    const-string v2, "android.permission.CAMERA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    const-string v4, "authorized"

    const-string v5, "denied"

    if-eqz v3, :cond_1d

    move-object v6, v4

    goto :goto_1e

    :cond_1d
    move-object v6, v5

    .line 9
    :goto_1e
    const-string v7, "config error"

    if-nez v3, :cond_29

    .line 10
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->hasDefinedInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    move-object v6, v7

    .line 13
    :cond_29
    const-string v2, "cameraAuthorized"

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object v6, v4

    goto :goto_3d

    :cond_3c
    move-object v6, v5

    :goto_3d
    if-nez v3, :cond_46

    .line 23
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->hasDefinedInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    move-object v6, v7

    .line 26
    :cond_46
    const-string v2, "locationAuthorized"

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v3, :cond_5a

    .line 34
    const-string v6, "reduced"

    goto :goto_5c

    :cond_5a
    const-string v6, "unsupported"

    :goto_5c
    if-eqz v3, :cond_62

    if-eqz v2, :cond_62

    .line 36
    const-string v6, "full"

    .line 38
    :cond_62
    const-string v2, "locationAccuracy"

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    move-object v6, v4

    goto :goto_76

    :cond_75
    move-object v6, v5

    :goto_76
    if-nez v3, :cond_7f

    .line 47
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->hasDefinedInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7f

    goto :goto_80

    :cond_7f
    move-object v7, v6

    .line 50
    :goto_80
    const-string v2, "microphoneAuthorized"

    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_91

    :cond_90
    move-object v4, v5

    :goto_91
    const-string v0, "notificationAuthorized"

    invoke-virtual {v1, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "albumAuthorized"

    const-string v2, "undefined"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "bluetoothAuthorized"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "locationReducedAccuracy"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "notificationAlertAuthorized"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "notificationBadgeAuthorized"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "notificationSoundAuthorized"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getAppState()I
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->getActivityState()I

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public getConfigInfo()Ljava/lang/Object;
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v1, :cond_15

    .line 3
    check-cast v0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->getConfigInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDotData()Lcom/alibaba/fastjson/JSONObject;
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/weex/WXDotDataUtil;->getDeviceInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v1, :cond_55

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "maxMemory"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalMemory"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-wide v1, Lio/dcloud/common/util/BaseInfo;->splashCloseTime:J

    sget-wide v3, Lio/dcloud/common/util/BaseInfo;->startTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "appRuningTitme"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    return-object v0
.end method

.method public getHostInfo(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 3
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_78

    .line 7
    :cond_1b
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppInfo()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 9
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_2d
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isUniMPHostForUniApp()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 13
    sget-boolean v2, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v2, :cond_4b

    .line 15
    sget-object v1, Lio/dcloud/feature/internal/sdk/SDK;->mHostInfo:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 16
    sget-object v1, Lio/dcloud/feature/internal/sdk/SDK;->mHostInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 18
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    goto :goto_54

    .line 23
    :cond_4b
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 25
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 36
    :cond_54
    :goto_54
    sget-object v1, Lio/dcloud/common/adapter/util/AndroidResources;->appName:Ljava/lang/String;

    const-string v2, "nativeName"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lio/dcloud/common/adapter/util/AndroidResources;->packageName:Ljava/lang/String;

    const-string v2, "nativeAppid"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lio/dcloud/common/adapter/util/AndroidResources;->versionName:Ljava/lang/String;

    const-string v2, "nativeVersionName"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget v1, Lio/dcloud/common/adapter/util/AndroidResources;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nativeVersionCode"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_78
    :goto_78
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/language/LanguageUtil;->getCurrentLocaleLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_16
    :goto_16
    const-string v0, ""

    return-object v0
.end method

.method public getRedirectInfo()Ljava/lang/Object;
    .registers 8
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    .line 4
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    const-string v3, "uni_restart_to_direct"

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_4f

    .line 6
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    const-string v4, "debugRefresh"

    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 8
    const-string v5, "arguments"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 10
    :try_start_3b
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :goto_48
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2, v4, v3}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_4f
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    const-string v4, "unimp_run_extra_info"

    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_70

    if-nez v1, :cond_66

    .line 23
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 25
    :cond_66
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 27
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    return-object v1
.end method

.method public getSystemInfo(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/PlusModule;->getSystemInfoSync()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public getSystemInfoSync()Lcom/alibaba/fastjson/JSONObject;
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3
    :try_start_5
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_f1

    .line 4
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    if-eqz v2, :cond_f1

    .line 5
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->getSystemInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 7
    const-string v2, "osTheme"

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/DeviceInfo;->isSystemNightMode(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_f1

    const-string v4, "dark"

    const-string v5, "light"

    if-eqz v3, :cond_39

    move-object v3, v4

    goto :goto_3a

    :cond_39
    move-object v3, v5

    .line 8
    :goto_3a
    :try_start_3a
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v2, "User-Agent"

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    const-string v3, "ua"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4a} :catch_f1

    const-string v3, ""

    const-string v6, "oaid"

    if-eqz v2, :cond_60

    .line 12
    :try_start_50
    const-string v7, "\\|"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 13
    array-length v7, v2

    if-lez v7, :cond_5c

    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 15
    :cond_5c
    invoke-virtual {v0, v6, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 17
    :cond_60
    invoke-virtual {v0, v6, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_63
    const-string v2, "browserVersion"

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebViewUserAgentVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 23
    const-string v3, "portrait"

    const/4 v6, 0x2

    if-ne v2, v6, :cond_85

    .line 26
    const-string v3, "landscape"

    .line 28
    :cond_85
    const-string v2, "deviceOrientation"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v2, "deviceId"

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/TelephonyUtil;->getDCloudDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-boolean v2, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v2, :cond_f1

    .line 31
    const-string v2, "hostPackageName"

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v2, "hostVersion"

    sget-object v3, Lio/dcloud/common/adapter/util/AndroidResources;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v2, "hostName"

    sget-object v3, Lio/dcloud/common/adapter/util/AndroidResources;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v2, "auto"

    sget-object v3, Lio/dcloud/feature/internal/sdk/SDK;->hostAppThemeDark:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 36
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/DeviceInfo;->isSystemNightMode(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_cf

    goto :goto_d3

    :cond_cf
    move-object v4, v5

    goto :goto_d3

    .line 39
    :cond_d1
    sget-object v4, Lio/dcloud/feature/internal/sdk/SDK;->hostAppThemeDark:Ljava/lang/String;

    .line 41
    :goto_d3
    const-string v1, "hostTheme"

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isUniMPHostForUniApp()Z

    move-result v1
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_dc} :catch_f1

    const-string v2, "hostLanguage"

    if-eqz v1, :cond_ea

    .line 45
    :try_start_e0
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    return-object v0

    .line 56
    :cond_ea
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f1} :catch_f1

    :catch_f1
    :cond_f1
    return-object v0
.end method

.method public getSystemSetting()Lcom/alibaba/fastjson/JSONObject;
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 5
    :try_start_b
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->blueToothEnable(Landroid/content/Context;)Z

    move-result v2

    .line 6
    const-string v3, "bluetoothEnabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    const-string v2, "bluetoothError"

    const-string v3, "Missing permissions required by BluetoothAdapter.isEnabled: android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_24
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->locationEnable(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "locationEnabled"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_31
    const-string v2, "wifiEnabled"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->wifiEnable(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_3f

    goto :goto_46

    .line 16
    :catch_3f
    const-string v2, "wifiError"

    const-string v3, "Missing permissions required by WifiManager.isWifiEnabled: android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_46
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->deviceOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "deviceOrientation"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/DCWXInput;

    .line 2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasClientKey(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isStandardBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_50

    .line 5
    :cond_13
    const-string v0, "spaceId"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    const-string v1, "provider"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_46

    .line 11
    :cond_30
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/weex/extend/PlusModule;->getClientKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxSuccessResult(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_46
    :goto_46
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->PARAMS_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_50
    :goto_50
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->NOT_SUPPORT_MP_OR_BASE:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LOG] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    const-string v0, "console"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openAppAuthorizeSetting(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    const-string v0, "type"

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3
    :try_start_7
    iget-object v2, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v4, "package"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    const-string v2, "success"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v2, "code"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_35

    goto :goto_3e

    :catch_35
    move-exception v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    const-string v2, "fail"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_3e
    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    const-string v0, "data"

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/dcloud/feature/weex/extend/PlusModule;->EVENTS_DOCUMENT_EXECUTE:Ljava/lang/String;

    const-string v3, ""

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    :cond_17
    move-object v4, v3

    :goto_18
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "uniNViewMessage"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v3, 0x2

    aput-object v4, v5, v3

    const/4 v3, 0x3

    aput-object p1, v5, v3

    invoke-static {v2, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_49

    .line 5
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXServiceWrapper(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/feature/weex/WXServiceWrapper;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 7
    invoke-virtual {v3}, Lio/dcloud/feature/weex/WXServiceWrapper;->obtanApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 8
    invoke-virtual {v3, v2, p2}, Lio/dcloud/feature/weex/WXServiceWrapper;->findWebViewToLoadUrL(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_49
    if-eqz v1, :cond_99

    .line 14
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    move-object v3, v1

    goto :goto_67

    .line 17
    :cond_53
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v3

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    :goto_67
    if-eqz v3, :cond_99

    .line 20
    instance-of v4, v3, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v4, :cond_96

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    const-string v4, "targetId"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "originId"

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :try_start_80
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 26
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_88

    goto :goto_8b

    .line 28
    :catch_88
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_8b
    new-instance p1, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {p1, v7, v2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    check-cast v3, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v3, p1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->fireEvent(Lio/dcloud/common/adapter/util/EventActionInfo;)V

    return-void

    .line 33
    :cond_96
    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    :cond_99
    return-void
.end method

.method public preloadReady(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getPreUniMPCallBack(Ljava/lang/String;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public pushDebugData(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public sendNativeEvent(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v1, :cond_70

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string p1, "String"

    const-string v2, "dataType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    instance-of p1, p2, Ljava/lang/String;

    const-string v3, "data"

    if-eqz p1, :cond_39

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 8
    :cond_39
    instance-of p1, p2, Lcom/alibaba/fastjson/JSON;

    if-eqz p1, :cond_4b

    .line 9
    check-cast p2, Lcom/alibaba/fastjson/JSON;

    .line 10
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string p1, "JSON"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_4b
    :goto_4b
    instance-of p1, p3, Lcom/taobao/weex/bridge/SimpleJSCallback;

    if-eqz p1, :cond_65

    .line 14
    iget-object p1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "instanceId"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    check-cast p3, Lcom/taobao/weex/bridge/SimpleJSCallback;

    invoke-virtual {p3}, Lcom/taobao/weex/bridge/SimpleJSCallback;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "callbackId"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_65
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/IActivityHandler;

    const-string p2, "unimp_js_to_native"

    invoke-interface {p1, p2, v1}, Lio/dcloud/common/DHInterface/IActivityHandler;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_70
    return-void
.end method

.method public setClientKey(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isStandardBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_b0

    :cond_14
    if-nez p1, :cond_22

    if-eqz p2, :cond_21

    .line 7
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->PARAMS_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_21
    return-void

    .line 11
    :cond_22
    const-string v0, "dcloud_sn_appkey"

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 13
    const-string v2, "spaceId"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    const-string v3, "provider"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_a6

    .line 20
    :cond_49
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 21
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->APP_KEY_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_59
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->verifyClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 27
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 28
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HELP_LOG_HASH_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 31
    const-string v0, "HELP_LOG_HASH"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxSuccessResult(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 35
    :cond_9c
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->CLIENT_KEY_ILLEGAL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 36
    :cond_a6
    :goto_a6
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->PARAMS_IS_NULL:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 37
    :cond_b0
    :goto_b0
    sget-object p1, Lio/dcloud/feature/weex/extend/result/SecureNetworkResult;->NOT_SUPPORT_MP_OR_BASE:Lio/dcloud/feature/weex/extend/result/Result;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/result/Result;->boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public setDefaultFontSize(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_f

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->setDefaultFontSize(I)V

    :cond_f
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_42

    .line 4
    :cond_b
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_42

    .line 7
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_42

    .line 14
    :cond_1b
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 15
    const-string p1, ""

    .line 17
    :cond_25
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/dcloud/common/util/language/LanguageUtil;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "language_uni_broad_cast_intent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_42
    :goto_42
    return-void
.end method

.method public uniReady()V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Lio/dcloud/feature/weex/WXBaseWrapper;->onReady()V

    :cond_f
    return-void
.end method

###### Class io.dcloud.feature.weex.extend.PlusModule.AnonymousClass1 (io.dcloud.feature.weex.extend.PlusModule$1)
.class Lio/dcloud/feature/weex/extend/PlusModule$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/PlusModule;->evalJSFiles(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/PlusModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$listJson:Lcom/alibaba/fastjson/JSONArray;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/PlusModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/util/Map;Lcom/alibaba/fastjson/JSONArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->this$0:Lio/dcloud/feature/weex/extend/PlusModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    iput-object p4, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$listJson:Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->this$0:Lio/dcloud/feature/weex/extend/PlusModule;

    iget-object v1, v1, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    const-string v1, "msg"

    const-string v2, "type"

    const/4 v3, -0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v0, :cond_3b

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_127

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/taobao/weex/R$string;->dcloud_feature_weex_msg_page_destroyed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_3b
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v5

    .line 11
    const-string v6, ""

    const/4 v7, 0x0

    .line 12
    :goto_46
    iget-object v8, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$listJson:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_fe

    .line 13
    iget-object v8, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$listJson:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 18
    :try_start_60
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_a7

    :catch_66
    move-exception v9

    .line 20
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v9, 0x0

    goto :goto_a7

    .line 23
    :cond_6c
    const-string v10, "/storage"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_93

    if-ne v5, v9, :cond_93

    .line 24
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v10

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v8}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 25
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 26
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_9f

    .line 30
    :cond_93
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v9

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    :cond_9f
    :goto_9f
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v9

    invoke-static {v8, v9}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v9

    :goto_a7
    if-eqz v9, :cond_c8

    .line 37
    :try_start_a9
    new-instance v8, Ljava/lang/String;

    invoke-static {v9}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_fa

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c7} :catch_fa

    goto :goto_fa

    .line 47
    :cond_c8
    iget-object v9, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v9, :cond_fa

    .line 48
    iget-object v9, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    invoke-interface {v9, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v9, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v8

    invoke-virtual {v8}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v11, Lcom/taobao/weex/R$string;->dcloud_feature_weex_msg_cannot_find_file_by_path:I

    .line 50
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-interface {v9, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v8, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iget-object v9, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    invoke-interface {v8, v9}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :catch_fa
    :cond_fa
    :goto_fa
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_46

    .line 57
    :cond_fe
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 58
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->this$0:Lio/dcloud/feature/weex/extend/PlusModule;

    iget-object v1, v1, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_127

    .line 60
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/PlusModule$1;->val$data:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_127
    return-void
.end method

###### Class io.dcloud.feature.weex.extend.PlusModule.JsData (io.dcloud.feature.weex.extend.PlusModule$JsData)
.class Lio/dcloud/feature/weex/extend/PlusModule$JsData;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/extend/PlusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsData"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field final synthetic this$0:Lio/dcloud/feature/weex/extend/PlusModule;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/PlusModule;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/PlusModule$JsData;->this$0:Lio/dcloud/feature/weex/extend/PlusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/feature/weex/extend/PlusModule$JsData;->data:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lio/dcloud/feature/weex/extend/PlusModule$JsData;->value:Ljava/lang/String;

    return-void
.end method
