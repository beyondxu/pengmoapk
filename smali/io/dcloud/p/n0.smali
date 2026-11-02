###### Class io.dcloud.p.n0 (io.dcloud.p.n0)
.class public Lio/dcloud/p/n0;
.super Lio/dcloud/sdk/core/module/DCBaseAOL;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/x1;
.implements Lio/dcloud/p/x1$a;


# instance fields
.field private A:I

.field private z:Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/sdk/core/module/DCBaseAOL;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/p/n0;->A:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;->onError()V

    :cond_11
    return-void
.end method

.method public a(Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/n0;->z:Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onClosed(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public biddingFail(III)V
    .registers 4

    .line 1
    iget-object p2, p0, Lio/dcloud/p/n0;->z:Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;

    if-eqz p2, :cond_7

    .line 2
    invoke-virtual {p2, p1, p3}, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->onBidFail(II)V

    :cond_7
    return-void
.end method

.method public biddingSuccess(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/n0;->z:Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2}, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->onBidSuccess(II)V

    :cond_7
    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;->onPause()V

    :cond_11
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/n0;->z:Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->destroy()V

    :cond_7
    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;->onStart()V

    :cond_11
    return-void
.end method

.method public getExpressAdView(Landroid/app/Activity;)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/n0;->z:Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->getNativeAd()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    invoke-super {p0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getExpressAdView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;->onResume()V

    :cond_11
    return-void
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onAdClicked()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onClicked()V

    :cond_d
    return-void
.end method

.method public onAdShow()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onShow()V

    :cond_d
    return-void
.end method

.method public onRenderFail()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onRenderFail()V

    :cond_d
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/dcloud/p/n0;->A:I

    return-void
.end method

.method public onRenderSuccess()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onRenderSuccess()V

    :cond_d
    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lio/dcloud/p/n0;->A:I

    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onShowError()V

    :cond_d
    return-void
.end method

.method public onVideoPlayEnd()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$DrawAOLInteractionListener;->onEnd()V

    :cond_11
    return-void
.end method

.method public render()V
    .registers 5

    const/4 v0, -0x1

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/dcloud/p/n0;->z:Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;

    if-eqz v1, :cond_2c

    .line 2
    iget v2, p0, Lio/dcloud/p/n0;->A:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 5
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onRenderSuccess()V

    return-void

    :cond_18
    if-ne v2, v0, :cond_28

    .line 8
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 9
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onRenderFail()V

    :cond_27
    return-void

    .line 12
    :cond_28
    invoke-virtual {v1, p0}, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a(Lio/dcloud/p/x1;)V

    return-void

    .line 14
    :cond_2c
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 15
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onRenderFail()V

    .line 16
    :cond_39
    iput v0, p0, Lio/dcloud/p/n0;->A:I
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    nop

    .line 19
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 20
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedAdCallback()Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/sdk/core/interfaces/AOLLoader$FeedAOLInteractionListener;->onRenderFail()V

    .line 21
    :cond_4a
    iput v0, p0, Lio/dcloud/p/n0;->A:I

    return-void
.end method

.method public s()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
