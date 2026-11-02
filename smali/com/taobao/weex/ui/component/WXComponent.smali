###### Class com.taobao.weex.ui.component.WXComponent (com.taobao.weex.ui.component.WXComponent)
.class public abstract Lcom/taobao/weex/ui/component/WXComponent;
.super Lcom/taobao/weex/ui/component/basic/WXBasicComponent;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/common/IWXObject;
.implements Lcom/taobao/weex/IWXActivityStateListener;
.implements Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;,
        Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;,
        Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;,
        Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;,
        Lcom/taobao/weex/ui/component/WXComponent$RenderState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<",
        "TT;>;",
        "Lcom/taobao/weex/common/IWXObject;",
        "Lcom/taobao/weex/IWXActivityStateListener;",
        "Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;"
    }
.end annotation


# static fields
.field public static final PROP_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field public static final PROP_FS_MATCH_PARENT:Ljava/lang/String; = "m"

.field public static final PROP_FS_WRAP_CONTENT:Ljava/lang/String; = "w"

.field public static final ROOT:Ljava/lang/String; = "_root"

.field public static final STATE_ALL_FINISH:I = 0x2

.field public static final STATE_DOM_FINISH:I = 0x0

.field public static final STATE_UI_FINISH:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x1


# instance fields
.field private EMPTY_STATE_SET:[I

.field private ENABLED_STATE_SET:[I

.field private FOCUSED_ENABLED_STATE_SET:[I

.field private PRESSED_ANIM_DELAY:J

.field private PRESSED_ANIM_DURATION:J

.field private PRESSED_ENABLED_STATE_SET:[I

.field private animations:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

.field public interactionAbsoluteX:I

.field public interactionAbsoluteY:I

.field public isIgnoreInteraction:Z

.field private isLastLayoutDirectionRTL:Z

.field private isPreventGesture:Z

.field private isUsing:Z

.field private mAbsoluteX:I

.field private mAbsoluteY:I

.field private mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

.field private mAppendEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

.field private mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

.field private mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

.field private mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/ui/component/WXComponent<",
            "TT;>.OnClick",
            "ListenerImp;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDeepInComponentTree:I

.field private mElevation:F

.field private mFixedProp:I

.field private mFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private mGestureType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasAddFocusListener:Z

.field private mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

.field mHost:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mHostClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHover:Lio/dcloud/weex/ViewHover;

.field private mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

.field private mInstance:Lcom/taobao/weex/WXSDKInstance;

.field public mIsAddElementToTree:Z

.field private mIsDestroyed:Z

.field private mIsDisabled:Z

.field private mLastBoxShadowId:Ljava/lang/String;

.field private mLazy:Z

.field private mNeedLayoutOnAnimation:Z

.field private volatile mParent:Lcom/taobao/weex/ui/component/WXVContainer;

.field private mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/dcloud/feature/uniapp/ui/action/UniMethodData;",
            ">;"
        }
    .end annotation
.end field

.field private mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

.field private mPreRealHeight:I

.field private mPreRealLeft:I

.field private mPreRealRight:I

.field private mPreRealTop:I

.field private mPreRealWidth:I

.field private mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

.field private mRippleBackground:Landroid/graphics/drawable/Drawable;

.field private mStickyOffset:I

.field public mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

.field private mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

.field private mType:I

.field private mViewTreeKey:Ljava/lang/String;

.field private waste:Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 7

    .line 4
    invoke-direct {p0, p4}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;-><init>(Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;)V

    const/4 p4, 0x0

    .line 5
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    .line 12
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    .line 13
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    .line 14
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    .line 23
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 24
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 25
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 26
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 27
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 28
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    .line 31
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    .line 37
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    .line 38
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    .line 39
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    .line 40
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    .line 42
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 43
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 45
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 46
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    .line 48
    new-instance v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    invoke-direct {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    .line 53
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    .line 54
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v0, 0x64

    .line 814
    iput-wide v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 815
    iput-wide v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DELAY:J

    const v0, 0x101009e

    .line 816
    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->ENABLED_STATE_SET:[I

    .line 817
    new-array v1, p4, [I

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->EMPTY_STATE_SET:[I

    const v1, 0x10100a7

    .line 818
    filled-new-array {v1, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ENABLED_STATE_SET:[I

    const v1, 0x101009c

    .line 819
    filled-new-array {v1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->FOCUSED_ENABLED_STATE_SET:[I

    const/4 v0, 0x0

    .line 820
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    .line 2570
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    .line 2736
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    .line 2737
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 2738
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    .line 2739
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 2740
    iput p3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    if-eqz p1, :cond_7f

    .line 2743
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setViewPortWidth(F)V

    .line 2745
    :cond_7f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onCreate()V

    .line 2747
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 2748
    invoke-interface {p1, p0}, Lcom/taobao/weex/ComponentObserver;->onCreate(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_8f
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object p0
.end method

.method private applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 3
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 4
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    .line 5
    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    .line 7
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v3, :cond_21

    return-void

    .line 11
    :cond_21
    const-string v3, "borderLeftWidth"

    invoke-virtual {p0, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    .line 12
    const-string v0, "borderTopWidth"

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    .line 13
    const-string v0, "borderRightWidth"

    invoke-virtual {p0, v0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    .line 14
    const-string v0, "borderBottomWidth"

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    return-void
.end method

.method private applyEvents()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_32

    .line 3
    :cond_11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2f

    .line 6
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-lt v2, v3, :cond_23

    goto :goto_2f

    .line 9
    :cond_23
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 12
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->setActiveTouchListener()V

    :cond_32
    :goto_32
    return-void
.end method

.method private createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/ui/animation/WXAnimationBean;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/ui/animation/WXAnimationBean;"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_51

    .line 1
    :try_start_3
    const-string/jumbo v0, "transform"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_51

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 3
    const-string/jumbo v1, "transformOrigin"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 4
    new-instance p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;

    invoke-direct {p2}, Lcom/taobao/weex/ui/animation/WXAnimationBean;-><init>()V

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result v1

    float-to-int v4, v1

    .line 6
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v1

    float-to-int v5, v1

    .line 7
    new-instance v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    invoke-direct {v1}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;-><init>()V

    iput-object v1, p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    .line 8
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/WXSDKManager;->getInstanceViewPortWidth(Ljava/lang/String;)F

    move-result v6

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->init(Ljava/lang/String;Ljava/lang/String;IIFLcom/taobao/weex/WXSDKInstance;)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_49} :catch_4a

    return-object p2

    :catch_4a
    move-exception v0

    move-object p2, v0

    .line 15
    const-string v0, ""

    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_51
    return-object p1
.end method

.method private final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3f

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    move-object v6, v0

    if-eqz p2, :cond_32

    .line 13
    invoke-static {p0}, Lcom/taobao/weex/ui/component/binding/Statements;->getComponentId(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 15
    const-string v1, "componentId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_32
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    :cond_3f
    return-void
.end method

.method private initOutlineProvider(F)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->useFeature()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/BaseFrameLayout;

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$8;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/WXComponent$8;-><init>(Lcom/taobao/weex/ui/component/WXComponent;F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 27
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_22
    return-void
.end method

.method private final invokePendingComponetMethod()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$6;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$6;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method private needGestureDetector(Ljava/lang/String;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_36

    .line 2
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1e

    aget-object v5, v0, v4

    .line 3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 7
    :cond_1e
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_36

    aget-object v5, v0, v4

    .line 8
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    return v2

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 13
    :cond_36
    invoke-static {p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isStopPropagation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v2

    .line 16
    :cond_3d
    const-string/jumbo v0, "view_hover_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    return v2

    .line 19
    :cond_47
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture()Z

    move-result p1

    if-eqz p1, :cond_4e

    return v2

    :cond_4e
    return v1
.end method

.method private parseAnimation()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 5
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 6
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/ui/animation/WXAnimationBean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 8
    new-instance v2, Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;)V

    .line 9
    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->executeAction()V

    goto :goto_9

    .line 13
    :cond_3e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v1

    .line 4
    const-string v2, "backgroundColor"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2e

    return-object v0

    :cond_2d
    const/4 v2, 0x0

    .line 13
    :cond_2e
    const-string v4, "backgroundColor:active"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_37

    return-object v0

    .line 17
    :cond_37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v1

    .line 19
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v3, [I

    const/4 v6, 0x1

    new-array v6, v6, [[I

    aput-object v5, v6, v3

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {v4, v6, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 22
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$7;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, p0, v4, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent$7;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5a

    return-object v1

    :catchall_5a
    move-exception v1

    .line 35
    const-string v2, "Exception on create ripple: "

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_60
    return-object v0
.end method

.method private recordInteraction(II)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 5
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v1, :cond_11

    .line 6
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    .line 7
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    goto :goto_39

    .line 9
    :cond_11
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getCSSLayoutTop()F

    move-result v1

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getCSSLayoutLeft()F

    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_26

    :cond_20
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget v3, v3, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_26
    float-to-int v2, v2

    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    .line 12
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_36

    :cond_30
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget v2, v2, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_36
    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 15
    :goto_39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    if-nez v1, :cond_54

    .line 16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    .line 18
    :cond_54
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    .line 19
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWeexWidth()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iget v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_9a

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    add-int/2addr v2, p1

    iget v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 22
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_9a

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iget v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    add-int/2addr v4, p2

    .line 23
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_9a

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    add-int/2addr v2, p1

    iget p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    add-int/2addr p1, p2

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_9b

    :cond_9a
    const/4 v0, 0x1

    .line 25
    :cond_9b
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    xor-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/taobao/weex/WXSDKInstance;->onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method private setActiveTouchListener()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v0

    const-string v1, ":active"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isConsumeTouch()Z

    move-result v1

    .line 5
    new-instance v2, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;-><init>(Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_24
    return-void
.end method

.method private setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V
    .registers 19

    move v10, p4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_b7

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_b7

    :cond_13
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateBoxShadow(IIZ)V

    .line 7
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalShadows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4a

    .line 8
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalMaxWidth()I

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalMaxHeight()I

    move-result v2

    .line 10
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v3}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p3, v3

    .line 11
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v4}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v10, v4

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_4e

    :cond_4a
    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v10

    .line 13
    :goto_4e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 16
    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v5

    if-eqz v5, :cond_86

    .line 17
    instance-of v5, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v5, :cond_71

    move-object v5, p0

    check-cast v5, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v7

    if-nez v7, :cond_71

    .line 18
    invoke-interface {v5}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v5

    goto :goto_75

    .line 20
    :cond_71
    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v5

    :goto_75
    move-object v0, p0

    move/from16 v7, p5

    move/from16 v9, p6

    move v8, v6

    move v6, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v5

    move v5, v3

    move-object/from16 v3, p7

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/taobao/weex/ui/component/WXComponent;->setWidgetParams(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/flat/FlatGUIContext;Landroid/graphics/Point;IIIIII)V

    return-void

    .line 23
    :cond_86
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_b7

    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 25
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v0, p0

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedHostLayoutParams(Landroid/view/View;IIIIII)V

    goto :goto_a5

    .line 27
    :cond_9b
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v0, p0

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 29
    :goto_a5
    invoke-direct/range {p0 .. p2}, Lcom/taobao/weex/ui/component/WXComponent;->recordInteraction(II)V

    .line 30
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 31
    iput p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 32
    iput p3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    move/from16 v5, p5

    .line 33
    iput v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 34
    iput v10, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 35
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onFinishLayout()V

    :cond_b7
    :goto_b7
    return-void
.end method

.method private setFixedHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    .line 1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object v0, p0

    move v2, p4

    move v4, p5

    move v3, p6

    move v5, p7

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p4, v0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p4, p1}, Lcom/taobao/weex/WXSDKInstance;->moveFixedView(Landroid/view/View;)V

    .line 11
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "WXComponent:setLayout :"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Weex_Fixed_Style"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "WXComponent:setLayout Left:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getLeft()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getTop()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return-void
.end method

.method private setFixedSize(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "m"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    goto :goto_18

    .line 3
    :cond_c
    const-string/jumbo v0, "w"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, -0x2

    .line 4
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    .line 9
    :goto_18
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p1, :cond_2d

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 12
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2d
    return-void

    :cond_2e
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    return-void
.end method

.method private setWidgetParams(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/flat/FlatGUIContext;Landroid/graphics/Point;IIIIII)V
    .registers 20

    .line 1
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_86

    .line 3
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    instance-of v3, v3, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 4
    invoke-virtual {p2, v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 5
    invoke-virtual {p2, v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 6
    iget v3, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v3, v2}, Landroid/graphics/Point;->set(II)V

    move/from16 v5, p6

    move/from16 v7, p8

    goto :goto_32

    :cond_2b
    move/from16 v5, p6

    move/from16 v7, p8

    .line 9
    invoke-virtual {v9, v5, v7}, Landroid/graphics/Point;->set(II)V

    .line 12
    :goto_32
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    instance-of v2, v2, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 13
    invoke-virtual {p2, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 14
    invoke-virtual {p2, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v0

    if-nez v0, :cond_5b

    .line 15
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/widget/Widget;->getLocInFlatContainer()Landroid/graphics/Point;

    move-result-object v0

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v2, v0}, Landroid/graphics/Point;->offset(II)V

    .line 18
    :cond_5b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v1, p0

    move v3, p4

    move v4, p5

    move/from16 v6, p7

    move/from16 v8, p9

    .line 19
    invoke-virtual/range {v0 .. v8}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 20
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_86

    .line 21
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 24
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 25
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 p8, v0

    move p3, v1

    move p4, v2

    move p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    goto :goto_90

    :cond_86
    move p3, p4

    move p4, p5

    move/from16 p5, p6

    move/from16 p6, p7

    move/from16 p7, p8

    move/from16 p8, p9

    :goto_90
    move-object p2, p1

    move-object/from16 p9, v9

    .line 29
    invoke-interface/range {p2 .. p9}, Lcom/taobao/weex/ui/flat/widget/Widget;->setLayout(IIIIIILandroid/graphics/Point;)V

    move v2, p3

    move v3, p4

    move/from16 v4, p6

    move/from16 v5, p8

    move-object/from16 v1, p9

    .line 31
    instance-of v6, p1, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    if-eqz v6, :cond_c1

    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_c1

    .line 33
    invoke-virtual {v0}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->getView()Landroid/view/View;

    move-result-object v0

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    move-object p1, p0

    move-object p2, v0

    move/from16 p7, v1

    move p3, v2

    move p4, v3

    move/from16 p6, v4

    move/from16 p8, v5

    move p5, v6

    invoke-virtual/range {p1 .. p8}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    :cond_c1
    return-void
.end method

.method private shouldCancelHardwareAccelerate()Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 5
    :try_start_b
    const-string v2, "android_weex_test_gpu"

    const-string v3, "cancel_hardware_accelerate"

    const-string/jumbo v4, "true"

    .line 6
    invoke-interface {v0, v2, v3, v4}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 14
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cancel_hardware_accelerate : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    :cond_34
    return v1
.end method

.method private updateElevation()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->getElevation(F)F

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_1d
    return-void
.end method

.method private updateStyleByPesudo(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_6f

    .line 4
    :cond_7
    new-instance v1, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v7

    const/4 v8, 0x1

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Z)V

    .line 5
    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->executeActionOnRender()V

    .line 6
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_37

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_37

    goto :goto_6f

    .line 8
    :cond_37
    const-string/jumbo p1, "width"

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 9
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    return-void

    .line 10
    :cond_54
    const-string p1, "height"

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 11
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_6f
    :goto_6f
    return-void
.end method


# virtual methods
.method public addAnimationForElement(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_13

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    :cond_13
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_21
    return-void
.end method

.method protected final addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
    .registers 4

    if-eqz p1, :cond_2a

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-nez v1, :cond_13

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    .line 5
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$4;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_25
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    .line 4
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_104

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_104

    .line 7
    :cond_1b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    .line 9
    const-string v1, "layeroverflow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addLayerOverFlowListener(Ljava/lang/String;)V

    .line 12
    :cond_2e
    const-string v1, "click"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    if-nez v0, :cond_3a

    goto/16 :goto_104

    .line 17
    :cond_3a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    if-nez v0, :cond_46

    .line 18
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    .line 20
    :cond_46
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    goto/16 :goto_ff

    .line 21
    :cond_4d
    const-string v1, "focus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    const-string v1, "blur"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    goto/16 :goto_f0

    .line 33
    :cond_5f
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->needGestureDetector(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    if-nez v0, :cond_69

    goto/16 :goto_104

    .line 38
    :cond_69
    instance-of v1, v0, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-eqz v1, :cond_b4

    .line 39
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-nez v1, :cond_93

    .line 40
    new-instance v1, Lcom/taobao/weex/ui/view/gesture/WXGesture;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 41
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "preventMoveEvent"

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setPreventMoveEvent(Z)V

    .line 44
    :cond_93
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-nez v1, :cond_9e

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    .line 47
    :cond_9e
    const-string/jumbo v1, "view_hover_event"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 48
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_ac
    check-cast v0, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    goto :goto_ff

    .line 51
    :cond_b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " don\'t implement WXGestureObservable, so no gesture is supported."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_ff

    .line 55
    :cond_d1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    if-nez v0, :cond_d8

    goto :goto_104

    .line 60
    :cond_d8
    const-string v1, "appear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 61
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_ff

    .line 62
    :cond_e4
    const-string v1, "disappear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 63
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_ff

    .line 64
    :cond_f0
    :goto_f0
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    if-nez v0, :cond_ff

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    .line 66
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXComponent$1;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 109
    :cond_ff
    :goto_ff
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_104
    :goto_104
    return-void
.end method

.method protected final addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V
    .registers 4

    if-eqz p1, :cond_24

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-nez v1, :cond_1f

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$3;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 16
    :cond_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->addLayerOverFlowListener(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected appendEventToDOM(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public applyComponentEvents()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyEvents()V

    return-void
.end method

.method public applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p1, :cond_9

    move-object p1, p0

    .line 5
    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 6
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 8
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V

    .line 9
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyEvents()V

    :cond_20
    return-void
.end method

.method public applyLayoutOnly()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2
    invoke-virtual {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V

    :cond_14
    return-void
.end method

.method protected final bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setViewPortWidth(F)V

    .line 6
    :cond_14
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 7
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 8
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getType()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    return-void
.end method

.method protected bindComponentData(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1c

    if-nez p1, :cond_9

    move-object p1, p0

    .line 5
    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 6
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateAttrs(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 9
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getExtra()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->updateExtra(Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponentData(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    return-void
.end method

.method public bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    return-void
.end method

.method public canRecycled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->canRecycled()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method protected clearBoxShadow()V
    .registers 8

    .line 1
    invoke-static {}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->isBoxShadowEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    const-string v0, "BoxShadow"

    const-string v1, "box-shadow disabled"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 6
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBoxShadowData(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)V

    .line 8
    :cond_16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_5c

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_5c

    .line 11
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_45

    .line 12
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_5c

    .line 15
    :cond_45
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v6, v3

    aput-object v5, v6, v2

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 20
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v0, :cond_62

    .line 21
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 23
    :cond_62
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    if-eqz v0, :cond_77

    .line 24
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 25
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 27
    :cond_75
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    .line 29
    :cond_77
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    if-eqz v0, :cond_7d

    .line 30
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    :cond_7d
    return-void
.end method

.method public clearPreLayout()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 2
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 3
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 4
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 5
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    return-void
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public containsEvent(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method public containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_e6

    :goto_13
    const/4 v1, -0x1

    goto/16 :goto_d9

    .line 1
    :sswitch_16
    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_13

    :cond_1f
    const/16 v1, 0xf

    goto/16 :goto_d9

    :sswitch_23
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_13

    :cond_2c
    const/16 v1, 0xe

    goto/16 :goto_d9

    :sswitch_30
    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_13

    :cond_39
    const/16 v1, 0xd

    goto/16 :goto_d9

    :sswitch_3d
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_13

    :cond_46
    const/16 v1, 0xc

    goto/16 :goto_d9

    :sswitch_4a
    const-string v0, "borderBottomRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_13

    :cond_53
    const/16 v1, 0xb

    goto/16 :goto_d9

    :sswitch_57
    const-string v0, "borderBottomLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto :goto_13

    :cond_60
    const/16 v1, 0xa

    goto/16 :goto_d9

    :sswitch_64
    const-string v0, "borderTopRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_13

    :cond_6d
    const/16 v1, 0x9

    goto/16 :goto_d9

    :sswitch_71
    const-string v0, "borderLeftWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto :goto_13

    :cond_7a
    const/16 v1, 0x8

    goto :goto_d9

    :sswitch_7d
    const-string v0, "borderLeftColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    goto :goto_13

    :cond_86
    const/4 v1, 0x7

    goto :goto_d9

    :sswitch_88
    const-string v0, "borderTopLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    goto :goto_13

    :cond_91
    const/4 v1, 0x6

    goto :goto_d9

    :sswitch_93
    const-string v0, "borderBottomWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9d

    goto/16 :goto_13

    :cond_9d
    const/4 v1, 0x5

    goto :goto_d9

    :sswitch_9f
    const-string v0, "borderBottomColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a9

    goto/16 :goto_13

    :cond_a9
    const/4 v1, 0x4

    goto :goto_d9

    :sswitch_ab
    const-string v0, "borderTopWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b5

    goto/16 :goto_13

    :cond_b5
    const/4 v1, 0x3

    goto :goto_d9

    :sswitch_b7
    const-string v0, "borderTopColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c1

    goto/16 :goto_13

    :cond_c1
    const/4 v1, 0x2

    goto :goto_d9

    :sswitch_c3
    const-string v0, "borderRightWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cd

    goto/16 :goto_13

    :cond_cd
    const/4 v1, 0x1

    goto :goto_d9

    :sswitch_cf
    const-string v0, "borderRightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d9

    goto/16 :goto_13

    :cond_d9
    :goto_d9
    packed-switch v1, :pswitch_data_128

    return-object p2

    .line 3
    :pswitch_dd
    const-string/jumbo p1, "transparent"

    return-object p1

    :pswitch_e1
    return-object v2

    .line 21
    :pswitch_e2
    const-string p1, "black"

    return-object p1

    nop

    :sswitch_data_e6
    .sparse-switch
        -0x7696880d -> :sswitch_cf
        -0x757f89aa -> :sswitch_c3
        -0x57ab08a6 -> :sswitch_b7
        -0x56940a43 -> :sswitch_ab
        -0x4e0397d4 -> :sswitch_9f
        -0x4cec9971 -> :sswitch_93
        -0x4932ce1e -> :sswitch_88
        -0xe70d730 -> :sswitch_7d
        -0xd59d8cd -> :sswitch_71
        0x13dfc885 -> :sswitch_64
        0x22a57450 -> :sswitch_57
        0x230fd3d7 -> :sswitch_4a
        0x2b158697 -> :sswitch_3d
        0x2c2c84fa -> :sswitch_30
        0x4cb7f6d5 -> :sswitch_23
        0x506afbde -> :sswitch_16
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_e1
        :pswitch_e2
        :pswitch_e1
        :pswitch_e2
        :pswitch_e1
        :pswitch_e1
        :pswitch_e2
        :pswitch_e1
        :pswitch_e1
        :pswitch_e1
        :pswitch_e1
        :pswitch_e2
        :pswitch_e1
        :pswitch_dd
        :pswitch_e1
    .end packed-switch
.end method

.method public final createView()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    :cond_9
    return-void
.end method

.method protected createViewImpl()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_41

    .line 2
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_15

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v0

    if-nez v0, :cond_15

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->initView()V

    .line 7
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_3b

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 15
    :cond_29
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 16
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ComponentObserver;->onViewCreated(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;)V

    .line 18
    :cond_38
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->invokePendingComponetMethod()V

    .line 20
    :cond_3b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    return-void

    .line 22
    :cond_41
    const-string v0, "createViewImpl"

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_8a

    .line 4
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 7
    invoke-interface {v0, p0}, Lcom/taobao/weex/ComponentObserver;->onPreDestory(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 10
    :cond_18
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2d

    .line 11
    :cond_25
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v1, "[WXComponent] destroy can only be called in main thread"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_45

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 14
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 16
    :cond_45
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->removeAllEvent()V

    .line 17
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->removeStickyStyle()V

    .line 20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 21
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/weex/WXSDKInstance;->removeFixedView(Landroid/view/View;)V

    .line 24
    :cond_5e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    if-eqz v0, :cond_67

    .line 25
    invoke-virtual {v0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;->destroy()V

    .line 26
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    :cond_67
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    .line 29
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_71

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 32
    :cond_71
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-eqz v0, :cond_7a

    .line 33
    invoke-virtual {v0}, Lio/dcloud/weex/ViewHover;->destroy()V

    .line 34
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 36
    :cond_7a
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 37
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_83

    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    :cond_83
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_8a

    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public detachViewAndClearPreInfo()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 3
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 4
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 5
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 6
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    return-object v0
.end method

.method protected final findComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 4
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_7

    return-object p1

    .line 4
    :cond_7
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 5
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 6
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public final fireEvent(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
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

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "fireEventSyn"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    return-void

    :cond_1a
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method protected final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public final fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/bridge/EventResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$2;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/WXComponent$2;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v2, 0x0

    .line 10
    :try_start_c
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    .line 11
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception p1

    .line 14
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 15
    const-string p2, "fireEventWait"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    return-object v1
.end method

.method public getAbsoluteX()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    return v0
.end method

.method public getAbsoluteY()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    return v0
.end method

.method public getAttrByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string p1, "default"

    return-object p1
.end method

.method public getComponentSize()Landroid/graphics/Rect;
    .registers 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_42

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_42

    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [I

    .line 5
    new-array v1, v1, [I

    .line 6
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 8
    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    const/4 v3, 0x1

    .line 9
    aget v2, v2, v3

    iget v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    sub-int/2addr v2, v5

    aget v1, v1, v3

    sub-int/2addr v2, v1

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result v1

    float-to-int v1, v1

    .line 11
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    .line 12
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_42
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v0, :cond_8

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/taobao/weex/ui/component/Scrollable;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getHover()Lio/dcloud/weex/ViewHover;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    return-object v0
.end method

.method public getInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutTopOffsetForSibling()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-nez v0, :cond_a3

    .line 2
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-direct {v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_a3

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_54

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    if-eqz v0, :cond_33

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v3

    aput-object v6, v1, v2

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_a3

    .line 9
    :cond_33
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    if-eqz v0, :cond_4c

    .line 10
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v3

    aput-object v6, v1, v2

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_a3

    .line 13
    :cond_4c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-static {v0, v1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_a3

    .line 17
    :cond_54
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    const/4 v4, 0x3

    if-eqz v0, :cond_72

    .line 18
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    iget-object v8, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v3

    aput-object v7, v4, v2

    aput-object v8, v4, v1

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v5, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_a3

    .line 20
    :cond_72
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    if-eqz v0, :cond_8f

    .line 21
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    iget-object v8, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v3

    aput-object v7, v4, v2

    aput-object v8, v4, v1

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v5, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_a3

    .line 24
    :cond_8f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v3

    aput-object v6, v1, v2

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 30
    :cond_a3
    :goto_a3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object v0
.end method

.method public getParent()Lcom/taobao/weex/ui/component/WXVContainer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    return-object v0
.end method

.method public getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .registers 5

    move-object v0, p0

    .line 1
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 5
    :cond_9
    instance-of v2, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v2, :cond_10

    .line 6
    check-cast v0, Lcom/taobao/weex/ui/component/Scrollable;

    return-object v0

    .line 9
    :cond_10
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1
.end method

.method public getRealView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getRenderObjectPtr()J
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->isRenderPtrEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeGetRenderObject(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->setRenderObjectPr(J)V

    .line 4
    :cond_1d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->getRenderObjectPr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStickyOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    return v0
.end method

.method public getTransition()Lcom/taobao/weex/dom/transition/WXTransition;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getViewPortWidthForFloat()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    return v0

    :cond_f
    const/high16 v0, 0x44340000    # 720.0f

    return v0
.end method

.method public getViewTreeKey()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    if-nez v0, :cond_53

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    const-string v1, "_"

    if-nez v0, :cond_29

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    goto :goto_53

    .line 5
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    .line 8
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 3
    :catch_e
    const-string/jumbo v0, "visible"

    return-object v0
.end method

.method public hasScrollParent(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_8
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXBaseScroller;

    if-eqz v0, :cond_12

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_12
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->hasScrollParent(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result p1

    return p1
.end method

.method public hoverClass(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverClass"
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_12

    .line 4
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0, p1}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/alibaba/fastjson/JSONObject;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    goto :goto_15

    .line 6
    :cond_12
    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->update(Lcom/alibaba/fastjson/JSONObject;)V

    .line 8
    :goto_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string/jumbo v0, "view_hover_event"

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 9
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public hoverStartTime(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStartTime"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStartTime(I)V

    return-void
.end method

.method public hoverStayTime(I)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStayTime"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStayTime(I)V

    return-void
.end method

.method public hoverStopPropagation(Z)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStopPropagation"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStopPropagation(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "view_hover_event"

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 6
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 8
    :cond_20
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    .line 9
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setHoverReceiveTouch(Z)V

    :cond_2c
    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected initElevation(Ljava/lang/String;)V
    .registers 15

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    .line 4
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz p1, :cond_28

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    :cond_28
    const/16 p1, 0x15

    if-ne v0, p1, :cond_36

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    return-void

    .line 10
    :cond_36
    new-instance p1, Landroid/animation/StateListAnimator;

    invoke-direct {p1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 12
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const-string v4, "elevation"

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    sget-object v10, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v11, v5, [F

    aput v1, v11, v7

    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-wide v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 15
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 16
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 18
    new-instance v3, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v3}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 22
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    iget v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    new-array v11, v5, [F

    aput v6, v11, v7

    invoke-static {v3, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    new-array v11, v5, [F

    aput v1, v11, v7

    invoke-static {v6, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-wide v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 25
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 26
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 28
    new-instance v3, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v3}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 29
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->FOCUSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 32
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    iget v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    new-array v12, v5, [F

    aput v11, v12, v7

    invoke-static {v6, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x16

    if-lt v0, v6, :cond_101

    const/16 v6, 0x18

    if-gt v0, v6, :cond_101

    .line 40
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    new-array v11, v5, [F

    aput v6, v11, v7

    .line 42
    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DELAY:J

    .line 43
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 44
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_101
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    new-array v6, v5, [F

    aput v1, v6, v7

    invoke-static {v0, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 48
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 49
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-array v0, v7, [Landroid/animation/ObjectAnimator;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 52
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 56
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    new-array v3, v5, [F

    aput v1, v3, v7

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    new-array v4, v5, [F

    aput v1, v4, v7

    invoke-static {v3, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 59
    new-instance v1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->EMPTY_STATE_SET:[I

    invoke-virtual {p1, v1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 62
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_16e
    return-void
.end method

.method protected initView()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 4
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->invokePendingComponetMethod()V

    :cond_f
    return-void
.end method

.method public interceptFocusAndBlurEvent()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    return-void
.end method

.method public final invoke(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_54

    .line 5
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 8
    :try_start_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p0, v0, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[WXComponent] updateProperties :class:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "method:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " function "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_50
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    return-void

    .line 17
    :cond_54
    :goto_54
    new-instance v0, Lio/dcloud/feature/uniapp/ui/action/UniMethodData;

    invoke-direct {v0, p1, p2}, Lio/dcloud/feature/uniapp/ui/action/UniMethodData;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    .line 18
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method protected isConsumeTouch()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isDestoryed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    return v0
.end method

.method public isDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    return v0
.end method

.method public isFixed()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->isFixed()Z

    move-result v0

    return v0
.end method

.method public isFlatUIEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isFlatUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isLayerTypeEnabled()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isLayerTypeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLazy()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 4
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public isPreventGesture()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    return v0
.end method

.method protected isRippleEnabled()Z
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "rippleEnabled"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    const/4 v0, 0x0

    return v0
.end method

.method public isSticky()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->isSticky()Z

    move-result v0

    return v0
.end method

.method public isUsing()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    return v0
.end method

.method public isVirtualComponent()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isWaste()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    return v0
.end method

.method protected ismHasFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method protected layoutDirectionDidChanged(Z)V
    .registers 2

    return-void
.end method

.method public lazy(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    return-void
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .registers 5

    .line 1
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 3
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    if-eqz v1, :cond_e

    .line 4
    iput v1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 5
    iput v1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    return-object v0

    .line 7
    :cond_e
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 8
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    return-object v0
.end method

.method public nativeUpdateAttrs(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_8

    .line 11
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeAttr(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_29
    return-void
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "appear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "disappear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 2
    :cond_12
    :goto_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v1, "direction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public notifyNativeSizeChanged(II)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalShadows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 8
    :cond_21
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    int-to-float p2, p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public onActivityBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .registers 1

    return-void
.end method

.method public onActivityDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_7
    return-void
.end method

.method public onActivityPause()V
    .registers 1

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onActivityResume()V
    .registers 1

    return-void
.end method

.method public onActivityStart()V
    .registers 1

    return-void
.end method

.method public onActivityStop()V
    .registers 1

    return-void
.end method

.method protected onCreate()V
    .registers 1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishLayout()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "backgroundImage"

    invoke-virtual {v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1b

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundImage(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method protected onHostViewInitialized(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

    if-eqz p1, :cond_9

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {p1, v0, p0}, Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;->execute(Lio/dcloud/feature/uniapp/AbsSDKInstance;Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 5
    :cond_9
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->setActiveTouchListener()V

    return-void
.end method

.method protected onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .registers 3

    return-void
.end method

.method public onRenderFinish(I)V
    .registers 9

    .line 1
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadNanos:J

    invoke-static {v0, v1}, Lcom/taobao/weex/tracing/Stopwatch;->nanosToMillis(J)D

    move-result-wide v0

    const-string v2, "X"

    const/4 v3, 0x2

    if-eq p1, v3, :cond_15

    if-nez p1, :cond_52

    .line 4
    :cond_15
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget v5, v5, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->rootEventId:I

    const-string v6, "DomExecute"

    invoke-static {v6, v4, v5}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v4

    .line 5
    iput-object v2, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 6
    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v5, v5, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->domThreadStart:J

    iput-wide v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 7
    const-string v5, "DOMThread"

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v5

    if-eqz v5, :cond_4f

    .line 11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    .line 13
    :cond_4f
    invoke-virtual {v4}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    :cond_52
    if-eq p1, v3, :cond_57

    const/4 v3, 0x1

    if-ne p1, v3, :cond_a6

    .line 17
    :cond_57
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_9d

    .line 18
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget v3, v3, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->rootEventId:I

    const-string v4, "UIExecute"

    invoke-static {v4, p1, v3}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object p1

    .line 19
    iput-object v2, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 20
    iput-wide v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    .line 21
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    iput-wide v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 22
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 25
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    .line 27
    :cond_99
    invoke-virtual {p1}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    return-void

    .line 29
    :cond_9d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_a6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    :cond_a6
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

.method public postAnimation(Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

    return-void
.end method

.method public readyToRender()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isTrackComponent()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->readyToRender()V

    :cond_19
    return-void
.end method

.method public recycled()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    return-void
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    return-void
.end method

.method public registerActivityStateListener()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public removeAllEvent()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    goto :goto_70

    .line 4
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2d

    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-lt v2, v3, :cond_1e

    goto :goto_2d

    .line 10
    :cond_1e
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_27

    goto :goto_2a

    .line 14
    :cond_27
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 16
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_34

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 19
    :cond_34
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_3b

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_3b
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 23
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-eqz v1, :cond_55

    .line 25
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    invoke-interface {v1, v0}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    .line 27
    :cond_55
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_70

    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 29
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v1, :cond_70

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_70

    .line 30
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 31
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_70
    :goto_70
    return-void
.end method

.method protected final removeClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeEvent(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5
    :cond_7
    const-string v0, "layeroverflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->removeLayerOverFlowListener(Ljava/lang/String;)V

    .line 8
    :cond_16
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->remove(Ljava/lang/String;)Z

    .line 11
    :cond_23
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_2a

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_2a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_31

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_31
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    return-void
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 3
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    .line 5
    :cond_1e
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3d

    .line 8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 13
    :cond_3d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    .line 14
    const-string v1, "appear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 15
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 17
    :cond_4e
    const-string v1, "disappear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    if-eqz v0, :cond_5b

    .line 18
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_5b
    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeLayerOverFlowListener(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final removeStickyStyle()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_f
    return-void
.end method

.method public removeVirtualComponent()V
    .registers 1

    return-void
.end method

.method protected setAriaHidden(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_a

    const/4 p1, 0x2

    goto :goto_b

    :cond_a
    const/4 p1, 0x1

    .line 3
    :goto_b
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_e
    return-void
.end method

.method protected setAriaLabel(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 2
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isRippleEnabled()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 4
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_70

    .line 6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-nez p1, :cond_22

    .line 7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {p1, v0, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void

    .line 10
    :cond_22
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_43

    .line 11
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    iget-object v7, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    invoke-direct {p1, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_6a

    .line 12
    :cond_43
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    if-eqz p1, :cond_5b

    .line 13
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v3

    aput-object v5, v0, v2

    aput-object v6, v0, v1

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_6a

    .line 15
    :cond_5b
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v3

    aput-object v4, v1, v2

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 17
    :goto_6a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void

    :cond_70
    if-nez p1, :cond_76

    .line 22
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_7d

    .line 23
    :cond_76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setColor(I)V

    :cond_7d
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setImage(Landroid/graphics/Shader;)V

    return-void

    .line 4
    :cond_15
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/WXResourceUtils;->getShader(Ljava/lang/String;FF)Landroid/graphics/Shader;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setImage(Landroid/graphics/Shader;)V

    return-void
.end method

.method public setBorderColor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 2
    invoke-static {p2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p2

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_88

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_8a

    goto :goto_53

    :sswitch_1d
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_53

    :cond_26
    const/4 v1, 0x4

    goto :goto_53

    :sswitch_28
    const-string v0, "borderLeftColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_53

    :cond_31
    const/4 v1, 0x3

    goto :goto_53

    :sswitch_33
    const-string v0, "borderBottomColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_53

    :cond_3c
    const/4 v1, 0x2

    goto :goto_53

    :sswitch_3e
    const-string v0, "borderTopColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_53

    :cond_47
    const/4 v1, 0x1

    goto :goto_53

    :sswitch_49
    const-string v0, "borderRightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    packed-switch v1, :pswitch_data_a0

    goto :goto_88

    .line 6
    :pswitch_57
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    return-void

    .line 18
    :pswitch_61
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    return-void

    .line 19
    :pswitch_6b
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    return-void

    .line 20
    :pswitch_75
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    return-void

    .line 23
    :pswitch_7f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    :cond_88
    :goto_88
    return-void

    nop

    :sswitch_data_8a
    .sparse-switch
        -0x7696880d -> :sswitch_49
        -0x57ab08a6 -> :sswitch_3e
        -0x4e0397d4 -> :sswitch_33
        -0xe70d730 -> :sswitch_28
        0x2b158697 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_75
        :pswitch_6b
        :pswitch_61
        :pswitch_57
    .end packed-switch
.end method

.method public setBorderRadius(Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_b1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_b2

    goto :goto_4a

    :sswitch_14
    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_4a

    :cond_1d
    const/4 v1, 0x4

    goto :goto_4a

    :sswitch_1f
    const-string v0, "borderBottomRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_4a

    :cond_28
    const/4 v1, 0x3

    goto :goto_4a

    :sswitch_2a
    const-string v0, "borderBottomLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_4a

    :cond_33
    const/4 v1, 0x2

    goto :goto_4a

    :sswitch_35
    const-string v0, "borderTopRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_4a

    :cond_3e
    const/4 v1, 0x1

    goto :goto_4a

    :sswitch_40
    const-string v0, "borderTopLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    packed-switch v1, :pswitch_data_c8

    goto :goto_b1

    .line 3
    :pswitch_4e
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p2

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {p2, v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    return-void

    .line 15
    :pswitch_62
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    return-void

    .line 18
    :pswitch_76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    return-void

    .line 19
    :pswitch_8a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    return-void

    .line 20
    :pswitch_9e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_b1
    :goto_b1
    return-void

    :sswitch_data_b2
    .sparse-switch
        -0x4932ce1e -> :sswitch_40
        0x13dfc885 -> :sswitch_35
        0x22a57450 -> :sswitch_2a
        0x230fd3d7 -> :sswitch_1f
        0x506afbde -> :sswitch_14
    .end sparse-switch

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_8a
        :pswitch_76
        :pswitch_62
        :pswitch_4e
    .end packed-switch
.end method

.method public setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_82

    goto :goto_4b

    :sswitch_15
    const-string v0, "borderStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_4b

    :cond_1e
    const/4 v1, 0x4

    goto :goto_4b

    :sswitch_20
    const-string v0, "borderLeftStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_4b

    :cond_29
    const/4 v1, 0x3

    goto :goto_4b

    :sswitch_2b
    const-string v0, "borderBottomStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_4b

    :cond_34
    const/4 v1, 0x2

    goto :goto_4b

    :sswitch_36
    const-string v0, "borderTopStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_4b

    :cond_3f
    const/4 v1, 0x1

    goto :goto_4b

    :sswitch_41
    const-string v0, "borderRightStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    packed-switch v1, :pswitch_data_98

    goto :goto_80

    .line 4
    :pswitch_4f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    return-void

    .line 13
    :pswitch_59
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    return-void

    .line 14
    :pswitch_63
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    return-void

    .line 20
    :pswitch_6d
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    return-void

    .line 21
    :pswitch_77
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    :cond_80
    :goto_80
    return-void

    nop

    :sswitch_data_82
    .sparse-switch
        -0x75b299bf -> :sswitch_41
        -0x56c71a58 -> :sswitch_36
        -0x4d1fa986 -> :sswitch_2b
        -0xd8ce8e2 -> :sswitch_20
        0x2bf974e5 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_77
        :pswitch_6d
        :pswitch_63
        :pswitch_59
        :pswitch_4f
    .end packed-switch
.end method

.method public setBorderWidth(Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_7f

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_80

    goto :goto_4a

    :sswitch_14
    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_4a

    :cond_1d
    const/4 v1, 0x4

    goto :goto_4a

    :sswitch_1f
    const-string v0, "borderLeftWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_4a

    :cond_28
    const/4 v1, 0x3

    goto :goto_4a

    :sswitch_2a
    const-string v0, "borderBottomWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_4a

    :cond_33
    const/4 v1, 0x2

    goto :goto_4a

    :sswitch_35
    const-string v0, "borderTopWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_4a

    :cond_3e
    const/4 v1, 0x1

    goto :goto_4a

    :sswitch_40
    const-string v0, "borderRightWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    packed-switch v1, :pswitch_data_96

    goto :goto_7f

    .line 3
    :pswitch_4e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    return-void

    .line 15
    :pswitch_58
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    return-void

    .line 16
    :pswitch_62
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    return-void

    .line 17
    :pswitch_6c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    return-void

    .line 20
    :pswitch_76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_7f
    :goto_7f
    return-void

    :sswitch_data_80
    .sparse-switch
        -0x757f89aa -> :sswitch_40
        -0x56940a43 -> :sswitch_35
        -0x4cec9971 -> :sswitch_2a
        -0xd59d8cd -> :sswitch_1f
        0x2c2c84fa -> :sswitch_14
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_76
        :pswitch_6c
        :pswitch_62
        :pswitch_58
        :pswitch_4e
    .end packed-switch
.end method

.method protected setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/WXSDKInstance;->addContentBoxMeasurement(JLcom/taobao/weex/layout/ContentBoxMeasurement;)V

    .line 3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->bindMeasurementToRenderObject(J)V

    return-void
.end method

.method public setDemission(Lcom/taobao/weex/ui/action/GraphicSize;Lcom/taobao/weex/ui/action/GraphicPosition;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    return-void
.end method

.method public setDisabled(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_7

    return-void

    :cond_7
    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setElevation(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "elevation"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->initElevation(Ljava/lang/String;)V

    return-void
.end method

.method protected setHostLayoutParams(Landroid/view/View;IIIIII)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v1, :cond_13

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, p0

    move v2, p4

    move v4, p5

    move v3, p6

    move/from16 v5, p7

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    goto :goto_23

    .line 6
    :cond_13
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;->getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    :goto_23
    if-eqz v1, :cond_28

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    return-void
.end method

.method public setHoverClassStatus(Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->updateStatusAndGetUpdateStyles(Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_75

    if-eqz p1, :cond_6e

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez p1, :cond_23

    if-eqz v2, :cond_3a

    .line 7
    :cond_23
    new-instance v4, Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v5

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    :cond_3a
    if-eqz p1, :cond_54

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/action/GraphicSize;->setWidth(F)V

    goto :goto_75

    :cond_54
    if-eqz v2, :cond_75

    .line 12
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/action/GraphicSize;->setHeight(F)V

    goto :goto_75

    .line 15
    :cond_6e
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz p1, :cond_75

    .line 16
    invoke-virtual {p0, p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 21
    :cond_75
    :goto_75
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyleByPesudo(Ljava/util/Map;)V

    return-void
.end method

.method public setHoverReceiveTouch(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHover()Lio/dcloud/weex/ViewHover;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHover()Lio/dcloud/weex/ViewHover;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setReceiveTouch(Z)V

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_16

    .line 5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setHoverReceiveTouch(Z)V

    :cond_16
    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 17

    move-object/from16 v1, p1

    .line 1
    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 2
    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 3
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 4
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 5
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 7
    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->isLayoutRTL()Z

    move-result v2

    .line 8
    invoke-virtual {p0, v2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setIsLayoutRTL(Z)V

    .line 9
    iget-boolean v3, v1, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    if-eq v2, v3, :cond_35

    .line 10
    iput-boolean v2, v1, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    .line 11
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->layoutDirectionDidChanged(Z)V

    :cond_35
    const/4 v1, 0x0

    .line 15
    :try_start_36
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_53

    .line 16
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->parseAnimation()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_51} :catch_52

    goto :goto_53

    :catch_52
    nop

    .line 23
    :cond_53
    :goto_53
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5b

    const/4 v2, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    if-eqz v2, :cond_5f

    goto :goto_65

    .line 26
    :cond_5f
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildrenLayoutTopOffset()I

    move-result v3

    :goto_65
    if-eqz v2, :cond_6d

    .line 28
    new-instance v5, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v5}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_73

    :cond_6d
    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    :goto_73
    if-eqz v2, :cond_7b

    .line 29
    new-instance v6, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v6}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_81

    :cond_7b
    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    .line 31
    :goto_81
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v7

    float-to-int v7, v7

    .line 32
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v8

    float-to-int v8, v8

    .line 38
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 39
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 40
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v6, v9

    float-to-int v6, v6

    add-int/2addr v6, v3

    move v3, v5

    goto :goto_ef

    .line 42
    :cond_c2
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v9

    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 43
    invoke-virtual {v5, v10}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v11

    sub-float/2addr v9, v11

    invoke-virtual {v6, v10}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 44
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v10

    sget-object v11, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 45
    invoke-virtual {v5, v11}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    sub-float/2addr v10, v5

    invoke-virtual {v6, v11}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    sub-float/2addr v10, v5

    float-to-int v5, v10

    add-int v6, v5, v3

    move v3, v9

    .line 48
    :goto_ef
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v9, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v9}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    float-to-int v5, v5

    .line 49
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v9

    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v9, v10}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v9

    float-to-int v9, v9

    .line 51
    new-instance v10, Landroid/graphics/Point;

    .line 52
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v11

    invoke-virtual {v11}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v11

    float-to-int v11, v11

    .line 53
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v12

    invoke-virtual {v12}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 55
    iget v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    if-ne v11, v7, :cond_131

    iget v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    if-ne v11, v8, :cond_131

    iget v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    if-ne v11, v3, :cond_131

    iget v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    if-ne v11, v5, :cond_131

    iget v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    if-ne v11, v6, :cond_131

    goto :goto_17f

    .line 59
    :cond_131
    instance-of v11, p0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v11, :cond_156

    sget v11, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_HEIGHT:I

    if-lt v8, v11, :cond_156

    sget v11, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_WIDTH:I

    if-lt v7, v11, :cond_156

    .line 60
    iget-object v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v11}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v11

    const-string/jumbo v12, "wxCellExceedNum"

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v12, v13, v14}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 61
    iget-object v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v11}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v11

    iget v12, v11, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    add-int/2addr v12, v4

    iput v12, v11, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    :cond_156
    if-eqz v2, :cond_15a

    const/4 v11, 0x0

    goto :goto_166

    .line 64
    :cond_15a
    iget-object v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteY()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getCSSLayoutTop()F

    move-result v12

    add-float/2addr v11, v12

    :goto_166
    float-to-int v11, v11

    iput v11, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    if-eqz v2, :cond_16c

    goto :goto_178

    .line 65
    :cond_16c
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getCSSLayoutLeft()F

    move-result v2

    add-float/2addr v1, v2

    :goto_178
    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    .line 67
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v1, :cond_180

    :goto_17f
    return-void

    .line 72
    :cond_180
    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1a8

    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v2

    add-int/2addr v2, v4

    if-le v1, v2, :cond_1a8

    .line 73
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v2, v1, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v2, :cond_199

    .line 74
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->onOldFsRenderTimeLogic()V

    .line 76
    :cond_199
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v2, v1, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    if-nez v2, :cond_1a8

    .line 77
    iput-boolean v4, v1, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 78
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveNewFsRenderTime()V

    .line 82
    :cond_1a8
    invoke-virtual {p0, v7, v8}, Lcom/taobao/weex/ui/component/WXComponent;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object v1

    .line 83
    iget v2, v1, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 84
    iget v1, v1, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    move v0, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    move v4, v6

    move v6, v9

    move-object v7, v10

    .line 86
    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V

    return-void
.end method

.method public setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 6

    .line 1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2
    instance-of p2, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_d

    .line 3
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x33

    .line 4
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_d
    return-void
.end method

.method public setNeedLayoutOnAnimation(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    return-void
.end method

.method public setOpacity(F)V
    .registers 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_50

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_50

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_50

    .line 2
    invoke-static {}, Lcom/taobao/weex/ui/WXRenderManager;->getOpenGLRenderLimitValue()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6
    :cond_26
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->shouldCancelHardwareAccelerate()Z

    move-result v1

    if-eqz v1, :cond_4b

    if-lez v0, :cond_4b

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v1

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_45

    .line 7
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4b

    .line 8
    :cond_45
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10
    :cond_4b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_50
    return-void
.end method

.method public setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    invoke-virtual {p2, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 2
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 3
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    invoke-virtual {p2, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 4
    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    invoke-virtual {p2, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 5
    instance-of p2, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz p2, :cond_46

    move-object p2, p0

    check-cast p2, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v3

    if-nez v3, :cond_46

    .line 6
    invoke-interface {p2}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object p2

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/taobao/weex/ui/flat/widget/Widget;->setContentBox(IIII)V

    return-void

    .line 7
    :cond_46
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_75

    .line 8
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz p2, :cond_70

    .line 9
    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result p2

    if-lez p2, :cond_5e

    .line 10
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    add-int/2addr v2, p2

    .line 14
    :cond_5e
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result p2

    if-lez p2, :cond_70

    .line 15
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    add-int/2addr p1, p2

    .line 20
    :cond_70
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_75
    return-void
.end method

.method public setPreventGesture(Z)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "preventGesture"
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    .line 2
    const-string p1, "preventGesture"

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p1, :cond_3f1

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_3f1

    .line 4
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_3f2

    goto/16 :goto_32f

    :sswitch_19
    const-string v1, "marginLeft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_32f

    :cond_23
    const/16 v3, 0x39

    goto/16 :goto_32f

    :sswitch_27
    const-string/jumbo v1, "visibility"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto/16 :goto_32f

    :cond_32
    const/16 v3, 0x38

    goto/16 :goto_32f

    :sswitch_36
    const-string v1, "justifyContent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto/16 :goto_32f

    :cond_40
    const/16 v3, 0x37

    goto/16 :goto_32f

    :sswitch_44
    const-string v1, "alignSelf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto/16 :goto_32f

    :cond_4e
    const/16 v3, 0x36

    goto/16 :goto_32f

    :sswitch_52
    const-string v1, "flexWrap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto/16 :goto_32f

    :cond_5c
    const/16 v3, 0x35

    goto/16 :goto_32f

    :sswitch_60
    const-string v1, "borderRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto/16 :goto_32f

    :cond_6a
    const/16 v3, 0x34

    goto/16 :goto_32f

    :sswitch_6e
    const-string v1, "backgroundImage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    goto/16 :goto_32f

    :cond_78
    const/16 v3, 0x33

    goto/16 :goto_32f

    :sswitch_7c
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    goto/16 :goto_32f

    :cond_86
    const/16 v3, 0x32

    goto/16 :goto_32f

    :sswitch_8a
    const-string v1, "marginRight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    goto/16 :goto_32f

    :cond_94
    const/16 v3, 0x31

    goto/16 :goto_32f

    :sswitch_98
    const-string v1, "position"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    goto/16 :goto_32f

    :cond_a2
    const/16 v3, 0x30

    goto/16 :goto_32f

    :sswitch_a6
    const-string v1, "fixedSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    goto/16 :goto_32f

    :cond_b0
    const/16 v3, 0x2f

    goto/16 :goto_32f

    :sswitch_b4
    const-string v1, "boxShadow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    goto/16 :goto_32f

    :cond_be
    const/16 v3, 0x2e

    goto/16 :goto_32f

    :sswitch_c2
    const-string v1, "borderWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    goto/16 :goto_32f

    :cond_cc
    const/16 v3, 0x2d

    goto/16 :goto_32f

    :sswitch_d0
    const-string v1, "borderStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_da

    goto/16 :goto_32f

    :cond_da
    const/16 v3, 0x2c

    goto/16 :goto_32f

    :sswitch_de
    const-string v1, "borderColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    goto/16 :goto_32f

    :cond_e8
    const/16 v3, 0x2b

    goto/16 :goto_32f

    :sswitch_ec
    const-string v1, "preventMoveEvent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    goto/16 :goto_32f

    :cond_f6
    const/16 v3, 0x2a

    goto/16 :goto_32f

    :sswitch_fa
    const-string v1, "paddingRight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_104

    goto/16 :goto_32f

    :cond_104
    const/16 v3, 0x29

    goto/16 :goto_32f

    :sswitch_108
    const-string v1, "borderBottomRightRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_112

    goto/16 :goto_32f

    :cond_112
    const/16 v3, 0x28

    goto/16 :goto_32f

    :sswitch_116
    const-string v1, "borderBottomLeftRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    goto/16 :goto_32f

    :cond_120
    const/16 v3, 0x27

    goto/16 :goto_32f

    :sswitch_124
    const-string v1, "maxWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    goto/16 :goto_32f

    :cond_12e
    const/16 v3, 0x26

    goto/16 :goto_32f

    :sswitch_132
    const-string v1, "borderTopRightRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13c

    goto/16 :goto_32f

    :cond_13c
    const/16 v3, 0x25

    goto/16 :goto_32f

    :sswitch_140
    const-string v1, "disabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14a

    goto/16 :goto_32f

    :cond_14a
    const/16 v3, 0x24

    goto/16 :goto_32f

    :sswitch_14e
    const-string v1, "paddingBottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_158

    goto/16 :goto_32f

    :cond_158
    const/16 v3, 0x23

    goto/16 :goto_32f

    :sswitch_15c
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_167

    goto/16 :goto_32f

    :cond_167
    const/16 v3, 0x22

    goto/16 :goto_32f

    :sswitch_16b
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    goto/16 :goto_32f

    :cond_175
    const/16 v3, 0x21

    goto/16 :goto_32f

    :sswitch_179
    const-string v1, "paddingTop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_183

    goto/16 :goto_32f

    :cond_183
    const/16 v3, 0x20

    goto/16 :goto_32f

    :sswitch_187
    const-string v1, "role"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_191

    goto/16 :goto_32f

    :cond_191
    const/16 v3, 0x1f

    goto/16 :goto_32f

    :sswitch_195
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19f

    goto/16 :goto_32f

    :cond_19f
    const/16 v3, 0x1e

    goto/16 :goto_32f

    :sswitch_1a3
    const-string v1, "flex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ad

    goto/16 :goto_32f

    :cond_1ad
    const/16 v3, 0x1d

    goto/16 :goto_32f

    :sswitch_1b1
    const-string/jumbo v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bc

    goto/16 :goto_32f

    :cond_1bc
    const/16 v3, 0x1c

    goto/16 :goto_32f

    :sswitch_1c0
    const-string v1, "minHeight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ca

    goto/16 :goto_32f

    :cond_1ca
    const/16 v3, 0x1b

    goto/16 :goto_32f

    :sswitch_1ce
    const-string v1, "borderLeftWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d8

    goto/16 :goto_32f

    :cond_1d8
    const/16 v3, 0x1a

    goto/16 :goto_32f

    :sswitch_1dc
    const-string v1, "borderLeftStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e6

    goto/16 :goto_32f

    :cond_1e6
    const/16 v3, 0x19

    goto/16 :goto_32f

    :sswitch_1ea
    const-string v1, "borderLeftColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f4

    goto/16 :goto_32f

    :cond_1f4
    const/16 v3, 0x18

    goto/16 :goto_32f

    :sswitch_1f8
    const-string v1, "marginBottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_202

    goto/16 :goto_32f

    :cond_202
    const/16 v3, 0x17

    goto/16 :goto_32f

    :sswitch_206
    const-string v1, "padding"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_210

    goto/16 :goto_32f

    :cond_210
    const/16 v3, 0x16

    goto/16 :goto_32f

    :sswitch_214
    const-string v1, "ariaLabel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21e

    goto/16 :goto_32f

    :cond_21e
    const/16 v3, 0x15

    goto/16 :goto_32f

    :sswitch_222
    const-string v1, "maxHeight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22c

    goto/16 :goto_32f

    :cond_22c
    const/16 v3, 0x14

    goto/16 :goto_32f

    :sswitch_230
    const-string v1, "flexDirection"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23a

    goto/16 :goto_32f

    :cond_23a
    const/16 v3, 0x13

    goto/16 :goto_32f

    :sswitch_23e
    const-string v1, "marginTop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_248

    goto/16 :goto_32f

    :cond_248
    const/16 v3, 0x12

    goto/16 :goto_32f

    :sswitch_24c
    const-string v1, "alignItems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_256

    goto/16 :goto_32f

    :cond_256
    const/16 v3, 0x11

    goto/16 :goto_32f

    :sswitch_25a
    const-string v1, "margin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_264

    goto/16 :goto_32f

    :cond_264
    const/16 v3, 0x10

    goto/16 :goto_32f

    :sswitch_268
    const-string v1, "ariaHidden"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_272

    goto/16 :goto_32f

    :cond_272
    const/16 v3, 0xf

    goto/16 :goto_32f

    :sswitch_276
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_280

    goto/16 :goto_32f

    :cond_280
    const/16 v3, 0xe

    goto/16 :goto_32f

    :sswitch_284
    const-string v1, "borderTopLeftRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28e

    goto/16 :goto_32f

    :cond_28e
    const/16 v3, 0xd

    goto/16 :goto_32f

    :sswitch_292
    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29c

    goto/16 :goto_32f

    :cond_29c
    const/16 v3, 0xc

    goto/16 :goto_32f

    :sswitch_2a0
    const-string v1, "borderBottomWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2aa

    goto/16 :goto_32f

    :cond_2aa
    const/16 v3, 0xb

    goto/16 :goto_32f

    :sswitch_2ae
    const-string v1, "borderBottomStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b8

    goto/16 :goto_32f

    :cond_2b8
    const/16 v3, 0xa

    goto/16 :goto_32f

    :sswitch_2bc
    const-string v1, "borderBottomColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c6

    goto/16 :goto_32f

    :cond_2c6
    const/16 v3, 0x9

    goto/16 :goto_32f

    :sswitch_2ca
    const-string v1, "minWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d4

    goto/16 :goto_32f

    :cond_2d4
    const/16 v3, 0x8

    goto/16 :goto_32f

    :sswitch_2d8
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e1

    goto :goto_32f

    :cond_2e1
    const/4 v3, 0x7

    goto :goto_32f

    :sswitch_2e3
    const-string v1, "borderTopWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ec

    goto :goto_32f

    :cond_2ec
    const/4 v3, 0x6

    goto :goto_32f

    :sswitch_2ee
    const-string v1, "borderTopStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f7

    goto :goto_32f

    :cond_2f7
    const/4 v3, 0x5

    goto :goto_32f

    :sswitch_2f9
    const-string v1, "borderTopColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_302

    goto :goto_32f

    :cond_302
    const/4 v3, 0x4

    goto :goto_32f

    :sswitch_304
    const-string v1, "paddingLeft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30d

    goto :goto_32f

    :cond_30d
    const/4 v3, 0x3

    goto :goto_32f

    :sswitch_30f
    const-string v1, "borderRightWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_318

    goto :goto_32f

    :cond_318
    const/4 v3, 0x2

    goto :goto_32f

    :sswitch_31a
    const-string v1, "borderRightStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_323

    goto :goto_32f

    :cond_323
    const/4 v3, 0x1

    goto :goto_32f

    :sswitch_325
    const-string v1, "borderRightColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32e

    goto :goto_32f

    :cond_32e
    const/4 v3, 0x0

    :goto_32f
    const-string v1, ""

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_4dc

    return v2

    .line 66
    :pswitch_336
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_33f

    .line 68
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setVisibility(Ljava/lang/String;)V

    :cond_33f
    return v0

    .line 69
    :pswitch_340
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_34d

    .line 70
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_34d

    .line 71
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundImage(Ljava/lang/String;)V

    :cond_34d
    return v0

    .line 72
    :pswitch_34e
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_357

    .line 74
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundColor(Ljava/lang/String;)V

    :cond_357
    return v0

    .line 75
    :pswitch_358
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_361

    .line 77
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setSticky(Ljava/lang/String;)V

    :cond_361
    return v0

    .line 133
    :pswitch_362
    const-string p1, "m"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedSize(Ljava/lang/String;)V

    return v0

    .line 178
    :pswitch_36c
    :try_start_36c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;
    :try_end_36f
    .catchall {:try_start_36c .. :try_end_36f} :catchall_370

    goto :goto_374

    :catchall_370
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_374
    return v0

    .line 183
    :pswitch_375
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz p1, :cond_386

    .line 184
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setPreventMoveEvent(Z)V

    :cond_386
    return v0

    .line 188
    :pswitch_387
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_39d

    .line 190
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setDisabled(Z)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, ":disabled"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    :cond_39d
    return v0

    .line 306
    :pswitch_39e
    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setRole(Ljava/lang/String;)V

    return v0

    .line 307
    :pswitch_3a6
    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setAriaLabel(Ljava/lang/String;)V

    return v0

    .line 311
    :pswitch_3ae
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setAriaHidden(Z)V

    return v0

    .line 313
    :pswitch_3bc
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_3c9

    .line 315
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderRadius(Ljava/lang/String;F)V

    :cond_3c9
    return v0

    :pswitch_3ca
    const/high16 p1, 0x3f800000    # 1.0f

    .line 316
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3dd

    .line 318
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setOpacity(F)V

    :cond_3dd
    :pswitch_3dd
    return v0

    .line 334
    :pswitch_3de
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3e7

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e7
    return v0

    .line 343
    :pswitch_3e8
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3f1

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderColor(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f1
    :goto_3f1
    return v0

    :sswitch_data_3f2
    .sparse-switch
        -0x7696880d -> :sswitch_325
        -0x75b299bf -> :sswitch_31a
        -0x757f89aa -> :sswitch_30f
        -0x597a2048 -> :sswitch_304
        -0x57ab08a6 -> :sswitch_2f9
        -0x56c71a58 -> :sswitch_2ee
        -0x56940a43 -> :sswitch_2e3
        -0x527265d5 -> :sswitch_2d8
        -0x5201456c -> :sswitch_2ca
        -0x4e0397d4 -> :sswitch_2bc
        -0x4d1fa986 -> :sswitch_2ae
        -0x4cec9971 -> :sswitch_2a0
        -0x4b8807f5 -> :sswitch_292
        -0x4932ce1e -> :sswitch_284
        -0x48c76ed9 -> :sswitch_276
        -0x42474fed -> :sswitch_268
        -0x40737a52 -> :sswitch_25a
        -0x3f600445 -> :sswitch_24c
        -0x3e464339 -> :sswitch_23e
        -0x3a1ff07a -> :sswitch_230
        -0x36017855 -> :sswitch_222
        -0x337b0495 -> :sswitch_214
        -0x300fc3ef -> :sswitch_206
        -0x113c6e87 -> :sswitch_1f8
        -0xe70d730 -> :sswitch_1ea
        -0xd8ce8e2 -> :sswitch_1dc
        -0xd59d8cd -> :sswitch_1ce
        -0x7f661e7 -> :sswitch_1c0
        0x1c155 -> :sswitch_1b1
        0x2ffff9 -> :sswitch_1a3
        0x32a007 -> :sswitch_195
        0x358076 -> :sswitch_187
        0x55f4784 -> :sswitch_179
        0x677c21c -> :sswitch_16b
        0x6be2dc6 -> :sswitch_15c
        0xc0fb19c -> :sswitch_14e
        0x10263a7c -> :sswitch_140
        0x13dfc885 -> :sswitch_132
        0x17dd56c2 -> :sswitch_124
        0x22a57450 -> :sswitch_116
        0x230fd3d7 -> :sswitch_108
        0x2a8c788b -> :sswitch_fa
        0x2ac25e51 -> :sswitch_ec
        0x2b158697 -> :sswitch_de
        0x2bf974e5 -> :sswitch_d0
        0x2c2c84fa -> :sswitch_c2
        0x2c4a1ecb -> :sswitch_b4
        0x2c8d6195 -> :sswitch_a6
        0x2c929929 -> :sswitch_98
        0x3a1ea90e -> :sswitch_8a
        0x4cb7f6d5 -> :sswitch_7c
        0x4d0b70cd -> :sswitch_6e
        0x506afbde -> :sswitch_60
        0x67f69fe3 -> :sswitch_52
        0x6953cff1 -> :sswitch_44
        0x6ee75fc9 -> :sswitch_36
        0x73b66312 -> :sswitch_27
        0x757a12d5 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_4dc
    .packed-switch 0x0
        :pswitch_3e8
        :pswitch_3de
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3e8
        :pswitch_3de
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3e8
        :pswitch_3de
        :pswitch_3dd
        :pswitch_3ca
        :pswitch_3bc
        :pswitch_3dd
        :pswitch_3ae
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3a6
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3e8
        :pswitch_3de
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_39e
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_387
        :pswitch_3bc
        :pswitch_3dd
        :pswitch_3bc
        :pswitch_3bc
        :pswitch_3dd
        :pswitch_375
        :pswitch_3e8
        :pswitch_3de
        :pswitch_3dd
        :pswitch_36c
        :pswitch_362
        :pswitch_358
        :pswitch_3dd
        :pswitch_34e
        :pswitch_340
        :pswitch_3bc
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_3dd
        :pswitch_336
        :pswitch_3dd
    .end packed-switch
.end method

.method protected setPseudoClassStatus(Ljava/lang/String;Z)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a2

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_a2

    .line 7
    :cond_12
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    if-nez v2, :cond_1d

    .line 8
    new-instance v2, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    invoke-direct {v2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    .line 10
    :cond_1d
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    .line 14
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v3

    .line 15
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_9f

    if-eqz p2, :cond_98

    .line 23
    new-instance p2, Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v2

    invoke-direct {p2, v1, v2}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 24
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string/jumbo v1, "width"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 25
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p2

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "width:active"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/action/GraphicSize;->setWidth(F)V

    goto :goto_9f

    .line 26
    :cond_6e
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v1, "height"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9f

    .line 27
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p2

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v0

    const-string v1, "height:active"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/action/GraphicSize;->setHeight(F)V

    goto :goto_9f

    .line 30
    :cond_98
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz p2, :cond_9f

    .line 31
    invoke-virtual {p0, p2}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 36
    :cond_9f
    :goto_9f
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyleByPesudo(Ljava/util/Map;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method protected setRole(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 4
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAccessibilityRoleAdapter()Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 6
    invoke-interface {v1, p1}, Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;->getRole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_1a
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$5;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/WXComponent$5;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)V

    .line 20
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_22
    return-void
.end method

.method public setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_24

    .line 6
    :cond_21
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public setSticky(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "sticky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 4
    invoke-interface {p1, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_18
    return-void
.end method

.method public setStickyOffset(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    return-void
.end method

.method public setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

    return-void
.end method

.method public setUsing(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    const-string/jumbo v1, "visible"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :cond_14
    const-string v1, "hidden"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/16 p1, 0x8

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    return-void
.end method

.method public setWaste(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    if-eq v0, p1, :cond_76

    .line 2
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    .line 3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recycle-list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectChildWaste(JZ)V

    :cond_1d
    const-string/jumbo v0, "visibility"

    if-eqz p1, :cond_44

    .line 9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string v1, "hidden"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3a

    .line 12
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-nez p1, :cond_76

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    return-void

    .line 16
    :cond_3a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 19
    :cond_44
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string/jumbo v1, "visible"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_6f

    .line 21
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-eqz p1, :cond_76

    .line 22
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 23
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    return-void

    .line 25
    :cond_69
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-static {p0, p1}, Lcom/taobao/weex/ui/component/binding/Statements;->initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V

    return-void

    .line 29
    :cond_6f
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_76
    return-void
.end method

.method public updateActivePseudo(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    const-string v0, ":active"

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    :cond_b
    return-void
.end method

.method public updateAttrs(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method public updateAttrs(Ljava/util/Map;)V
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

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method protected updateBoxShadow(IIZ)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->isBoxShadowEnabled()Z

    move-result v3

    if-eqz v3, :cond_2ce

    iget v3, v0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2ce

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v5, "elevation"

    invoke-virtual {v3, v5}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2ce

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    invoke-virtual {v3, v5}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2b

    goto/16 :goto_2ce

    .line 8
    :cond_2b
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    if-eqz v3, :cond_2c8

    .line 9
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string v5, "boxShadow"

    invoke-virtual {v3, v5}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v5

    const-string v6, "shadowQuality"

    invoke-virtual {v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_49

    goto/16 :goto_2dc

    :cond_49
    if-lez v1, :cond_2dc

    if-gtz v2, :cond_4f

    goto/16 :goto_2dc

    :cond_4f
    const/high16 v6, 0x3f000000    # 0.5f

    .line 19
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 20
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 22
    new-array v4, v7, [F

    const/4 v9, 0x0

    aput v8, v4, v9

    const/4 v10, 0x1

    aput v8, v4, v10

    const/4 v11, 0x2

    aput v8, v4, v11

    const/4 v12, 0x3

    aput v8, v4, v12

    const/4 v13, 0x4

    aput v8, v4, v13

    const/4 v14, 0x5

    aput v8, v4, v14

    const/4 v15, 0x6

    aput v8, v4, v15

    const/16 v16, 0x7

    aput v8, v4, v16

    const/16 v17, 0x0

    .line 23
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v8

    const/16 v18, 0x0

    if-eqz v8, :cond_12b

    .line 25
    const-string v9, "borderTopLeftRadius"

    invoke-virtual {v8, v9}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/16 v19, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 26
    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v13

    aput v13, v4, v18

    .line 27
    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v9

    aput v9, v4, v10

    .line 29
    const-string v9, "borderTopRightRadius"

    invoke-virtual {v8, v9}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 30
    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v13

    aput v13, v4, v11

    .line 31
    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v9

    aput v9, v4, v12

    .line 33
    const-string v9, "borderBottomRightRadius"

    invoke-virtual {v8, v9}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 34
    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v13

    aput v13, v4, v19

    .line 35
    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v9

    aput v9, v4, v14

    .line 37
    const-string v9, "borderBottomLeftRadius"

    invoke-virtual {v8, v9}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 38
    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v13

    aput v13, v4, v15

    .line 39
    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v9

    aput v9, v4, v16

    .line 41
    const-string v9, "borderRadius"

    invoke-virtual {v8, v9}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    .line 42
    invoke-virtual {v8, v9}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    :goto_120
    if-ge v9, v7, :cond_12b

    .line 44
    invoke-static {v8, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v13

    aput v13, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_120

    .line 49
    :cond_12b
    iget-object v7, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v7, :cond_13b

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v2, v4}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->equalsUniBoxShadowData(Ljava/lang/String;II[F)Z

    move-result v7

    if-eqz v7, :cond_13b

    goto/16 :goto_2dc

    .line 52
    :cond_13b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->parseBoxShadow(IILjava/lang/String;[FFF)Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    move-result-object v8

    if-nez v8, :cond_147

    goto/16 :goto_2dc

    .line 56
    :cond_147
    iput-object v8, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 57
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v8, v1}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->getNormalBoxShadowDrawable(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;Landroid/content/res/Resources;)Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    move-result-object v9

    .line 58
    invoke-static {v8}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->getInsetBoxShadowDrawable(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    move-result-object v13

    if-nez v9, :cond_15d

    if-eqz v13, :cond_2dc

    :cond_15d
    if-eqz v9, :cond_236

    if-eqz p3, :cond_236

    .line 61
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_236

    .line 62
    invoke-virtual {v8}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalMaxWidth()I

    move-result v2

    invoke-virtual {v8}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalMaxHeight()I

    move-result v3

    .line 63
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v1, :cond_173

    const/4 v1, 0x1

    goto :goto_174

    :cond_173
    const/4 v1, 0x0

    :goto_174
    if-eqz v1, :cond_17c

    .line 64
    new-instance v4, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v4}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_182

    :cond_17c
    iget-object v4, v0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    :goto_182
    if-eqz v1, :cond_18a

    .line 65
    new-instance v5, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v5}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_190

    :cond_18a
    iget-object v5, v0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    :goto_190
    if-eqz v1, :cond_194

    const/4 v1, 0x0

    goto :goto_19a

    .line 66
    :cond_194
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildrenLayoutTopOffset()I

    move-result v1

    .line 70
    :goto_19a
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v6

    if-eqz v6, :cond_1c8

    .line 71
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v4

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 72
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v1

    goto :goto_1f5

    .line 74
    :cond_1c8
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 75
    invoke-virtual {v4, v7}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v14

    sub-float/2addr v6, v14

    invoke-virtual {v5, v7}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 76
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v7

    sget-object v14, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 77
    invoke-virtual {v4, v14}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v7, v4

    invoke-virtual {v5, v14}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v7, v4

    float-to-int v4, v7

    add-int v5, v4, v1

    move v4, v6

    .line 80
    :goto_1f5
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v6}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    float-to-int v1, v1

    .line 81
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v6

    float-to-int v7, v6

    .line 83
    invoke-virtual {v8}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v6

    div-int/2addr v6, v11

    sub-int/2addr v4, v6

    .line 84
    invoke-virtual {v8}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v6

    div-int/2addr v6, v11

    sub-int v6, v5, v6

    .line 86
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v5

    if-eqz v5, :cond_225

    move v5, v1

    .line 87
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedHostLayoutParams(Landroid/view/View;IIIIII)V

    goto :goto_22b

    :cond_225
    move v5, v1

    .line 89
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 91
    :goto_22b
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V

    .line 93
    :cond_236
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_2b7

    .line 94
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 96
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_26d

    if-eqz v9, :cond_251

    .line 98
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v3, v11, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v3, v18

    aput-object v2, v3, v10

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a4

    :cond_251
    if-eqz v13, :cond_261

    .line 100
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v3, v11, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v18

    aput-object v13, v3, v10

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a4

    .line 102
    :cond_261
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v18

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a4

    :cond_26d
    if-eqz v9, :cond_281

    .line 106
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v18

    aput-object v9, v4, v10

    aput-object v3, v4, v11

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a4

    :cond_281
    if-eqz v13, :cond_295

    .line 108
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v4, v12, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v18

    aput-object v3, v4, v10

    aput-object v13, v4, v11

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a4

    .line 110
    :cond_295
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    new-array v4, v11, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v18

    aput-object v3, v4, v10

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_2a4
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 114
    iput-object v8, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 115
    iput-object v9, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    .line 116
    iput-object v13, v0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    .line 117
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-virtual {v1, v8}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBoxShadowData(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)V

    return-void

    .line 119
    :cond_2b7
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 120
    iput-object v8, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 121
    iput-object v9, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    .line 122
    iput-object v13, v0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    .line 123
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBoxShadowData(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)V

    return-void

    .line 128
    :cond_2c8
    const-string v1, "Can not resolve styles"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 129
    :cond_2ce
    :goto_2ce
    const-string v1, "BoxShadow"

    const-string v2, "box-shadow disabled"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v1, :cond_2dc

    .line 131
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    :cond_2dc
    :goto_2dc
    return-void
.end method

.method public updateDemission(FFFFFF)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicPosition;->update(FFFF)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-virtual {p1, p6, p5}, Lcom/taobao/weex/ui/action/GraphicSize;->update(FF)V

    return-void
.end method

.method public updateNativeAttr(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_7

    .line 1
    const-string p2, ""

    .line 3
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeUpdateRenderObjectAttr(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNativeStyle(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_7

    .line 1
    const-string p2, ""

    .line 3
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeUpdateRenderObjectStyle(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNativeStyles(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_8

    .line 11
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeStyle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_29
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_ef

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v0

    if-eqz v0, :cond_ef

    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_ef

    .line 5
    :cond_14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_ca

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_4b

    .line 11
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_NULL_KEY:Lcom/taobao/weex/common/WXErrorCode;

    .line 13
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    .line 14
    const-string/jumbo v4, "updateProperties"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1c

    .line 18
    :cond_4b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 19
    invoke-virtual {p0, v2, v4}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    :cond_55
    invoke-virtual {p0, v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 22
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    if-eqz v3, :cond_ef

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    if-nez v3, :cond_67

    goto/16 :goto_ef

    .line 25
    :cond_67
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v3, v2}, Lio/dcloud/feature/uniapp/ui/AbsIComponentHolder;->getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 28
    :try_start_6f
    invoke-interface {v2}, Lcom/taobao/weex/bridge/Invoker;->getParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 29
    array-length v4, v3

    if-eq v4, v1, :cond_8b

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXComponent] setX method only one parameter\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_ef

    :cond_8b
    const/4 v4, 0x0

    .line 33
    aget-object v3, v3, v4

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXReflectionUtils;->parseArgument(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-interface {v2, p0, v1}, Lcom/taobao/weex/bridge/Invoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_99} :catch_9a

    goto :goto_1c

    :catch_9a
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[WXComponent] updateProperties :class:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "method:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 42
    :cond_ca
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->readyToRender()V

    .line 43
    instance-of p1, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz p1, :cond_ef

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz p1, :cond_ef

    .line 44
    move-object p1, p0

    check-cast p1, Lcom/taobao/weex/ui/flat/FlatComponent;

    .line 45
    invoke-interface {p1, v1}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 46
    invoke-interface {p1}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    if-nez v0, :cond_ef

    .line 47
    invoke-interface {p1}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/flat/widget/Widget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    :cond_ef
    :goto_ef
    return-void
.end method

.method public updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    :cond_c
    return-void
.end method

.method public updateStyles(Ljava/util/Map;)V
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

    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 4
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    :cond_8
    return-void
.end method

.method public useFeature()Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass1 (com.taobao.weex.ui.component.WXComponent$1)
.class Lcom/taobao/weex/ui/component/WXComponent$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$1;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timeStamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent$1;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_1a

    const-string p1, "focus"

    goto :goto_1c

    :cond_1a
    const-string p1, "blur"

    :goto_1c
    invoke-virtual {v1, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass2 (com.taobao.weex.ui.component.WXComponent$2)
.class Lcom/taobao/weex/ui/component/WXComponent$2;
.super Lcom/taobao/weex/bridge/EventResult;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/EventResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/taobao/weex/bridge/EventResult;->onCallback(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$2;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass3 (com.taobao.weex.ui.component.WXComponent$3)
.class Lcom/taobao/weex/ui/component/WXComponent$3;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$3;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$3;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXComponent;->access$200(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0, p2}, Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;->onFocusChange(Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass4 (com.taobao.weex.ui.component.WXComponent$4)
.class Lcom/taobao/weex/ui/component/WXComponent$4;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isTouchEventConsumedByAdvancedGesture()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_29

    .line 5
    :cond_d
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXComponent;->access$300(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    if-eqz v0, :cond_17

    .line 7
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;->onHostViewClick()V

    goto :goto_17

    :cond_29
    :goto_29
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass5 (com.taobao.weex.ui.component.WXComponent$5)
.class Lcom/taobao/weex/ui/component/WXComponent$5;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->setRole(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$finalRole:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->val$finalRole:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->val$finalRole:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-void

    .line 4
    :catchall_9
    const-string p1, "SetRole failed!"

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass6 (com.taobao.weex.ui.component.WXComponent$6)
.class Lcom/taobao/weex/ui/component/WXComponent$6;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->invokePendingComponetMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXComponent;->access$400(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXComponent;->access$400(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/uniapp/ui/action/UniMethodData;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent$6;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/UniMethodData;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/action/UniMethodData;->getArgs()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->invoke(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_0

    :cond_28
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass7 (com.taobao.weex.ui.component.WXComponent$7)
.class Lcom/taobao/weex/ui/component/WXComponent$7;
.super Landroid/graphics/drawable/RippleDrawable;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0, p2, p3, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXComponent;->access$500(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$7;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXComponent;->access$500(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 5
    :cond_25
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.AnonymousClass8 (com.taobao.weex.ui.component.WXComponent$8)
.class Lcom/taobao/weex/ui/component/WXComponent$8;
.super Landroid/view/ViewOutlineProvider;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->initOutlineProvider(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$radius:F


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;F)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$8;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iput p2, p0, Lcom/taobao/weex/ui/component/WXComponent$8;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$8;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4d

    .line 4
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz v0, :cond_4d

    if-nez p1, :cond_1a

    goto :goto_4d

    .line 8
    :cond_1a
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent$8;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->isRounded()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float p1, v0

    .line 13
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent$8;->val$radius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    div-float/2addr p1, v0

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_48

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_48

    .line 15
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent$8;->val$radius:F

    mul-float p1, p1, v0

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 17
    :cond_48
    iget p1, p0, Lcom/taobao/weex/ui/component/WXComponent$8;->val$radius:F

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :cond_4d
    :goto_4d
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.MeasureOutput (com.taobao.weex.ui.component.WXComponent$MeasureOutput)
.class public Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureOutput"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.OnClickListener (com.taobao.weex.ui.component.WXComponent$OnClickListener)
.class public interface abstract Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClickListener"
.end annotation


# virtual methods
.method public abstract onHostViewClick()V
.end method

###### Class com.taobao.weex.ui.component.WXComponent.OnClickListenerImp (com.taobao.weex.ui.component.WXComponent$OnClickListenerImp)
.class Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .registers 7

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/taobao/weex/utils/WXDataStructureUtil;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x4

    .line 2
    invoke-static {v2}, Lcom/taobao/weex/utils/WXDataStructureUtil;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x2

    .line 3
    new-array v3, v3, [I

    .line 4
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    .line 5
    aget v4, v3, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/WXComponent;->access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    aget v0, v3, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/WXComponent;->access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v3, "y"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutWidth()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/WXComponent;->access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v3, "width"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getLayoutHeight()F

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/WXComponent;->access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "height"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v0, "position"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    const-string v2, "click"

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXComponent.OnFocusChangeListener (com.taobao.weex.ui.component.WXComponent$OnFocusChangeListener)
.class public interface abstract Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFocusChangeListener"
.end annotation


# virtual methods
.method public abstract onFocusChange(Z)V
.end method

###### Class com.taobao.weex.ui.component.WXComponent.RenderState (com.taobao.weex.ui.component.WXComponent$RenderState)
.class public interface abstract annotation Lcom/taobao/weex/ui/component/WXComponent$RenderState;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RenderState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
