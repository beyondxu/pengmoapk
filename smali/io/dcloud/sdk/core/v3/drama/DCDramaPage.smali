###### Class io.dcloud.sdk.core.v3.drama.DCDramaPage (io.dcloud.sdk.core.v3.drama.DCDramaPage)
.class public Lio/dcloud/sdk/core/v3/drama/DCDramaPage;
.super Lio/dcloud/sdk/core/v3/base/DCBaseAOL;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$RewVAOLInteractionListener;


# instance fields
.field private final b:Lio/dcloud/p/a1;

.field private c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

.field private d:Lio/dcloud/sdk/core/v3/drama/DCDramaPageListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/v3/base/DCBaseAOL;-><init>(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lio/dcloud/p/a1;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lio/dcloud/p/a1;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->b:Lio/dcloud/p/a1;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->b:Lio/dcloud/p/a1;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/p/b5;->destroy()V

    :cond_7
    return-void
.end method

.method public getDramaPage()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->b:Lio/dcloud/p/a1;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lio/dcloud/p/a1;->s()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->b:Lio/dcloud/p/a1;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    invoke-virtual {v0}, Lio/dcloud/p/b5;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->b:Lio/dcloud/p/a1;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/dcloud/p/b5;->l()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;)V
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
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->b:Lio/dcloud/p/a1;

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
    new-instance v1, Lio/dcloud/sdk/core/v3/drama/DCDramaPage$1;

    invoke-direct {v1, p0, p2}, Lio/dcloud/sdk/core/v3/drama/DCDramaPage$1;-><init>(Lio/dcloud/sdk/core/v3/drama/DCDramaPage;Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/p/a1;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/p/w2;)V

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
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/rew/DCRewAOLListener;->onClick()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->d:Lio/dcloud/sdk/core/v3/drama/DCDramaPageListener;

    if-eqz v0, :cond_e

    .line 5
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/drama/DCDramaPageListener;->onDramaClicked()V

    :cond_e
    return-void
.end method

.method public onClose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/rew/DCRewAOLListener;->onClose()V

    :cond_7
    return-void
.end method

.method public onPaidGet(JLjava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public onReward(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/v3/rew/DCRewAOLListener;->onReward(Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public onShow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/rew/DCRewAOLListener;->onShow()V

    :cond_7
    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/sdk/core/v3/rew/DCRewAOLListener;->onShowError(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onSkip()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/rew/DCRewAOLListener;->onSkip()V

    :cond_7
    return-void
.end method

.method public onVideoPlayEnd()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/rew/DCRewAOLListener;->onVideoPlayEnd()V

    :cond_7
    return-void
.end method

.method public setDramaPageAdListener(Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->c:Lio/dcloud/sdk/core/v3/drama/DCDramaPageAdListener;

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->b:Lio/dcloud/p/a1;

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1, p0}, Lio/dcloud/p/b5;->a(Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;)V

    :cond_9
    return-void
.end method

.method public setDramaPageListener(Lio/dcloud/sdk/core/v3/drama/DCDramaPageListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->d:Lio/dcloud/sdk/core/v3/drama/DCDramaPageListener;

    return-void
.end method

.method public setLockCount(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->b:Lio/dcloud/p/a1;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/p/a1;->a(I)V

    :cond_7
    return-void
.end method

###### Class io.dcloud.sdk.core.v3.drama.DCDramaPage.AnonymousClass1 (io.dcloud.sdk.core.v3.drama.DCDramaPage$1)
.class Lio/dcloud/sdk/core/v3/drama/DCDramaPage$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/w2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/core/v3/drama/DCDramaPage;->load(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;

.field final synthetic b:Lio/dcloud/sdk/core/v3/drama/DCDramaPage;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/core/v3/drama/DCDramaPage;Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage$1;->b:Lio/dcloud/sdk/core/v3/drama/DCDramaPage;

    iput-object p2, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage$1;->a:Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage$1;->a:Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;

    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/sdk/core/v3/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onLoaded()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/drama/DCDramaPage$1;->a:Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/drama/DCDramaPageLoadListener;->onDramaPageLoad()V

    return-void
.end method
