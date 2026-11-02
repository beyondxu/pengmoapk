###### Class com.taobao.weex.common.WXPerformance (com.taobao.weex.common.WXPerformance)
.class public Lcom/taobao/weex/common/WXPerformance;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXPerformance$Measure;,
        Lcom/taobao/weex/common/WXPerformance$Dimension;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CACHE_TYPE:Ljava/lang/String; = "cacheType"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static TRACE_DATA:Z

.field public static final VIEW_LIMIT_HEIGHT:I

.field public static final VIEW_LIMIT_WIDTH:I


# instance fields
.field public JSLibInitTime:J

.field public JSLibSize:D

.field public JSLibVersion:Ljava/lang/String;

.field public JSTemplateSize:D

.field public WXSDKVersion:Ljava/lang/String;

.field public actualNetworkTime:J

.field public args:Ljava/lang/String;

.field public avgFPS:J

.field public backImproveMemory:J

.field public bizType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cacheType:Ljava/lang/String;

.field public callBridgeTime:J

.field public callCreateFinishTime:J

.field public callCreateInstanceTime:J

.field public cellExceedNum:I

.field public communicateTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public componentCount:J

.field public componentCreateTime:J

.field public connectionType:Ljava/lang/String;

.field public cssLayoutTime:J

.field public errCode:Ljava/lang/String;

.field public errMsg:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public firstScreenJSFExecuteTime:J

.field public fluency:D

.field public fsCallEventTotalNum:I

.field public fsCallJsTotalNum:I

.field public fsCallJsTotalTime:J

.field public fsCallNativeTotalNum:I

.field public fsCallNativeTotalTime:J

.field public fsComponentCount:I

.field public fsComponentCreateTime:I

.field public fsRenderTime:J

.field public fsRequestNum:I

.field public interactionRealUnixTime:J

.field public interactionTime:J

.field public interactionViewAddCount:I

.field public interactionViewAddLimitCount:I

.field public localInteractionViewAddCount:I

.field public localReadTime:D

.field public mActionAddElementCount:I

.field public mActionAddElementSumTime:I

.field private mErrMsgBuilder:Ljava/lang/StringBuilder;

.field private mInstanceId:Ljava/lang/String;

.field public maxDeepVDomLayer:I

.field public maxDeepViewLayer:I

.field public measureTimes:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public networkTime:J

.field public newFsRenderTime:J

.field public packageSpendTime:J

.field public pageName:Ljava/lang/String;

.field public parseJsonTime:J

.field public pureNetworkTime:J

.field public renderFailedDetail:Ljava/lang/String;

.field public renderTimeOrigin:J

.field public renderUnixTimeOrigin:J

.field public requestType:Ljava/lang/String;

.field public screenRenderTime:J

.field public syncTaskTime:J

.field public templateLoadTime:J

.field public templateUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timerInvokeCount:I

.field public totalTime:D

.field public useScroller:I

.field public wrongImgSizeCount:D

.field public wxDims:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public zCacheInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_HEIGHT:I

    .line 2
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_WIDTH:I

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    sput-boolean v0, Lcom/taobao/weex/common/WXPerformance;->TRACE_DATA:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "weex"

    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    .line 11
    const-string v0, "none"

    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->cacheType:Ljava/lang/String;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 64
    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->fluency:D

    .line 77
    const-string v0, "default"

    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    .line 169
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    .line 174
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    .line 193
    const-string v1, ""

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    .line 196
    const-string v1, "other"

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    const/4 v1, 0x5

    .line 207
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    .line 214
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    .line 222
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    .line 223
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    .line 229
    iput-object p1, p0, Lcom/taobao/weex/common/WXPerformance;->mInstanceId:Ljava/lang/String;

    return-void
.end method

