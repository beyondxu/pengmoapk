###### Class com.taobao.weex.WXSDKInstance (com.taobao.weex.WXSDKInstance)
.class public Lcom/taobao/weex/WXSDKInstance;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lio/dcloud/feature/uniapp/AbsSDKInstance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;,
        Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;,
        Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;,
        Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;,
        Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;,
        Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;,
        Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;,
        Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;
    }
.end annotation


# static fields
.field public static ACTION_DEBUG_INSTANCE_REFRESH:Ljava/lang/String; = "DEBUG_INSTANCE_REFRESH"

.field public static ACTION_INSTANCE_RELOAD:Ljava/lang/String; = "INSTANCE_RELOAD"

.field public static final BUNDLE_URL:Ljava/lang/String; = "bundleUrl"

.field private static final SOURCE_TEMPLATE_BASE64_MD5:Ljava/lang/String; = "templateSourceBase64MD5"

.field public static requestUrl:Ljava/lang/String; = "requestUrl"

.field static sScreenHeight:I = -0x1


# instance fields
.field public bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field private componentsInfoExceedGPULimit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private createInstanceHeartBeat:Z

.field private enableFullScreenHeight:Z

.field private enableLayerType:Z

.field frameViewEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private hasException:Z

.field public hiddenEmbeds:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/taobao/weex/ui/component/WXEmbed;",
            ">;"
        }
    .end annotation
.end field

.field private inactiveAddElementAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/action/GraphicActionAddElement;",
            ">;"
        }
    .end annotation
.end field

.field private isCommit:Z

.field private isDestroy:Z

.field private isFrameShow:Z

.field private isImmersive:Z

.field public isNewFsEnd:Z

.field private isOnSizeChangedRender:Z

.field private isPreDownLoad:Z

.field private isPreInit:Z

.field private volatile isPreRenderMode:Z

.field private isRenderSuccess:Z

.field private isViewDisAppear:Z

.field private mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

.field private mAutoAdjustDeviceWidth:Z

.field private mBundleUrl:Ljava/lang/String;

.field private mComponentObserver:Lcom/taobao/weex/ComponentObserver;

.field private mContainerInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentBoxMeasurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/taobao/weex/layout/ContentBoxMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mCreateInstance:Z

.field private mCurrentGround:Z

.field private mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

.field private mDefaultFontSize:I

.field private mDisableSkipFrameworkInit:Z

.field public mEnd:Z

.field public mExecJSTraceId:I

.field private mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

.field private mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

.field private mGlobalEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHasCreateFinish:Z

.field private mHttpListener:Lcom/taobao/weex/WXHttpListener;

.field private mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

.field private final mInstanceId:Ljava/lang/String;

.field private mInstanceOnFireEventInterceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mInstanceViewPortWidth:F

.field private mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

.field private mLayerOverFlowListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDeepLayer:I

.field private mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

.field private mNeedReLoad:Z

.field private mNeedValidate:Z

.field private mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

.field mOnSizeListener:Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;

.field private mOriginalContext:Landroid/content/Context;

.field private mParentInstance:Lcom/taobao/weex/WXSDKInstance;

.field private mRefreshStartTime:J

.field private mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

.field private mRenderListener:Lcom/taobao/weex/IWXRenderListener;

.field public mRenderStartNanos:J

.field public mRenderStartTime:J

.field private mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

.field private mRenderType:Ljava/lang/String;

.field private mRendered:Z

.field private mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

.field private mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

.field public mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

.field private mUniPagePath:Ljava/lang/String;

.field private mUseScroller:Z

.field private mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field private mUserTrackParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWXActionbarHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mWXBackPressedHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

.field private mWXScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/common/OnWXScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

.field private maxHiddenEmbedsNum:I

