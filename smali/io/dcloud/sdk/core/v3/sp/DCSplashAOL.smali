###### Class io.dcloud.sdk.core.v3.sp.DCSplashAOL (io.dcloud.sdk.core.v3.sp.DCSplashAOL)
.class public Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;
.super Lio/dcloud/sdk/core/v3/base/DCBaseAOL;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;


# instance fields
.field b:Lio/dcloud/p/k4;

.field private c:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/v3/base/DCBaseAOL;-><init>(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lio/dcloud/p/k4;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lio/dcloud/p/k4;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->b:Lio/dcloud/p/k4;

    return-void
.end method


# virtual methods
.method public isSplashOpen()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/v3/base/DCBaseAOL;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/p/m;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->b:Lio/dcloud/p/k4;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/dcloud/p/b5;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/v3/base/DCBaseAOL;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    if-nez p1, :cond_a

    goto :goto_23

    .line 7
    :cond_a
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->b:Lio/dcloud/p/k4;

    if-nez v0, :cond_1a

    if-eqz p2, :cond_2e

    const/16 p1, -0x1397

    .line 9
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lio/dcloud/sdk/core/v3/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void

    .line 12
    :cond_1a
    new-instance v1, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;

    invoke-direct {v1, p0, p2}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;-><init>(Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/p/k4;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/p/w2;)V

    return-void

    :cond_23
    :goto_23
    if-eqz p2, :cond_2e

    const/16 p1, -0x1396

    .line 13
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lio/dcloud/sdk/core/v3/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_2e
    return-void
.end method

.method public onClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->c:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;->onClick()V

    :cond_7
    return-void
.end method

.method public onClose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->c:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;->onClose()V

    :cond_7
    return-void
.end method

.method public onPaidGet(JLjava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public onShow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->c:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;->onShow()V

    :cond_7
    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->c:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;->onShowError(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onSkip()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->c:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;->onSkip()V

    :cond_7
    return-void
.end method

.method public onVideoPlayEnd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->c:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;->onVideoPlayEnd()V

    :cond_7
    return-void
.end method

.method public setSplashAOLListener(Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->c:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLListener;

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->b:Lio/dcloud/p/k4;

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1, p0}, Lio/dcloud/p/b5;->a(Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;)V

    :cond_9
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->showIn(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showIn(Landroid/view/ViewGroup;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->b:Lio/dcloud/p/k4;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/p/k4;->a(Landroid/view/ViewGroup;)V

    :cond_7
    return-void
.end method

###### Class io.dcloud.sdk.core.v3.sp.DCSplashAOL.AnonymousClass1 (io.dcloud.sdk.core.v3.sp.DCSplashAOL$1)
.class Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/w2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->load(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

.field final synthetic b:Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->b:Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;

    iput-object p2, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig(Lorg/json/JSONObject;)V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getConfig"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lorg/json/JSONObject;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/sdk/core/v3/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onLoaded()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;->onSplashAOLLoad()V

    return-void
.end method
