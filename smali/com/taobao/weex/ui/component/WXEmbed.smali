###### Class com.taobao.weex.ui.component.WXEmbed (com.taobao.weex.ui.component.WXEmbed)
.class public Lcom/taobao/weex/ui/component/WXEmbed;
.super Lcom/taobao/weex/ui/component/WXDiv;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
.implements Lcom/taobao/weex/ui/component/NestedContainer;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;,
        Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;,
        Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;,
        Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;,
        Lcom/taobao/weex/ui/component/WXEmbed$FailToH5Listener;
    }
.end annotation


# static fields
.field private static ERROR_IMG_HEIGHT:I = 0x0

.field private static ERROR_IMG_WIDTH:I = 0x0

.field public static final ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final PRIORITY_HIGH:Ljava/lang/String; = "high"

.field public static final PRIORITY_LOW:Ljava/lang/String; = "low"

.field public static final PRIORITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final STRATEGY_HIGH:Ljava/lang/String; = "high"

.field public static final STRATEGY_NONE:Ljava/lang/String; = "none"

.field public static final STRATEGY_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field private hiddenTime:J

.field private mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

.field private mIsVisible:Z

.field private mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

.field protected mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

.field private originUrl:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private strategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v0, 0x43870000    # 270.0f

    const/16 v1, 0x2ee

    .line 1
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    const/high16 v0, 0x43820000    # 260.0f

    .line 2
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    .line 8
    const-string p2, "normal"

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 138
    new-instance p3, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    invoke-direct {p3, p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;-><init>(Lcom/taobao/weex/ui/component/WXEmbed;)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    .line 139
    new-instance p3, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-direct {p3, p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;-><init>(Lcom/taobao/weex/ui/component/WXEmbed;)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    .line 141
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {v0, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    .line 142
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    .line 143
    instance-of p3, p1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;

    if-eqz p3, :cond_4e

    .line 144
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    const-string v0, "itemId"

    invoke-virtual {p3, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4e

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;->putEmbed(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXEmbed;)V

    .line 149
    :cond_4e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    const-string v0, "priority"

    invoke-virtual {p3, v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string/jumbo p3, "strategy"

    invoke-virtual {p2, p3}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "none"

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string/jumbo p2, "wxEmbedCount"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXEmbed;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXEmbed;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 1
    sget v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 1
    sget v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getLevel(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    return-wide v0
.end method

.method private createInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->createNestedInstance(Lcom/taobao/weex/ui/component/NestedContainer;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKInstance;->setParentInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v2, "disableInstanceVisibleListener"

    invoke-virtual {v0, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    .line 7
    :cond_22
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->resetFirstLaterScroller()V

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKInstance;->addInstanceOnFireEventInterceptor(Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;)V

    .line 10
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKInstance;->registerOnWXScrollListener(Lcom/taobao/weex/common/OnWXScrollListener;)V

    .line 12
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    if-eqz v2, :cond_52

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    if-eqz v2, :cond_52

    .line 14
    invoke-interface {v2, v0}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->transformUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const/4 v0, 0x0

    return-object v0

    :cond_52
    move-object v2, v0

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 22
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    .line 23
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!!wx embed src url is null"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-interface {v0, p0, v3, v2}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 31
    :cond_7c
    const-string/jumbo v0, "wxInstanceType"

    const-string v3, "embed"

    invoke-virtual {v1, v0, v3}, Lcom/taobao/weex/WXSDKInstance;->setContainerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    const-string/jumbo v3, "wxParentPage"

    invoke-virtual {v1, v3, v0}, Lcom/taobao/weex/WXSDKInstance;->setContainerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v6, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-object v1
.end method

.method private destoryNestInstance()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_1d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_27

    .line 5
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 8
    :cond_27
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WXEmbed destoryNestInstance priority "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " embeds size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-nez v1, :cond_64

    const/4 v1, 0x0

    goto :goto_6e

    :cond_64
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    :goto_6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " strategy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_82
    return-void
.end method

.method private doAutoEmbedMemoryStrategy()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 2
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_90

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    const-string v1, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    goto :goto_90

    .line 6
    :cond_20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-nez v0, :cond_3a

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    new-instance v1, Ljava/util/PriorityQueue;

    new-instance v2, Lcom/taobao/weex/ui/component/WXEmbed$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/component/WXEmbed$1;-><init>(Lcom/taobao/weex/ui/component/WXEmbed;)V

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    .line 19
    :cond_3a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    .line 21
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getMaxHiddenEmbedsNum()I

    move-result v0

    if-ltz v0, :cond_90

    .line 24
    :goto_67
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getMaxHiddenEmbedsNum()I

    move-result v1

    if-le v0, v1, :cond_90

    .line 25
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXEmbed;

    .line 26
    iget-boolean v1, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v1, :cond_8c

    goto :goto_67

    .line 30
    :cond_8c
    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    goto :goto_67

    .line 36
    :cond_90
    :goto_90
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_b5

    .line 37
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_b5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 38
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_b5
    return-void
.end method

.method private static final getLevel(Lcom/taobao/weex/ui/component/WXEmbed;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 4
    const-string v1, "high"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 5
    const-string p0, "low"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_16
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, 0xa

    return p0

    :cond_1f
    const/4 p0, 0x5

    return p0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 2
    const-string v0, "scrollstart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->addInterceptEvent(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_11
    const-string v0, "scrollend"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->addInterceptEvent(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1f
    const-string v0, "scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mInstanceOnScrollFireEventInterceptor:Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->addInterceptEvent(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/WXSDKInstance;->addLayerOverFlowListener(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->destroy()V

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    :cond_16
    return-void
.end method

.method public getOriginUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected loadContent()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 4
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->createInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    if-eqz v0, :cond_26

    .line 6
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onCreated(Lcom/taobao/weex/ui/component/NestedContainer;Lcom/taobao/weex/WXSDKInstance;)V

    :cond_26
    return-void
.end method

.method public onActivityDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->onActivityDestroy()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityDestroy()V

    :cond_a
    return-void
.end method

.method public onActivityPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->onActivityPause()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityPause()V

    :cond_a
    return-void
.end method

.method public onActivityResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->onActivityResume()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityResume()V

    :cond_a
    return-void
.end method

.method public onActivityStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->onActivityStart()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStart()V

    :cond_a
    return-void
.end method

.method public onActivityStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->onActivityStop()V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStop()V

    :cond_a
    return-void
.end method

.method public onAppear()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4
    const-string/jumbo v1, "viewappear"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public onDisappear()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_14

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4
    const-string/jumbo v1, "viewdisappear"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public reload()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    :cond_b
    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeLayerOverFlowListener(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public renderNewURL(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    return-void
.end method

.method public setOnNestEventListener(Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iput-object p1, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "priority"
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_24

    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 14
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_1a
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 17
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXEmbed;->setSrc(Ljava/lang/String;)V

    :cond_23
    return v1

    .line 20
    :cond_24
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 22
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXEmbed;->setPriority(Ljava/lang/String;)V

    :cond_2d
    return v1
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_e

    .line 4
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 7
    :cond_e
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    :cond_1d
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setVisibility(Ljava/lang/String;)V

    .line 2
    const-string/jumbo v0, "visible"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 3
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eq v0, p1, :cond_31

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz p1, :cond_23

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v0, :cond_20

    .line 7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    goto :goto_23

    .line 9
    :cond_20
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    :cond_23
    :goto_23
    if-nez p1, :cond_2c

    .line 14
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_2c

    .line 15
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onViewDisappear()V

    .line 18
    :cond_2c
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    .line 19
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->doAutoEmbedMemoryStrategy()V

    :cond_31
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.AnonymousClass1 (com.taobao.weex.ui.component.WXEmbed$1)
.class Lcom/taobao/weex/ui/component/WXEmbed$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXEmbed;->doAutoEmbedMemoryStrategy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/taobao/weex/ui/component/WXEmbed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXEmbed;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$1;->this$0:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/taobao/weex/ui/component/WXEmbed;Lcom/taobao/weex/ui/component/WXEmbed;)I
    .registers 5

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result v0

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXEmbed;->access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    return v0

    .line 6
    :cond_c
    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXEmbed;->access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    check-cast p2, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXEmbed$1;->compare(Lcom/taobao/weex/ui/component/WXEmbed;Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result p1

    return p1
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.ClickToReloadListener (com.taobao.weex.ui.component.WXEmbed$ClickToReloadListener)
.class public Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickToReloadListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/taobao/weex/ui/component/NestedContainer;Lcom/taobao/weex/WXSDKInstance;)V
    .registers 3

    return-void
.end method

.method public onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_NETWORK_BUNDLE_DOWNLOAD_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v0, :cond_6c

    .line 5
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    .line 6
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    sget v1, Lcom/taobao/weex/R$drawable;->weex_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/taobao/weex/ui/component/WXEmbed;->access$100()I

    move-result v2

    invoke-static {}, Lcom/taobao/weex/ui/component/WXEmbed;->access$200()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 9
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 13
    new-instance v1, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;-><init>(Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;Landroid/widget/ImageView;Lcom/taobao/weex/ui/component/WXEmbed;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NetWork failure :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",\n error message :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WXEmbed"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    return-void
.end method

.method public onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public transformUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.ClickToReloadListener.AnonymousClass1 (com.taobao.weex.ui.component.WXEmbed$ClickToReloadListener$1)
.class Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

.field final synthetic val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;Landroid/widget/ImageView;Lcom/taobao/weex/ui/component/WXEmbed;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->this$0:Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener$1;->val$comp:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.EmbedInstanceOnScrollFireEventInterceptor (com.taobao.weex.ui.component.WXEmbed$EmbedInstanceOnScrollFireEventInterceptor)
.class Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;
.super Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/common/OnWXScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbedInstanceOnScrollFireEventInterceptor"
.end annotation


# instance fields
.field private firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

.field private mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    return-void
.end method

.method private findFirstLayerScroller()Lcom/taobao/weex/ui/component/WXComponent;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 4
    :cond_8
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v2, :cond_11

    return-object v0

    .line 8
    :cond_11
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 10
    :cond_19
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 11
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_28

    goto :goto_44

    .line 15
    :cond_28
    instance-of v3, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v3, :cond_2d

    return-object v0

    .line 18
    :cond_2d
    instance-of v3, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_19

    .line 19
    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v3, 0x0

    .line 20
    :goto_34
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_19

    .line 21
    invoke-virtual {v0, v3}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_44
    :goto_44
    return-object v1
.end method

.method private initFirstLayerScroller()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_37

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->findFirstLayerScroller()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_37

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->getListenEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 6
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    goto :goto_14

    :cond_37
    return-void
.end method


# virtual methods
.method public onFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v0, :cond_38

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_38

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_38

    .line 6
    :cond_13
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_1a

    .line 7
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->initFirstLayerScroller()V

    .line 9
    :cond_1a
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_1f

    goto :goto_38

    .line 12
    :cond_1f
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 13
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onScrollStateChanged(Landroid/view/View;III)V
    .registers 5

    return-void
.end method

.method public onScrolled(Landroid/view/View;II)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_5

    goto :goto_12

    .line 4
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->getListenEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_12

    .line 5
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->initFirstLayerScroller()V

    :cond_12
    :goto_12
    return-void
.end method

.method public resetFirstLaterScroller()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.EmbedManager (com.taobao.weex.ui.component.WXEmbed$EmbedManager)
.class public interface abstract Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmbedManager"
.end annotation


# virtual methods
.method public abstract getEmbed(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXEmbed;
.end method

.method public abstract putEmbed(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXEmbed;)V
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.EmbedRenderListener (com.taobao.weex.ui.component.WXEmbed$EmbedRenderListener)
.class Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/IWXRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbedRenderListener"
.end annotation


# instance fields
.field mComponent:Lcom/taobao/weex/ui/component/WXEmbed;

.field mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mComponent:Lcom/taobao/weex/ui/component/WXEmbed;

    .line 3
    new-instance p1, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;

    invoke-direct {p1}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    return-void
.end method


# virtual methods
.method public onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    if-eqz p1, :cond_9

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mComponent:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-interface {p1, v0, p2, p3}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .registers 4

    return-void
.end method

.method public onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .registers 4

    return-void
.end method

.method public onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mComponent:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXEmbed.FailToH5Listener (com.taobao.weex.ui.component.WXEmbed$FailToH5Listener)
.class public Lcom/taobao/weex/ui/component/WXEmbed$FailToH5Listener;
.super Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailToH5Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p2, :cond_62

    .line 1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v0, :cond_62

    const-string v0, "1|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/NestedContainer;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object p2

    .line 3
    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 7
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setFileAccess(Ljava/lang/Object;Z)V

    .line 9
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->openJSEnabled(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;)V

    .line 11
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 12
    const-string v0, "accessibility"

    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 13
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 16
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$000(Lcom/taobao/weex/ui/component/WXEmbed;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_62
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