.field public measureTimes:[J

.field public mwxDims:[Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public templateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackComponent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 4756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4757
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 4758
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    .line 4770
    const-string v1, ""

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 4772
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    .line 4774
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 4775
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 4776
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 4777
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 4780
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 4781
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 4783
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 4784
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 4785
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 4786
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 4787
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 4788
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 4790
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 4794
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 4795
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 4802
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 4804
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    .line 4809
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    .line 4810
    new-array v3, v3, [J

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 4813
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 4818
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 4820
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    .line 4844
    const-string v3, "platform"

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 4852
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 4882
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 4884
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 4886
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 4966
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 5155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 5434
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 5439
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 5704
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 6409
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 6763
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 7079
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 7093
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 7104
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 7127
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 7130
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    .line 7131
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 7132
    new-instance v1, Lcom/taobao/weex/common/WXPerformance;

    invoke-direct {v1, v0}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    .line 7133
    new-instance v1, Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-direct {v1, v0}, Lcom/taobao/weex/performance/WXInstanceApm;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    .line 7134
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 3
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    .line 19
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 20
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 21
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 22
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 25
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 29
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 30
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 31
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 32
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 33
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 35
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 39
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 40
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 49
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    .line 54
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    .line 55
    new-array v3, v3, [J

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 63
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 65
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    .line 89
    const-string v3, "platform"

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 97
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 127
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 129
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 131
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 211
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 400
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 679
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 684
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 949
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1654
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 2008
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 2324
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 2338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 2349
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2372
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 2375
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    .line 2376
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 2377
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 8

    .line 2378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2379
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 2380
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    .line 2392
    const-string v1, ""

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 2394
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    .line 2396
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 2397
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 2398
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 2399
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 2402
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 2403
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 2405
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 2406
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 2407
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 2408
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 2409
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 2410
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 2412
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 2416
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 2417
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 2424
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 2426
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    .line 2431
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    .line 2432
    new-array v3, v3, [J

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 2435
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 2440
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 2442
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    .line 2466
    const-string v3, "platform"

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 2474
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 2504
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 2506
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 2508
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 2588
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 2777
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 3056
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 3061
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 3326
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 4031
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 4385
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 4701
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 4715
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 4726
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 4749
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 4752
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    .line 4753
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 4754
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mOriginalContext:Landroid/content/Context;

    .line 4755
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 7135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7136
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 7137
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    .line 7149
    const-string v1, ""

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 7151
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    .line 7153
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 7154
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 7155
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 7156
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 7159
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 7160
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 7162
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 7163
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 7164
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 7165
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 7166
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 7167
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 7169
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 7173
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 7174
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 7181
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 7183
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    .line 7188
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    .line 7189
    new-array v3, v3, [J

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 7192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 7197
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 7199
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    .line 7223
    const-string v3, "platform"

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 7231
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 7261
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 7263
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 7265
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 7345
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 7534
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 7813
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 7818
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 8083
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 8788
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 9142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 9458
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 9472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 9483
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 9506
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 9509
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    .line 9510
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 9511
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->checkWhiteScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/WXSDKInstance;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/taobao/weex/WXSDKInstance;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/WXSDKInstance;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    return-object p0
.end method

.method private assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p1, :cond_15

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v0
.end method

.method private checkWhiteScreen()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    if-nez v0, :cond_6f

    invoke-static {}, Lcom/taobao/weex/performance/WhiteScreenUtils;->doWhiteScreenCheck()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6f

    .line 5
    :cond_b
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->isWhiteScreen(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6f

    .line 9
    :cond_12
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_WHITE_SCREEN:Lcom/taobao/weex/common/WXErrorCode;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->takeViewTreeSnapShot(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_22

    .line 12
    const-string v2, "null viewTreeMsg"

    :cond_22
    const-string/jumbo v3, "viewTree"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getWeexCoreThreadStackTrace()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "weexCoreThreadStackTrace"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/performance/WXStateRecord;->getStateInfo()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 18
    :cond_62
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkEmptyScreen"

    invoke-static {v2, v0, v4, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private destroyView(Landroid/view/View;)V
    .registers 6

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/weex/WXSDKInstance;->destroyView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7
    :cond_19
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 9
    const-string v0, "mChildrenCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/WXReflectionUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_2c
    instance-of v0, p1, Lcom/taobao/weex/common/Destroyable;

    if-eqz v0, :cond_35

    .line 13
    check-cast p1, Lcom/taobao/weex/common/Destroyable;

    invoke-interface {p1}, Lcom/taobao/weex/common/Destroyable;->destroy()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    :cond_35
    return-void

    :catch_36
    move-exception p1

    .line 16
    const-string v0, "WXSDKInstance destroyView Exception: "

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private ensureRenderArchor()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_31

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 3
    new-instance v0, Lcom/taobao/weex/RenderContainer;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/RenderContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->setRenderContainer(Lcom/taobao/weex/RenderContainer;)V

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_31
    return-void
.end method

.method private isDataRender()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method private static isDisableSkipFrameworkInDataRender()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_c
    const-string v1, "disable_skip_framework_init"

    const-string v2, "false"

    const-string/jumbo v3, "wxeagle"

    invoke-interface {v0, v3, v1, v2}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onInterceptInstanceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
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
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    if-nez v0, :cond_5

    goto :goto_1f

    .line 4
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->onInterceptFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_9

    :cond_1f
    :goto_1f
    return-void
.end method

.method private renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    const-string v1, "renderByUrlInternal"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/TimeCalculator;->createLogDetail(Ljava/lang/String;)Lcom/taobao/weex/utils/tools/LogDetail;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 3
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->ensureRenderArchor()V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 7
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 8
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/WXValidateProcessor;->needValidate(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    :cond_30
    if-nez p3, :cond_37

    .line 13
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_37
    move-object v4, p3

    .line 15
    const-string p1, "bundleUrl"

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_43

    .line 16
    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_43
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object p1

    iput-object v2, p1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p1}, Lcom/taobao/weex/performance/WXInstanceApm;->doInit()V

    .line 22
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->setPageName(Ljava/lang/String;)V

    .line 24
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo p3, "wxStartDownLoadBundle"

    if-eqz p1, :cond_86

    .line 25
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 26
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXFileUtils;->loadFileOrAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 28
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string/jumbo p2, "wxEndDownLoadBundle"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void

    :cond_86
    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    if-eqz p1, :cond_a0

    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_a0

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p4, ".wlasm"

    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 40
    sget-object p5, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v6, p5

    .line 43
    :cond_a0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object p1

    .line 45
    new-instance p4, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {p4}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 46
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p5, "bundle"

    invoke-virtual {p0, p2, p5}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c8

    .line 48
    iget-object p2, p4, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    sput-object p2, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    goto :goto_ca

    .line 50
    :cond_c8
    sput-object v2, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    .line 53
    :goto_ca
    iget-object p2, p4, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-nez p2, :cond_d5

    .line 54
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p4, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 56
    :cond_d5
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    .line 57
    iget-object p2, p4, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    iget-object p5, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v3

    invoke-static {p5, v3}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p5

    const-string/jumbo v3, "user-agent"

    invoke-interface {p2, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p2, p4, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    const-string p5, "isBundleRequest"

    const-string/jumbo v3, "true"

    invoke-interface {p2, p5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Lcom/taobao/weex/WXHttpListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/taobao/weex/WXHttpListener;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;J)V

    move-object p2, v1

    move-object v1, v2

    iput-object p2, v1, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 60
    iget-boolean p5, v1, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    iput-boolean p5, p2, Lcom/taobao/weex/WXHttpListener;->isPreDownLoadMode:Z

    .line 61
    invoke-virtual {p2, p0}, Lcom/taobao/weex/WXHttpListener;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 62
    iget-object p2, v1, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 63
    iget-object p2, v1, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    invoke-interface {p1, p4, p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    .line 64
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    return-void
.end method

.method private renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-nez v0, :cond_1c2

    if-eqz p2, :cond_1c2

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_1c2

    .line 8
    :cond_e
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    const-string v1, "renderInternal"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/TimeCalculator;->createLogDetail(Ljava/lang/String;)Lcom/taobao/weex/utils/tools/LogDetail;

    move-result-object v0

    .line 10
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 13
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->hasInit()Z

    move-result v1

    if-nez v1, :cond_25

    .line 14
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->doInit()V

    .line 16
    :cond_25
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->setPageName(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string/jumbo v2, "wxRenderTimeOrigin"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->doDelayCollectData()V

    .line 20
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "defaultBundleUrl"

    goto :goto_43

    :cond_42
    move-object v2, p1

    :goto_43
    iput-object v2, v1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 22
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, v1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 25
    :cond_53
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 26
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    const-string v2, "executeBundleJS"

    const/4 v3, -0x1

    invoke-static {v2, v1, v3}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v1

    .line 27
    iget v2, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    iput v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 28
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    .line 29
    const-string v2, "JSThread"

    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 30
    const-string v2, "B"

    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartNanos:J

    .line 35
    :cond_7b
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->ensureRenderArchor()V

    if-nez p3, :cond_85

    .line 39
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_85
    move-object v4, p3

    .line 42
    sget-boolean p3, Lcom/taobao/weex/WXEnvironment;->sDynamicMode:Z

    if-eqz p3, :cond_aa

    sget-object p3, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_aa

    const-string p3, "dynamicMode"

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_aa

    .line 43
    const-string/jumbo p2, "true"

    invoke-interface {v4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void

    :cond_aa
    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    .line 50
    iget-object p1, v1, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->length()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x44800000    # 1024.0f

    div-float/2addr p3, p4

    float-to-double p3, p3

    iput-wide p3, p1, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    .line 51
    iget-object p1, v1, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    iget-object p3, v1, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide p3, p3, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    const-string/jumbo p5, "wxBundleSize"

    invoke-virtual {p1, p5, p3, p4}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, v1, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    .line 53
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    const-string/jumbo p3, "wx_current_url"

    invoke-virtual {p1, p3, v2}, Lcom/taobao/weex/WXSDKManager;->setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInitParams()Lcom/taobao/weex/bridge/WXParams;

    move-result-object p1

    .line 59
    sget-object p3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 60
    iget-object p4, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p4

    .line 61
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p5

    invoke-virtual {p5}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getComplier()Ljava/lang/String;

    move-result-object p5

    const-string/jumbo v2, "weex"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    const/4 v2, 0x1

    if-nez p5, :cond_107

    int-to-float p5, p4

    div-float/2addr p5, p3

    .line 62
    invoke-virtual {p0, p5, v2}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    :cond_107
    if-eqz p1, :cond_172

    .line 64
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_172

    .line 65
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    .line 66
    iget-object p4, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 67
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p4

    const-string p5, "scale"

    invoke-static {p5, p4}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p4, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p4

    if-lez p4, :cond_147

    .line 70
    iget-object p4, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_148

    :cond_147
    const/4 p4, 0x0

    .line 72
    :goto_148
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p5

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceHeight()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    .line 75
    invoke-virtual {p5, v3, p1, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget-object p3, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    iget-object p4, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p4}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result p4

    .line 81
    invoke-direct {p0, p1, p3, p4}, Lcom/taobao/weex/WXSDKInstance;->setDeviceDisplay(FFF)V

    .line 86
    :cond_172
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 87
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isPreInitMode()Z

    move-result p1

    if-eqz p1, :cond_195

    .line 88
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string/jumbo p3, "wxStartLoadBundle"

    invoke-virtual {p1, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->loadJsBundleInPreInitMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19c

    .line 91
    :cond_195
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2, v4, v5}, Lcom/taobao/weex/WXSDKManager;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    .line 93
    :goto_19c
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 94
    iput-boolean v2, v1, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    .line 96
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object p1

    if-eqz p1, :cond_1c3

    .line 98
    invoke-interface {p1}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->shouldReboot()Z

    move-result p2

    if-eqz p2, :cond_1c3

    .line 99
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    new-instance p3, Lcom/taobao/weex/WXSDKInstance$3;

    invoke-direct {p3, p0, p1}, Lcom/taobao/weex/WXSDKInstance$3;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/adapter/IWXJscProcessManager;)V

    .line 120
    invoke-interface {p1}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->rebootTimeout()J

    move-result-wide p4

    .line 121
    invoke-virtual {p2, p3, p4, p5}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_1c2
    :goto_1c2
    move-object v1, p0

    :cond_1c3
    return-void
.end method

.method private renderInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-nez v0, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_18

    .line 4
    :cond_b
    new-instance v3, Lcom/taobao/weex/Script;

    invoke-direct {v3, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private setDeviceDisplay(FFF)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplay(Ljava/lang/String;FFF)V

    return-void
.end method

.method private wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3
    sput-object p2, Lcom/taobao/weex/utils/WXExceptionUtils;->degradeUrl:Ljava/lang/String;

    .line 5
    :try_start_a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 7
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    :cond_2f
    return-object p2

    :cond_30
    return-object p1
.end method


# virtual methods
.method public OnVSync()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifyLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$11;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$11;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method public addContentBoxMeasurement(JLcom/taobao/weex/layout/ContentBoxMeasurement;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_24

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_21

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_21
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_24
    return-void
.end method

.method public addFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addInActiveAddElementAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicActionAddElement;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInstanceOnFireEventInterceptor(Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_14

    .line 1
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceOnFireEventInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceOnFireEventInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_14
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUserTrackParameter(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public callActionAddElementTime(J)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int p1, v1

    iput p1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    return-void
.end method

.method public callJsTime(J)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    .line 3
    iget p1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    :cond_11
    return-void
.end method

.method public checkModuleEventRegistered(Ljava/lang/String;Lcom/taobao/weex/common/WXModule;)Z
    .registers 3

    if-eqz p2, :cond_10

    .line 1
    invoke-virtual {p2, p1}, Lcom/taobao/weex/common/WXModule;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public clearUserTrackParameters()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_7
    return-void
.end method

.method public createInstanceFuncHeartBeat()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createInstanceFuncHeartBeat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    return-void
.end method

.method public final createNestedInstance(Lcom/taobao/weex/ui/component/NestedContainer;)Lcom/taobao/weex/WXSDKInstance;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->newNestedInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    if-eqz v1, :cond_b

    .line 3
    invoke-interface {v1, v0, p1}, Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;->onCreateNestInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/NestedContainer;)V

    :cond_b
    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->setComponentObserver(Lcom/taobao/weex/ComponentObserver;)V

    :cond_14
    return-object v0
.end method

.method public declared-synchronized destroy()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_ac

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 3
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 5
    :cond_e
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onEnd()V

    .line 8
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-eqz v0, :cond_20

    .line 9
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/WXSDKManager;->destroyInstance(Ljava/lang/String;)V

    .line 12
    :cond_20
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    if-eqz v0, :cond_2f

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 16
    :cond_2f
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_38

    .line 17
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 18
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    .line 21
    :cond_38
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_3f

    .line 22
    invoke-direct {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->destroyView(Landroid/view/View;)V

    .line 26
    :cond_3f
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    if-eqz v0, :cond_46

    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    :cond_46
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    if-eqz v0, :cond_4c

    .line 31
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    .line 34
    :cond_4c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-eqz v0, :cond_53

    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    :cond_53
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->destroy()V

    .line 39
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 40
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    .line 41
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    .line 42
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    .line 44
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 45
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    .line 46
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 47
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    .line 48
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 49
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 51
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    .line 52
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_7c

    .line 53
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 55
    :cond_7c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_82

    .line 56
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    .line 58
    :cond_82
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    if-eqz v0, :cond_89

    .line 59
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 61
    :cond_89
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXPerformance;->afterInstanceDestroy(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$8;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$8;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 74
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$9;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->postDelay(Ljava/lang/Runnable;J)V
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_ae

    monitor-exit p0

    return-void

    :cond_ac
    monitor-exit p0

    return-void

    :catchall_ae
    move-exception v0

    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v0
.end method

.method public enableLayerType(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->onInterceptInstanceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 3
    iget-object p1, v0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-eqz p1, :cond_1b

    iget p2, p1, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    const p3, 0x7fffffff

    if-ge p2, p3, :cond_1b

    add-int/lit8 p2, p2, 0x1

    .line 4
    iput p2, p1, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    .line 6
    :cond_1b
    iget-object p1, v0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string/jumbo p2, "wxFSCallEventTotalNum"

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, p3, p4}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 7
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_25

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/taobao/weex/WXSDKManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_e

    :cond_25
    return-void
.end method

.method public fireModuleEvent(Ljava/lang/String;Lcom/taobao/weex/common/WXModule;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    if-nez p2, :cond_9

    goto :goto_4d

    .line 5
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v1, "data"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p2, p1}, Lcom/taobao/weex/common/WXModule;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 13
    new-instance v1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, p3}, Lcom/taobao/weex/common/WXModule;->isOnce(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_49

    .line 15
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_2c

    .line 17
    :cond_49
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_4d
    :goto_4d
    return-void
.end method

.method public firstScreenCreateInstanceTime(J)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr p1, v1

    iput-wide p1, v0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    :cond_e
    return-void
.end method

.method public getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    return-object v0
.end method

.method public getBundleUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentObserver()Lcom/taobao/weex/ComponentObserver;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    return-object v0
.end method

.method public getComponentsExceedGPULimit()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    return-object v0
.end method

.method public getContainerInfo()Ljava/util/Map;
    .registers 2
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
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    return-object v0
.end method

.method public getContentBoxMeasurement(J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/layout/ContentBoxMeasurement;

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomFontNetworkHandler()Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

    return-object v0
.end method

.method public getDefaultFontSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    return v0
.end method

.method public getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    return-object v0
.end method

.method public getImageNetworkHandler()Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    return-object v0
.end method

.method public getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    return-object p1
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceOnFireEventInterceptorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceViewPortWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getInstanceViewPortWidthWithFloat()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    return v0
.end method

.method public getLayerOverFlowListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    return-object v0
.end method

.method public getMaxDeepLayer()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mMaxDeepLayer:I

    return v0
.end method

.method public getMaxHiddenEmbedsNum()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    return v0
.end method

.method public getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    return-object v0
.end method

.method public getOriginalContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method public getParentInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public getRenderContainerPaddingLeft()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderContainerPaddingRight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderContainerPaddingTop()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    return-object v0
.end method

.method public getRenderType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    return-object v0
.end method

.method public getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_6
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getScrollViewListener()Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    return-object v0
.end method

.method public getStreamNetworkHandler()Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .registers 9

    const-string v0, " template md5 "

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getTemplate()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " template md5 null ,httpHeader:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " template md5  length 0 ,httpHeader"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_38
    :try_start_38
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/taobao/weex/utils/WXFileUtils;->md5([B)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v1}, Lcom/taobao/weex/utils/WXFileUtils;->base64Md5([B)Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v6, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v7, "templateSourceMD5"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v6, "templateSourceBase64MD5"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " length "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " base64 md5 "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " response header "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_91} :catch_92

    return-object v0

    .line 22
    :catch_92
    const-string/jumbo v0, "template md5 getBytes error"

    return-object v0
.end method

.method public getUIContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getUniPagePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTrackParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    return-object v0
.end method

.method public getWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWXPerformance()Lcom/taobao/weex/common/WXPerformance;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    return-object v0
.end method

.method public declared-synchronized getWXScrollListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/common/OnWXScrollListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object v0
.end method

.method public getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWeexHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWeexWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/cache/RegisterCache;->idle(Z)Z

    .line 2
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/taobao/weex/bridge/NativeInvokeHelper;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/bridge/NativeInvokeHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_28

    .line 7
    new-instance v0, Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    .line 9
    :cond_28
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    if-nez v0, :cond_35

    .line 10
    new-instance v0, Lcom/taobao/weex/performance/WXInstanceApm;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    .line 13
    :cond_35
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    .line 14
    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    .line 16
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 18
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_65

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_68

    .line 22
    :cond_65
    const-string/jumbo p1, "unKnowContainer"

    .line 23
    :goto_68
    const-string/jumbo v1, "wxContainerName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    const-string/jumbo v0, "wxInstanceType"

    const-string v1, "page"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/taobao/weex/WXSDKInstance;->isDisableSkipFrameworkInDataRender()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    .line 32
    new-instance p1, Lcom/taobao/weex/utils/tools/TimeCalculator;

    invoke-direct {p1, p0}, Lcom/taobao/weex/utils/tools/TimeCalculator;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    return-void
.end method

.method public isAutoAdjustDeviceWidth()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    return v0
.end method

.method public isCompilerWithUniapp()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isContentMd5Match()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    const-string v2, "Content-Md5"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1a

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v2, "content-md5"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_1a
    if-eqz v0, :cond_54

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_23

    goto :goto_54

    :cond_23
    const/4 v2, 0x0

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string/jumbo v4, "templateSourceBase64MD5"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_42

    .line 15
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    :cond_42
    if-eqz v3, :cond_54

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_54

    .line 21
    :cond_4b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_54
    :goto_54
    return v1
.end method

.method public isDestroy()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    return v0
.end method

.method public isFrameViewShow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    return v0
.end method

.method public isFullScreenHeightEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    return v0
.end method

.method public isHasException()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return v0
.end method

.method public isImmersive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    return v0
.end method

.method public isLayerTypeEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    return v0
.end method

.method public isNeedReLoad()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    return v0
.end method

.method public isNeedValidate()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    return v0
.end method

.method public isOnSizeChangedRender()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    return v0
.end method

.method public isPreDownLoad()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    return v0
.end method

.method public isPreInitMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    return v0
.end method

.method public isPreRenderMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode:Z

    return v0
.end method

.method public isTrackComponent()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->trackComponent:Z

    return v0
.end method

.method public isUseScroller()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    return v0
.end method

.method public isViewDisAppear()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    return v0
.end method

.method public moveFixedView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_1e

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eq v0, v1, :cond_1e

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 9
    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1e
    return-void
.end method

.method protected newNestedInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityBack()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityBack(Ljava/lang/String;)Z

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityBack()Z

    move-result v0

    return v0

    .line 6
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7
    const-string v0, "Warning :Component tree has not build completely, onActivityBack can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityCreate(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityCreate()V

    goto :goto_1a

    .line 6
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7
    const-string v0, "Warning :Component tree has not build completely,onActivityCreate can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 11
    :cond_1a
    :goto_1a
    new-instance v0, Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXGlobalEventReceiver;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 13
    :try_start_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_49

    const/16 v1, 0x21

    const-string/jumbo v2, "wx_global_action"

    if-lt v0, v1, :cond_3a

    .line 14
    :try_start_2a
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {v0, v1, v3, v2}, Ldc/squareup/okio/Okio$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    .line 16
    :cond_3a
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    return-void
.end method

.method public onActivityDestroy()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityDestroy(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityDestroy()V

    goto :goto_1a

    .line 5
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6
    const-string v0, "Warning :Component tree has not build completely, onActivityDestroy can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 9
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/TimeCalculator;->println()V

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    return-void
.end method

.method public onActivityPause()V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewDisappear()V

    .line 2
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_34

    .line 3
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    if-eqz v0, :cond_10

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    .line 6
    :cond_10
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getMaxDeepLayer()I

    move-result v2

    iput v2, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepViewLayer:I

    .line 7
    iget-object v7, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    iput-object v0, v7, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    iput-object v0, v7, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    .line 9
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz v3, :cond_32

    .line 10
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUserTrackParams()Ljava/util/Map;

    move-result-object v8

    const/4 v5, 0x0

    const-string v6, "load"

    invoke-interface/range {v3 .. v8}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 12
    :cond_32
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    .line 15
    :cond_34
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityPause(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_43

    .line 17
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    goto :goto_4e

    .line 19
    :cond_43
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 20
    const-string v0, "Warning :Component tree has not build completely,onActivityPause can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 24
    :cond_4e
    :goto_4e
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    if-nez v0, :cond_92

    .line 25
    const-string v0, "Application to be in the backround"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "wx_global_action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v2, "eventName"

    const-string v3, "WXApplicationWillResignActiveEvent"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wx_instanceid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_81

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_90

    .line 37
    :cond_81
    :try_start_81
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_88} :catch_89

    goto :goto_90

    :catch_89
    move-exception v0

    .line 39
    const-string/jumbo v2, "weex"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_90
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 46
    :cond_92
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result v0

    if-eqz v0, :cond_b9

    :cond_9e
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    if-eqz v0, :cond_b9

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerformanceData "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->toPerfString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_b9
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 6
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 7
    const-string p1, "Warning :Component tree has not build completely, onActivityResult can not be call!"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public onActivityResume()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityResume(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    goto :goto_1a

    .line 6
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7
    const-string v0, "Warning :Component tree has not build completely, onActivityResume can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 11
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    if-eqz v0, :cond_57

    .line 12
    const-string v0, "Application  to be in the foreground"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "wx_global_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v1, "eventName"

    const-string v2, "WXApplicationDidBecomeActiveEvent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wx_instanceid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4d

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_54

    .line 21
    :cond_4d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_54
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 26
    :cond_57
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    return-void
.end method

.method public onActivityStart()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityStart(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStart()V

    return-void

    .line 5
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6
    const-string v0, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public onActivityStop()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityStop(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStop()V

    return-void

    .line 6
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7
    const-string v0, "Warning :Component tree has not build completely, onActivityStop can not be call!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public onBackPressed()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;

    .line 3
    invoke-interface {v2}, Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 9
    :cond_1c
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 11
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    .line 12
    const-string v3, "nativeback"

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_44

    .line 14
    invoke-virtual {v0, v3, v5}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_44

    return v1

    .line 20
    :cond_44
    const-string v1, "clickbackitem"

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 22
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v5, v5}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_53
    return v2

    :cond_54
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_55

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v1, :cond_f

    goto :goto_55

    :cond_f
    if-eqz p1, :cond_55

    .line 4
    iget-boolean v1, p1, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    if-eqz v1, :cond_16

    goto :goto_55

    .line 8
    :cond_16
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->hasConsumeEvent()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_55

    .line 12
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    iget-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    if-eqz v2, :cond_31

    .line 17
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v2, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v4, v0, v2

    if-lez v4, :cond_31

    goto :goto_55

    .line 24
    :cond_31
    iget-boolean v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    if-eqz v0, :cond_4e

    .line 25
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    if-nez p2, :cond_4b

    .line 27
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    :cond_4b
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    :cond_4e
    if-nez p2, :cond_55

    .line 32
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveInteraction(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public onComponentCreate(Lcom/taobao/weex/ui/component/WXComponent;J)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    .line 2
    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v1, v0

    iput v1, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    .line 3
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_20

    .line 4
    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v1, v0

    iput v1, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    .line 5
    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    .line 7
    :cond_20
    iget-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    .line 8
    iget-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    return-void
.end method

.method public onCreateFinish()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    if-eqz v0, :cond_5

    goto :goto_1c

    .line 4
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 7
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v1, :cond_15

    .line 8
    invoke-interface {v1, p0, v0}, Lcom/taobao/weex/IWXRenderListener;->onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V

    .line 10
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v0, :cond_1c

    .line 11
    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onFirstView()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/bridge/WXModuleManager;->onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_1a

    .line 5
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 6
    const-string p1, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    return p1
.end method

.method public onHttpStart()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    :cond_c
    return-void
.end method

.method public onInstanceReady()V
    .registers 3

    .line 1
    const-string/jumbo v0, "test->"

    const-string v1, "onInstanceReady"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string/jumbo v1, "wxContainerReady"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    if-nez v0, :cond_19

    goto :goto_29

    .line 6
    :cond_19
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onInstanceReady(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    if-eqz v0, :cond_29

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    invoke-virtual {v0}, Lcom/taobao/weex/WXHttpListener;->onInstanceReady()V

    :cond_29
    :goto_29
    return-void
.end method

.method public onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2c

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onJSException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance$6;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2c
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    if-ne p2, p6, :cond_a

    if-ne p3, p7, :cond_a

    if-ne p4, p8, :cond_a

    if-eq p5, p9, :cond_9

    goto :goto_a

    :cond_9
    return-void

    .line 2
    :cond_a
    :goto_a
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->onLayoutChange(Landroid/view/View;)V

    return-void
.end method

.method public onOldFsRenderTimeLogic()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 6
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$7;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 17
    :cond_18
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveFSRenderTime()V

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRenderTime:J

    .line 19
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    return-void
.end method

.method public onRefreshSuccess(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_b

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/weex/IWXRenderListener;->onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    :cond_b
    return-void
.end method

.method public onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_29

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRenderError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance$5;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_29
    return-void
.end method

.method public onRenderSuccess(II)V
    .registers 12

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 2
    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    if-nez v1, :cond_e

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveNewFsRenderTime()V

    .line 5
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr v1, v3

    .line 6
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    iput-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->callBridgeTime:J

    .line 9
    aget-wide v5, v3, v0

    iput-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->cssLayoutTime:J

    const/4 v0, 0x2

    .line 10
    aget-wide v5, v3, v0

    iput-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->parseJsonTime:J

    long-to-double v5, v1

    .line 12
    iput-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    .line 13
    iget-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    long-to-double v5, v5

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v5, v7

    if-gez v0, :cond_42

    .line 14
    iput-wide v1, v4, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    .line 17
    :cond_42
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    const-string/jumbo v1, "weex_perf"

    if-eqz v0, :cond_86

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_86

    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/weex/IWXRenderListener;->onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    .line 19
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz p1, :cond_77

    .line 20
    new-instance v6, Lcom/taobao/weex/common/WXPerformance;

    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v6, p1}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    .line 23
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUserTrackParams()Ljava/util/Map;

    move-result-object v7

    const/4 v4, 0x0

    const-string v5, "jsBridge"

    invoke-interface/range {v2 .. v7}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 25
    :cond_77
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 26
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXPerformance;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_86
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 30
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXPerformance;->getPerfData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXModuleManager;->onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    .line 6
    :cond_f
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 7
    const-string p1, "Warning :Component tree has not build completely, onRequestPermissionsResult can not be call!"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public onRootCreated(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v0, 0x1

    .line 2
    iput v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setSize(II)V

    return-void
.end method

.method public declared-synchronized onShowAnimationEnd()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    .line 5
    invoke-interface {v3}, Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;->onShowAnimationEnd()V

    goto :goto_13

    .line 7
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public onSupportNavigateUp()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-eqz v0, :cond_1c

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;

    .line 3
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;->onSupportNavigateUp()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateFinish()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    const-string v0, "Instance onUpdateSuccess"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onViewAppear()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onAppear()V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 5
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "viewappear"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .line 7
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;->onAppear()V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public onViewDisappear()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onDisAppear()V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 5
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "viewdisappear"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .line 8
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;->onDisappear()V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public preDownLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 2
    iput-object p4, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    move-object v4, p1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public preInit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 2
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    if-nez p3, :cond_c

    .line 5
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_c
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const/4 p5, 0x0

    iput-boolean p5, p1, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    .line 9
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    new-instance p5, Lcom/taobao/weex/Script;

    invoke-direct {p5, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p5, p3, p4}, Lcom/taobao/weex/WXSDKManager;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public refreshInstance(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRefreshStartTime:J

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    .line 8
    :cond_10
    new-instance v0, Lcom/taobao/weex/common/WXRefreshData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/common/WXRefreshData;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    .line 10
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/WXSDKManager;->refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

.method public refreshInstance(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->refreshInstance(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized registerActionbarHandler(Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    .line 1
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    .line 5
    :cond_10
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public registerActivityStateListener(Lcom/taobao/weex/IWXActivityStateListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public declared-synchronized registerBackPressedHandler(Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    .line 1
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    .line 5
    :cond_10
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public declared-synchronized registerOnWXScrollListener(Lcom/taobao/weex/common/OnWXScrollListener;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    .line 4
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    return-void
.end method

.method public registerScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    return-void
.end method

.method public registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-void
.end method

.method public reloadImages()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public reloadPage(Z)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    if-eqz p1, :cond_21

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_61

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    sget-object v0, Lcom/taobao/weex/WXSDKInstance;->ACTION_INSTANCE_RELOAD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 15
    :cond_21
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 18
    const-string v0, "degrade_to_h5_if_not_reload"

    const-string/jumbo v1, "true"

    const-string v2, "android_weex_ext_config"

    invoke-interface {p1, v2, v0, v1}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "degrade : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_61

    .line 25
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not reloadPage"

    const-string v1, "Do not reloadPage degradeToH5"

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_61
    return-void
.end method

.method public reloadPageLayout()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->reloadPageLayout(Ljava/lang/String;)V

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;)V
    .registers 3

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 10
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1a

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public removeFixedView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public declared-synchronized removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    monitor-exit p0

    return-void

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public removeInActiveAddElmentAction(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUserTrackParameter(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public render(Ljava/lang/String;)V
    .registers 8

    .line 22
    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "default"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;II)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;)V

    return-void
.end method

.method public render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXPerformance;->beforeInstanceRender(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 9
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    const-string p2, "Error: Missing pageName"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 11
    const-string p2, "We highly recommend you to set pageName. Call\nWXSDKInstance#render(String pageName, String template, Map<String, Object> options, String jsonInitData, WXRenderStrategy flag)\nto fix it."

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_33
    return-void

    :cond_34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object p5, p4

    move-object p6, p7

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 21
    invoke-virtual/range {p1 .. p6}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v2, Lcom/taobao/weex/Script;

    invoke-direct {v2, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string v1, "default"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    new-instance v2, Lcom/taobao/weex/Script;

    invoke-direct {v2, p2}, Lcom/taobao/weex/Script;-><init>([B)V

    sget-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object p5, p4

    move-object p6, p7

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1
    invoke-virtual/range {p1 .. p6}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public resetDeviceDisplayOfPage()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplayOfPage(Ljava/lang/String;FF)V

    return-void
.end method

.method public rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p2, p1}, Lio/dcloud/feature/uniapp/adapter/AbsURIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAutoAdjustDeviceWidth(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput-object p1, v0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public setBundleUrl(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/WXValidateProcessor;->needValidate(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    :cond_1c
    return-void
.end method

.method public setComponentObserver(Lcom/taobao/weex/ComponentObserver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    return-void
.end method

.method public setComponentsInfoExceedGPULimit(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setContainerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCustomFontNetworkHandler(Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

    return-void
.end method

.method public setDefaultFontSize(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    return-void
.end method

.method public setDeviceDisplayOfPage(II)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplayOfPage(Ljava/lang/String;FF)V

    return-void
.end method

.method public setEnableFullScreenHeight(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    return-void
.end method

.method public setHasException(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return-void
.end method

.method public setIWXUserTrackAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setImageNetworkHandler(Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    return-void
.end method

.method public setImmersive(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    return-void
.end method

.method public setInstanceViewPortWidth(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    return-void
.end method

.method public setInstanceViewPortWidth(FZ)V
    .registers 4

    .line 2
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 3
    invoke-static {p1}, Lcom/taobao/weex/WXEnvironment;->setViewProt(F)V

    if-eqz p2, :cond_14

    .line 6
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setViewPortWidth(Ljava/lang/String;F)V

    :cond_14
    return-void
.end method

.method public setMaxDeepLayer(I)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mMaxDeepLayer:I

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    int-to-double v1, p1

    const-string/jumbo p1, "wxMaxDeepViewLayer"

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    return-void
.end method

.method public setMaxDomDeep(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    int-to-double v1, p1

    const-string/jumbo v3, "wxMaxDeepVDomLayer"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_e

    goto :goto_14

    .line 5
    :cond_e
    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    if-gt v1, p1, :cond_14

    .line 6
    iput p1, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    :cond_14
    :goto_14
    return-void
.end method

.method public setMaxHiddenEmbedsNum(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    return-void
.end method

.method public setNeedLoad(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    return-void
.end method

.method public setNestedInstanceInterceptor(Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    return-void
.end method

.method public setPageKeepRawCssStyles()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reserveCssStyles"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParentInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    return-void
.end method

.method public setPreRenderMode(Z)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/WXSDKInstance$4;-><init>(Lcom/taobao/weex/WXSDKInstance;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setRenderContainer(Lcom/taobao/weex/RenderContainer;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V

    return-void
.end method

.method public setRenderStartTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    return-void
.end method

.method public setRenderType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    return-void
.end method

.method public setRootScrollView(Landroid/widget/ScrollView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    if-eqz v0, :cond_f

    instance-of v1, p1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_f

    .line 3
    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    :cond_f
    return-void
.end method

.method public setSize(II)V
    .registers 12

    if-lez p1, :cond_88

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 1
    :goto_9
    iget-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    xor-int/2addr v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_88

    iget-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v2, :cond_88

    .line 2
    sget v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    if-gez v2, :cond_25

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    .line 5
    :cond_25
    sget v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    if-lez v2, :cond_40

    int-to-double v3, p2

    int-to-double v5, v2

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    cmpl-double v2, v3, v5

    if-lez v2, :cond_35

    goto :goto_36

    :cond_35
    move-wide v5, v3

    .line 10
    :goto_36
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v2

    const-string/jumbo v3, "wxBodyRatio"

    invoke-virtual {v2, v3, v5, v6}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 12
    :cond_40
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_88

    int-to-float v5, p1

    int-to-float v6, p2

    .line 16
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    .line 17
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_5f

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_68

    .line 18
    :cond_5f
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_68
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_88

    .line 24
    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_73

    const/4 v7, 0x1

    goto :goto_74

    :cond_73
    const/4 v7, 0x0

    .line 25
    :goto_74
    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p2, :cond_7a

    const/4 v8, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v8, 0x0

    .line 27
    :goto_7b
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v3, Lcom/taobao/weex/WXSDKInstance$10;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/WXSDKInstance$10;-><init>(Lcom/taobao/weex/WXSDKInstance;FFZZ)V

    invoke-virtual {p1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_88
    return-void
.end method

.method public setStreamNetworkHandler(Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTrackComponent(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->trackComponent:Z

    return-void
.end method

.method public setUniPagePath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    return-void
.end method

.method public setUseSandBox(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setSandBoxContext(Z)V

    return-void
.end method

.method public setUseScroller(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    return-void
.end method

.method public setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 5
    :cond_8
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz p1, :cond_2a

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2a

    .line 8
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lcom/taobao/weex/WXSDKInstance$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$1;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_2a
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lcom/taobao/weex/WXSDKInstance$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$2;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWXInstanceContainerOnSizeListener(Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mOnSizeListener:Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;

    return-void
.end method

.method public setonSizeChangedRnder(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    return-void
.end method

.method public skipFrameworkInit()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->isDataRender()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized unRegisterActionbarHandler(Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    monitor-exit p0

    return-void

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized unRegisterBackPressedHandler(Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    monitor-exit p0

    return-void

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass1 (com.taobao.weex.WXSDKInstance$1)
.class Lcom/taobao/weex/WXSDKInstance$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$1;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$1;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setRenderContentWrapContentToCore(ZLjava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass10 (com.taobao.weex.WXSDKInstance$10)
.class Lcom/taobao/weex/WXSDKInstance$10;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$isHeightWrapContent:Z

.field final synthetic val$isWidthWrapContent:Z

.field final synthetic val$realHeight:F

.field final synthetic val$realWidth:F


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;FFZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$10;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput p2, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realWidth:F

    iput p3, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realHeight:F

    iput-boolean p4, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isWidthWrapContent:Z

    iput-boolean p5, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isHeightWrapContent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$10;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, v0, Lcom/taobao/weex/WXSDKInstance;->mOnSizeListener:Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;

    if-eqz v1, :cond_16

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realWidth:F

    iget v4, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realHeight:F

    iget-boolean v5, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isWidthWrapContent:Z

    iget-boolean v6, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isHeightWrapContent:Z

    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;->onSizeChanged(Ljava/lang/String;FFZZ)V

    return-void

    .line 5
    :cond_16
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$10;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realWidth:F

    iget v10, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$realHeight:F

    iget-boolean v11, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isWidthWrapContent:Z

    iget-boolean v12, p0, Lcom/taobao/weex/WXSDKInstance$10;->val$isHeightWrapContent:Z

    invoke-virtual/range {v7 .. v12}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDefaultRootSize(Ljava/lang/String;FFZZ)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass11 (com.taobao.weex.WXSDKInstance$11)
.class Lcom/taobao/weex/WXSDKInstance$11;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->OnVSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$11;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$11;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->forceLayout(Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass2 (com.taobao.weex.WXSDKInstance$2)
.class Lcom/taobao/weex/WXSDKInstance$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$2;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$2;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setRenderContentWrapContentToCore(ZLjava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass3 (com.taobao.weex.WXSDKInstance$3)
.class Lcom/taobao/weex/WXSDKInstance$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$wxJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/adapter/IWXJscProcessManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance$3;->val$wxJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$000(Lcom/taobao/weex/WXSDKInstance;)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$100(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$200(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_62

    .line 6
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_62

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_62

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->val$wxJscProcessManager:Lcom/taobao/weex/adapter/IWXJscProcessManager;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {v0, v1}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->withException(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 10
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jsc reboot"

    invoke-virtual {v0, v1, v2, v2}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_47
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$400(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 13
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v0, "callReportCrashReloadPage with jsc reboot"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass4 (com.taobao.weex.WXSDKInstance$4)
.class Lcom/taobao/weex/WXSDKInstance$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setPreRenderMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$isPreRenderMode:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-boolean p2, p0, Lcom/taobao/weex/WXSDKInstance$4;->val$isPreRenderMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->val$isPreRenderMode:Z

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->access$602(Lcom/taobao/weex/WXSDKInstance;Z)Z

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass5 (com.taobao.weex.WXSDKInstance$5)
.class Lcom/taobao/weex/WXSDKInstance$5;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$errCode:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$errCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1b

    .line 2
    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$errCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/IWXRenderListener;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass6 (com.taobao.weex.WXSDKInstance$6)
.class Lcom/taobao/weex/WXSDKInstance$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$errCode:Ljava/lang/String;

.field final synthetic val$exception:Ljava/lang/String;

.field final synthetic val$function:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$errCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$function:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$exception:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$errCode:Ljava/lang/String;

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_VALIDAPPKEY:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4a

    .line 3
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/util/ErrorDialogUtil;->checkAppKeyErrorTips(Landroid/app/Activity;)V

    return-void

    .line 7
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4a

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$errCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/taobao/weex/IWXRenderListener;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass7 (com.taobao.weex.WXSDKInstance$7)
.class Lcom/taobao/weex/WXSDKInstance$7;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onOldFsRenderTimeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1f

    .line 2
    const-string v0, "onFirstScreen"

    invoke-static {v0}, Lcom/taobao/weex/utils/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onFirstScreen()V

    .line 4
    invoke-static {}, Lcom/taobao/weex/utils/Trace;->endSection()V

    :cond_1f
    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass8 (com.taobao.weex.WXSDKInstance$8)
.class Lcom/taobao/weex/WXSDKInstance$8;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->onInstanceClose(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$900(Lcom/taobao/weex/WXSDKInstance;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.AnonymousClass9 (com.taobao.weex.WXSDKInstance$9)
.class Lcom/taobao/weex/WXSDKInstance$9;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$9;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$9;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.taobao.weex.WXSDKInstance.ActionBarHandler (com.taobao.weex.WXSDKInstance$ActionBarHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionBarHandler"
.end annotation


# virtual methods
.method public abstract onSupportNavigateUp()Z
.end method

###### Class com.taobao.weex.WXSDKInstance.CustomFontNetworkHandler (com.taobao.weex.WXSDKInstance$CustomFontNetworkHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomFontNetworkHandler"
.end annotation


# virtual methods
.method public abstract fetchLocal(Ljava/lang/String;)Ljava/lang/String;
.end method

###### Class com.taobao.weex.WXSDKInstance.FrameViewEventListener (com.taobao.weex.WXSDKInstance$FrameViewEventListener)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameViewEventListener"
.end annotation


# virtual methods
.method public abstract onShowAnimationEnd()V
.end method

###### Class com.taobao.weex.WXSDKInstance.ImageNetworkHandler (com.taobao.weex.WXSDKInstance$ImageNetworkHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageNetworkHandler"
.end annotation


# virtual methods
.method public abstract fetchLocal(Ljava/lang/String;)Ljava/lang/String;
.end method

###### Class com.taobao.weex.WXSDKInstance.NestedInstanceInterceptor (com.taobao.weex.WXSDKInstance$NestedInstanceInterceptor)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NestedInstanceInterceptor"
.end annotation


# virtual methods
.method public abstract onCreateNestInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/NestedContainer;)V
.end method

###### Class com.taobao.weex.WXSDKInstance.OnBackPressedHandler (com.taobao.weex.WXSDKInstance$OnBackPressedHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBackPressedHandler"
.end annotation


# virtual methods
.method public abstract onBackPressed()Z
.end method

###### Class com.taobao.weex.WXSDKInstance.OnInstanceVisibleListener (com.taobao.weex.WXSDKInstance$OnInstanceVisibleListener)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInstanceVisibleListener"
.end annotation


# virtual methods
.method public abstract onAppear()V
.end method

.method public abstract onDisappear()V
.end method

###### Class com.taobao.weex.WXSDKInstance.StreamNetworkHandler (com.taobao.weex.WXSDKInstance$StreamNetworkHandler)
.class public interface abstract Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamNetworkHandler"
.end annotation


# virtual methods
.method public abstract fetchLocal(Ljava/lang/String;)Ljava/lang/String;
.end method
