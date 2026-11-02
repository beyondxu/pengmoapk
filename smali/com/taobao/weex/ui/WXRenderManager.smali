###### Class com.taobao.weex.ui.WXRenderManager (com.taobao.weex.ui.WXRenderManager)
.class public Lcom/taobao/weex/ui/WXRenderManager;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# static fields
.field private static mOpenGLRenderLimitValue:I = 0x0

.field private static nativeBatchTimes:I = 0x0

.field private static final sKeyAction:Ljava/lang/String; = "Action"


# instance fields
.field private final MAX_DROP_FRAME_NATIVE_BATCH:I

.field private mBatchActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentBatchInstanceId:Ljava/lang/String;

.field private volatile mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/RenderContextImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    const/16 v0, 0x7d0

    .line 4
    iput v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->MAX_DROP_FRAME_NATIVE_BATCH:I

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    new-instance v0, Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-direct {v0}, Lcom/taobao/weex/ui/WXRenderHandler;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    return-void
.end method

.method public static getOpenGLRenderLimitValue()I
    .registers 9

    .line 1
    sget v0, Lcom/taobao/weex/ui/WXRenderManager;->mOpenGLRenderLimitValue:I

    if-nez v0, :cond_73

    const/4 v1, 0x0

    .line 4
    :try_start_5
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    .line 7
    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v0, 0x7

    .line 8
    new-array v4, v0, [I

    fill-array-data v4, :array_76

    const/4 v0, 0x1

    .line 13
    new-array v5, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 14
    new-array v7, v0, [I

    const/4 v6, 0x1

    .line 15
    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 16
    aget v4, v7, v1

    if-nez v4, :cond_30

    const/4 v1, -0x1

    .line 19
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto :goto_71

    .line 21
    :cond_30
    aget-object v4, v5, v1

    const/16 v5, 0x3057

    const/16 v6, 0x3056

    const/16 v7, 0x40

    const/16 v8, 0x3038

    .line 22
    filled-new-array {v5, v7, v6, v7, v8}, [I

    move-result-object v5

    .line 26
    invoke-interface {v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    const/16 v6, 0x3098

    .line 28
    filled-new-array {v6, v0, v8}, [I

    move-result-object v6

    .line 31
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v7, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    .line 32
    invoke-interface {v2, v3, v5, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 33
    new-array v0, v0, [I

    const/16 v6, 0xd33

    .line 34
    invoke-static {v6, v0, v1}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 35
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v6, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 37
    invoke-interface {v2, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 38
    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 39
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 40
    aget v1, v0, v1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_68} :catch_69

    goto :goto_71

    :catch_69
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 45
    :goto_71
    sput v1, Lcom/taobao/weex/ui/WXRenderManager;->mOpenGLRenderLimitValue:I

    .line 47
    :cond_73
    sget v0, Lcom/taobao/weex/ui/WXRenderManager;->mOpenGLRenderLimitValue:I

    return v0

    :array_76
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3033
        0x1
        0x3038
    .end array-data
.end method

.method private postAllStashedGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_14

    :cond_13
    move-object v2, v1

    .line 10
    :goto_14
    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    sput v1, Lcom/taobao/weex/ui/WXRenderManager;->nativeBatchTimes:I

    if-nez v0, :cond_21

    return-void

    .line 20
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    :goto_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_52

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 23
    const-string v4, "Action"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 24
    instance-of v4, v3, Lcom/taobao/weex/ui/action/BasicGraphicAction;

    if-nez v4, :cond_41

    goto :goto_4f

    .line 27
    :cond_41
    check-cast v3, Lcom/taobao/weex/ui/action/BasicGraphicAction;

    .line 28
    iget v4, v3, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mActionType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4f

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4c

    goto :goto_4f

    .line 31
    :cond_4c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 33
    :cond_52
    new-instance v1, Lcom/taobao/weex/ui/action/GraphicActionBatchAction;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Lcom/taobao/weex/ui/action/GraphicActionBatchAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    return-void
.end method


# virtual methods
.method public getAllInstances()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/RenderContextImpl;

    if-eqz v2, :cond_1b

    .line 6
    invoke-virtual {v2}, Lcom/taobao/weex/ui/RenderContextImpl;->getWXSDKInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_37
    return-object v0

    :cond_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderContext(Ljava/lang/String;)Lcom/taobao/weex/dom/RenderContext;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/dom/RenderContext;

    return-object p1
.end method

.method public getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_16

    .line 4
    :cond_a
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getRenderContext(Ljava/lang/String;)Lcom/taobao/weex/dom/RenderContext;

    move-result-object p1

    if-nez p1, :cond_11

    return-object v0

    .line 5
    :cond_11
    invoke-interface {p1, p2}, Lcom/taobao/weex/dom/RenderContext;->getComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_16
    return-object v0
.end method

.method public getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1a

    .line 4
    :cond_a
    iget-object v1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    if-nez p1, :cond_15

    return-object v0

    .line 5
    :cond_15
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/RenderContextImpl;->getComponentById(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_c
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getWXSDKInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    return-object p1
.end method

.method public postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    if-nez v0, :cond_b

    return-void

    .line 8
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    const-string v1, "Action"

    const/4 v2, 0x1

    if-eqz v0, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 9
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    instance-of v3, v0, Lcom/taobao/weex/ui/action/BasicGraphicAction;

    if-eqz v3, :cond_3e

    .line 12
    check-cast v0, Lcom/taobao/weex/ui/action/BasicGraphicAction;

    .line 13
    iget-object v3, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postAllStashedGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 17
    :cond_3e
    iget v0, p2, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mActionType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_47

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->postAllStashedGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    return-void

    :cond_47
    if-eq v0, v2, :cond_51

    .line 20
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 21
    :cond_51
    sget v0, Lcom/taobao/weex/ui/WXRenderManager;->nativeBatchTimes:I

    add-int/2addr v0, v2

    sput v0, Lcom/taobao/weex/ui/WXRenderManager;->nativeBatchTimes:I

    const/16 v3, 0x7d0

    if-le v0, v3, :cond_63

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->postAllStashedGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 34
    :cond_5d
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/WXRenderHandler;->post(Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 35
    :cond_63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    iput-boolean v2, p2, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mIsRunByBatch:Z

    .line 37
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p2, p0, Lcom/taobao/weex/ui/WXRenderManager;->mBatchActions:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iput-object p1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mCurrentBatchInstanceId:Ljava/lang/String;

    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/taobao/weex/ui/WXRenderHandler;->post(Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerComponent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    if-eqz p1, :cond_26

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/ui/RenderContextImpl;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 5
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getComponentCount()I

    move-result p1

    int-to-double v0, p1

    .line 8
    const-string/jumbo p1, "wxMaxComponentCount"

    invoke-virtual {p2, p1, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    :cond_26
    return-void
.end method

.method public registerInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    .line 2
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_INSTANCE_ID_NULL:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "instanceId is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "registerInstance"

    const/4 v2, 0x0

    invoke-static {v2, p1, v1, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 12
    :cond_24
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/ui/RenderContextImpl;

    invoke-direct {v2, p1}, Lcom/taobao/weex/ui/RenderContextImpl;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeRenderStatement(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/RenderContextImpl;

    if-eqz v0, :cond_13

    .line 7
    invoke-virtual {v0}, Lcom/taobao/weex/ui/RenderContextImpl;->destroy()V

    :cond_13
    if-nez p1, :cond_1c

    .line 10
    iget-object p1, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 14
    :cond_26
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "[WXRenderManager] removeRenderStatement can only be called in main thread"

    invoke-direct {p1, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mWXRenderHandler:Lcom/taobao/weex/ui/WXRenderHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScrollable(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/ui/RenderContextImpl;->setAllScrollerScrollable(ZLjava/lang/String;)V

    return-void
.end method

.method public unregisterComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/ui/WXRenderManager;->mRenderContext:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/RenderContextImpl;

    if-eqz p1, :cond_28

    .line 3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/taobao/weex/ui/RenderContextImpl;->getComponentCount()I

    move-result v1

    int-to-double v1, v1

    .line 7
    const-string/jumbo v3, "wxMaxComponentCount"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    .line 12
    :cond_23
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/RenderContextImpl;->unregisterComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method
