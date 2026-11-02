###### Class io.dcloud.api.custom.type.feed.UniAdCustomNativeAd (io.dcloud.api.custom.type.feed.UniAdCustomNativeAd)
.class public abstract Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field protected a:Lio/dcloud/p/x1;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->b:I

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/p/x1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    .line 2
    invoke-virtual {p0}, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->render()V

    return-void
.end method

.method public abstract destroy()V
.end method

.method public final getBidPrice()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->b:I

    return v0
.end method

.method public abstract getNativeAd()Landroid/view/View;
.end method

.method public final onAdClicked()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/p/x1;->onAdClicked()V

    :cond_7
    return-void
.end method

.method public final onAdClosed(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/p/x1;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/p/x1;->onAdShow()V

    :cond_7
    return-void
.end method

.method public onBidFail(II)V
    .registers 3

    return-void
.end method

.method public onBidSuccess(II)V
    .registers 3

    return-void
.end method

.method public onRenderFail(ILjava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    if-eqz p1, :cond_7

    .line 2
    invoke-interface {p1}, Lio/dcloud/p/x1;->onRenderFail()V

    :cond_7
    return-void
.end method

.method public onRenderSuccess()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/p/x1;->onRenderSuccess()V

    :cond_7
    return-void
.end method

.method public final onShowError(ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/p/x1;->onShowError(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public abstract render()V
.end method

.method public final setBidPrice(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->b:I

    return-void
.end method