.method public static getDimensions()[Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance$Dimension;->values()[Lcom/taobao/weex/common/WXPerformance$Dimension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 5
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMeasures()[Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance$Measure;->values()[Lcom/taobao/weex/common/WXPerformance$Measure;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 5
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public afterInstanceDestroy(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public appendErrMsg(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public beforeInstanceRender(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    .line 2
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->renderUnixTimeOrigin:J

    return-void
.end method

.method public getDimensionMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->zCacheInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->cacheType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 13
    const-string/jumbo v2, "unKnow"

    const-string/jumbo v3, "wxContainerName"

    if-nez v1, :cond_81

    move-object v4, v2

    goto :goto_8b

    .line 14
    :cond_81
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_8b
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string/jumbo v3, "wxInstanceType"

    if-nez v1, :cond_95

    move-object v4, v2

    goto :goto_9f

    .line 16
    :cond_95
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_9f
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string/jumbo v3, "wxParentPage"

    if-nez v1, :cond_a8

    goto :goto_b3

    .line 18
    :cond_a8
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :goto_b3
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->templateUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeasureMap()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->fsRenderTime:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 37
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    cmp-long v7, v0, v2

    if-eqz v7, :cond_13

    .line 2
    iget-wide v2, p0, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_1c

    .line 4
    :cond_13
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    cmpl-double v2, v0, v4

    if-eqz v2, :cond_1a

    goto :goto_1c

    :cond_1a
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 10
    :goto_1c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibSize:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/weex/common/WXPerformance;->callCreateInstanceTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallNativeTotalTime:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallNativeTotalNum:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->maxDeepViewLayer:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->avgFPS:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->fluency:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->backImproveMemory:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->callCreateFinishTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->interactionTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddCount:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->newFsRenderTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->callBridgeTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->cssLayoutTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->parseJsonTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->localReadTime:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->templateLoadTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->syncTaskTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->packageSpendTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x2

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x3

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x4

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public getPerfData()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "networkTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " actualNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " connectionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " firstScreenRenderTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " firstScreenJSFExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " componentCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " JSTemplateSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " SDKInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " JSLibVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WXSDKVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " useScroller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bizType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",templateLoadTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->templateLoadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",localReadTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->localReadTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",templateUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",JSTemplateSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",communicateTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",screenRenderTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",firstScreenJSFExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",componentCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",syncTaskTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->syncTaskTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",pureNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",networkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",actualNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",packageSpendTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->packageSpendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",connectionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",initInvokeTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",initExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",SDKInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",WXSDKVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",errCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",renderFailedDetail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->renderFailedDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",arg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",errMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXPerformance;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :cond_131
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.taobao.weex.common.WXPerformance.Dimension (com.taobao.weex.common.WXPerformance$Dimension)
.class public final enum Lcom/taobao/weex/common/WXPerformance$Dimension;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/common/WXPerformance$Dimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum scheme:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum spm:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxContainerName:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxInstanceType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxParentPage:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;


# direct methods
.method private static synthetic $values()[Lcom/taobao/weex/common/WXPerformance$Dimension;
    .registers 3

    const/16 v0, 0x15

    .line 1
    new-array v0, v0, [Lcom/taobao/weex/common/WXPerformance$Dimension;

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->spm:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->scheme:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxContainerName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxInstanceType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxParentPage:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "JSLibVersion"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 2
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "WXSDKVersion"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 3
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "pageName"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 4
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "spm"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->spm:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 5
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "scheme"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->scheme:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 6
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "cacheType"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 7
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "requestType"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 8
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "networkType"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 9
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "connectionType"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 10
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "zcacheInfo"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 11
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxContainerName"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxContainerName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 12
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxInstanceType"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxInstanceType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 13
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxParentPage"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxParentPage:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 14
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim1"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 15
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim2"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 16
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim3"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 17
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim4"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 18
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim5"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 19
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string v1, "bizType"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 20
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "templateUrl"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 21
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "useScroller"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 22
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance$Dimension;->$values()[Lcom/taobao/weex/common/WXPerformance$Dimension;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXPerformance$Dimension;
    .registers 2

    .line 1
    const-class v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/common/WXPerformance$Dimension;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXPerformance$Dimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXPerformance$Dimension;

    return-object v0
.end method

###### Class com.taobao.weex.common.WXPerformance.Measure (com.taobao.weex.common.WXPerformance$Measure)
.class public final enum Lcom/taobao/weex/common/WXPerformance$Measure;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Measure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/common/WXPerformance$Measure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

.field public static final enum totalTime:Lcom/taobao/weex/common/WXPerformance$Measure;


# instance fields
.field private mMaxRange:D

.field private mMinRange:D


# direct methods
.method private static synthetic $values()[Lcom/taobao/weex/common/WXPerformance$Measure;
    .registers 3

    const/16 v0, 0x35

    .line 1
    new-array v0, v0, [Lcom/taobao/weex/common/WXPerformance$Measure;

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->totalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v1, "JSLibSize"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 3
    new-instance v1, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v4, 0x0

    const-wide v6, 0x40f3880000000000L    # 80000.0

    const-string v2, "JSLibInitTime"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 4
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v5, 0x0

    const-wide v7, 0x40fd4c0000000000L    # 120000.0

    const-string v3, "SDKInitTime"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 5
    new-instance v3, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v6, 0x0

    const-wide v8, 0x40b3880000000000L    # 5000.0

    const-string v4, "SDKInitInvokeTime"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v9}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 6
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v7, 0x0

    const-wide v9, 0x40b3880000000000L    # 5000.0

    const-string v5, "SDKInitExecuteTime"

    const/4 v6, 0x4

    invoke-direct/range {v4 .. v10}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 7
    new-instance v5, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v8, 0x0

    const-wide v10, 0x40b3880000000000L    # 5000.0

    const-string v6, "JSTemplateSize"

    const/4 v7, 0x5

    invoke-direct/range {v5 .. v11}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v5, Lcom/taobao/weex/common/WXPerformance$Measure;->JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 8
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v9, 0x0

    const-wide v11, 0x40cd4c0000000000L    # 15000.0

    const-string v7, "pureNetworkTime"

    const/4 v8, 0x6

    invoke-direct/range {v6 .. v12}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Measure;->pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 9
    new-instance v7, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v10, 0x0

    const-wide v12, 0x40cd4c0000000000L    # 15000.0

    const-string v8, "networkTime"

    const/4 v9, 0x7

    invoke-direct/range {v7 .. v13}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v7, Lcom/taobao/weex/common/WXPerformance$Measure;->networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 10
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v3, 0x0

    const-wide v5, 0x40a7700000000000L    # 3000.0

    const-string v1, "fsCreateInstanceTime"

    const/16 v2, 0x8

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 11
    new-instance v1, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v4, 0x0

    const-wide v6, 0x40b3880000000000L    # 5000.0

    const-string v2, "fsCallJsTotalTime"

    const/16 v3, 0x9

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 12
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v3, "fsCallJsTotalNum"

    const/16 v4, 0xa

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 13
    new-instance v3, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v6, 0x0

    const-wide v8, 0x40b3880000000000L    # 5000.0

    const-string v4, "fsCallNativeTotalTime"

    const/16 v5, 0xb

    invoke-direct/range {v3 .. v9}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 14
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v7, 0x0

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v5, "fsCallNativeTotalNum"

    const/16 v6, 0xc

    invoke-direct/range {v4 .. v10}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 15
    new-instance v5, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v8, 0x0

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v6, "fsCallEventTotalNum"

    const/16 v7, 0xd

    invoke-direct/range {v5 .. v11}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v5, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 16
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v9, 0x0

    const-wide v11, 0x40f86a0000000000L    # 100000.0

    const-string v7, "fsComponentCount"

    const/16 v8, 0xe

    invoke-direct/range {v6 .. v12}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 17
    new-instance v7, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v10, 0x0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v8, "fsComponentCreateTime"

    const/16 v9, 0xf

    invoke-direct/range {v7 .. v13}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v7, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 18
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v3, 0x0

    const-wide v5, 0x40b3880000000000L    # 5000.0

    const-string v1, "fsRenderTime"

    const/16 v2, 0x10

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 19
    new-instance v1, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-string v2, "fsRequestNum"

    const/16 v3, 0x11

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 20
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v5, 0x0

    const-wide v7, 0x40c3880000000000L    # 10000.0

    const-string v3, "callCreateFinishTime"

    const/16 v4, 0x12

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Measure;->callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 21
    new-instance v3, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v4, "cellExceedNum"

    const/16 v5, 0x13

    invoke-direct/range {v3 .. v9}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 22
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v7, 0x0

    const-wide v9, 0x40b3880000000000L    # 5000.0

    const-string v5, "communicateTotalTime"

    const/16 v6, 0x14

    invoke-direct/range {v4 .. v10}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 23
    new-instance v5, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v8, 0x0

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v6, "maxDeepViewLayer"

    const/16 v7, 0x15

    invoke-direct/range {v5 .. v11}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v5, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 24
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v9, 0x0

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v7, "maxDeepVDomLayer"

    const/16 v8, 0x16

    invoke-direct/range {v6 .. v12}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 25
    new-instance v7, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v10, 0x0

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const-string v8, "componentCount"

    const/16 v9, 0x17

    invoke-direct/range {v7 .. v13}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v7, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 26
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v1, "componentCreateTime"

    const/16 v2, 0x18

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 27
    new-instance v1, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v4, 0x0

    const-wide v6, 0x404e800000000000L    # 61.0

    const-string v2, "avgFps"

    const/16 v3, 0x19

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 28
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string/jumbo v3, "timerCount"

    const/16 v4, 0x1a

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Measure;->timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 30
    new-instance v3, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v4, "MaxImproveMemory"

    const/16 v5, 0x1b

    invoke-direct/range {v3 .. v9}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 31
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v7, 0x0

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v5, "BackImproveMemory"

    const/16 v6, 0x1c

    invoke-direct/range {v4 .. v10}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Measure;->BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 32
    new-instance v5, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v8, 0x0

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v6, "PushImproveMemory"

    const/16 v7, 0x1d

    invoke-direct/range {v5 .. v11}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v5, Lcom/taobao/weex/common/WXPerformance$Measure;->PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 33
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v9, 0x0

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v7, "measureTime1"

    const/16 v8, 0x1e

    invoke-direct/range {v6 .. v12}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 34
    new-instance v7, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v10, 0x0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v8, "measureTime2"

    const/16 v9, 0x1f

    invoke-direct/range {v7 .. v13}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v7, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 35
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v3, 0x0

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v1, "measureTime3"

    const/16 v2, 0x20

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 36
    new-instance v1, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v2, "measureTime4"

    const/16 v3, 0x21

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 37
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v3, "measureTime5"

    const/16 v4, 0x22

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 39
    new-instance v3, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v4, "callBridgeTime"

    const/16 v5, 0x23

    invoke-direct/range {v3 .. v9}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 40
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v7, 0x0

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v5, "cssLayoutTime"

    const/16 v6, 0x24

    invoke-direct/range {v4 .. v10}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Measure;->cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 41
    new-instance v5, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v8, 0x0

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v6, "parseJsonTime"

    const/16 v7, 0x25

    invoke-direct/range {v5 .. v11}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v5, Lcom/taobao/weex/common/WXPerformance$Measure;->parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 43
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v9, 0x0

    const-wide v11, 0x40b3880000000000L    # 5000.0

    const-string v7, "communicateTime"

    const/16 v8, 0x26

    invoke-direct/range {v6 .. v12}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 44
    new-instance v7, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v10, 0x0

    const-wide v12, 0x40b3880000000000L    # 5000.0

    const-string v8, "screenRenderTime"

    const/16 v9, 0x27

    invoke-direct/range {v7 .. v13}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v7, Lcom/taobao/weex/common/WXPerformance$Measure;->screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 45
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v3, 0x0

    const-wide v5, 0x40b3880000000000L    # 5000.0

    const-string/jumbo v1, "totalTime"

    const/16 v2, 0x28

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->totalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 46
    new-instance v1, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v4, 0x0

    const-wide v6, 0x40b3880000000000L    # 5000.0

    const-string v2, "localReadTime"

    const/16 v3, 0x29

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 47
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v5, 0x0

    const-wide v7, 0x40b3880000000000L    # 5000.0

    const-string/jumbo v3, "templateLoadTime"

    const/16 v4, 0x2a

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Measure;->templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 48
    new-instance v3, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v6, 0x0

    const-wide v8, 0x40b3880000000000L    # 5000.0

    const-string v4, "packageSpendTime"

    const/16 v5, 0x2b

    invoke-direct/range {v3 .. v9}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 49
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v7, 0x0

    const-wide v9, 0x40b3880000000000L    # 5000.0

    const-string/jumbo v5, "syncTaskTime"

    const/16 v6, 0x2c

    invoke-direct/range {v4 .. v10}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Measure;->syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 50
    new-instance v5, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v8, 0x0

    const-wide v10, 0x40b3880000000000L    # 5000.0

    const-string v6, "actualNetworkTime"

    const/16 v7, 0x2d

    invoke-direct/range {v5 .. v11}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v5, Lcom/taobao/weex/common/WXPerformance$Measure;->actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 51
    new-instance v6, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v9, 0x0

    const-wide v11, 0x40b3880000000000L    # 5000.0

    const-string v7, "firstScreenJSFExecuteTime"

    const/16 v8, 0x2e

    invoke-direct/range {v6 .. v12}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v6, Lcom/taobao/weex/common/WXPerformance$Measure;->firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 54
    new-instance v7, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v10, 0x0

    const-wide v12, 0x4059400000000000L    # 101.0

    const-string v8, "fluency"

    const/16 v9, 0x2f

    invoke-direct/range {v7 .. v13}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v7, Lcom/taobao/weex/common/WXPerformance$Measure;->fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 55
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v3, 0x0

    const-wide v5, 0x409f400000000000L    # 2000.0

    const-string v1, "imgSizeCount"

    const/16 v2, 0x30

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 56
    new-instance v1, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v4, 0x0

    const-wide v6, 0x40c3880000000000L    # 10000.0

    const-string v2, "interactionTime"

    const/16 v3, 0x31

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v1, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 57
    new-instance v2, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v3, "interactionViewAddCount"

    const/16 v4, 0x32

    invoke-direct/range {v2 .. v8}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v2, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 58
    new-instance v3, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v4, "interactionViewAddLimitCount"

    const/16 v5, 0x33

    invoke-direct/range {v3 .. v9}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 59
    new-instance v4, Lcom/taobao/weex/common/WXPerformance$Measure;

    const-wide/16 v7, 0x0

    const-wide v9, 0x40c3880000000000L    # 10000.0

    const-string v5, "newFsRenderTime"

    const/16 v6, 0x34

    invoke-direct/range {v4 .. v10}, Lcom/taobao/weex/common/WXPerformance$Measure;-><init>(Ljava/lang/String;IDD)V

    sput-object v4, Lcom/taobao/weex/common/WXPerformance$Measure;->newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    .line 60
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance$Measure;->$values()[Lcom/taobao/weex/common/WXPerformance$Measure;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Measure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDD)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-wide p3, p0, Lcom/taobao/weex/common/WXPerformance$Measure;->mMinRange:D

    .line 3
    iput-wide p5, p0, Lcom/taobao/weex/common/WXPerformance$Measure;->mMaxRange:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXPerformance$Measure;
    .registers 2

    .line 1
    const-class v0, Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/common/WXPerformance$Measure;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/common/WXPerformance$Measure;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXPerformance$Measure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXPerformance$Measure;

    return-object v0
.end method


# virtual methods
.method public getMaxRange()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance$Measure;->mMaxRange:D

    return-wide v0
.end method

.method public getMinRange()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance$Measure;->mMinRange:D

    return-wide v0
.end method
