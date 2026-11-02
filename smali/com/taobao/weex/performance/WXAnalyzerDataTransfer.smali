###### Class com.taobao.weex.performance.WXAnalyzerDataTransfer (com.taobao.weex.performance.WXAnalyzerDataTransfer)
.class public Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static final GROUP:Ljava/lang/String; = "WXAnalyzer"

.field public static final INTERACTION_TAG:Ljava/lang/String; = "wxInteractionAnalyzer"

.field private static final MODULE_ERROR:Ljava/lang/String; = "WXError"

.field private static final MODULE_WX_APM:Ljava/lang/String; = "wxapm"

.field public static isOpenPerformance:Z = false

.field private static sOpenInteractionLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInteractionLogOpen()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->sOpenInteractionLog:Z

    return v0
.end method

.method public static switchInteractionLog(Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->sOpenInteractionLog:Z

    if-eq v0, p0, :cond_19

    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    if-nez v0, :cond_9

    goto :goto_19

    .line 4
    :cond_9
    sput-boolean p0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->sOpenInteractionLog:Z

    .line 20
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "switchInteractionLog"

    invoke-virtual {v0, v1, p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static transferError(Lcom/taobao/weex/common/WXJSExceptionInfo;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_87

    .line 4
    :cond_8
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_87

    .line 9
    :cond_19
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_87

    .line 13
    :cond_24
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getErrCode()Lcom/taobao/weex/common/WXErrorCode;

    move-result-object p0

    .line 16
    :try_start_28
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "instanceId"

    .line 17
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v2, "url"

    .line 18
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "errorCode"

    .line 19
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "errorMsg"

    .line 20
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "errorGroup"

    .line 21
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorGroup()Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_60} :catch_61

    goto :goto_67

    :catch_61
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    .line 26
    :goto_67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 27
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorType()Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WXAnalyzer"

    const-string v4, "WXError"

    invoke-interface {v1, v3, v4, v2, p1}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_87
    :goto_87
    return-void
.end method

.method public static transferInteractionInfo(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 7

    .line 1
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-nez v0, :cond_6

    goto/16 :goto_81

    .line 5
    :cond_6
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_81

    .line 9
    :cond_17
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v3

    iget-wide v3, v3, Lcom/taobao/weex/common/WXPerformance;->renderUnixTimeOrigin:J

    sub-long/2addr v1, v3

    .line 12
    :try_start_26
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "renderOriginDiffTime"

    .line 13
    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "type"

    .line 14
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ref"

    .line 15
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "style"

    .line 16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "attrs"

    .line 17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_5f} :catch_7d

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wxapm"

    const-string/jumbo v5, "wxinteraction"

    invoke-interface {v2, v4, v3, v5, v1}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :catch_7d
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_81
    :goto_81
    return-void
.end method

.method public static transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 1
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-nez v0, :cond_6

    goto/16 :goto_82

    .line 4
    :cond_6
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->sOpenInteractionLog:Z

    if-eqz v0, :cond_34

    const-string v0, "stage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[client][stage]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wxInteractionAnalyzer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_34
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_45

    goto :goto_82

    .line 12
    :cond_45
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/WXSDKInstance;

    if-nez p0, :cond_56

    goto :goto_82

    .line 19
    :cond_56
    :try_start_56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_63} :catch_7e

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 26
    :goto_67
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 27
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 28
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wxapm"

    invoke-interface {v0, v2, v1, p1, p2}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :catch_7e
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_82
    :goto_82
    return-void
.end method
