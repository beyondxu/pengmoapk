###### Class io.dcloud.api.custom.type.draw.UniAdCustomDrawAd (io.dcloud.api.custom.type.draw.UniAdCustomDrawAd)
.class public abstract Lio/dcloud/api/custom/type/draw/UniAdCustomDrawAd;
.super Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoPlayEnd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    instance-of v1, v0, Lio/dcloud/p/x1$a;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lio/dcloud/p/x1$a;

    invoke-interface {v0}, Lio/dcloud/p/x1$a;->onVideoPlayEnd()V

    :cond_b
    return-void
.end method

.method public onVideoPlayError()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    instance-of v1, v0, Lio/dcloud/p/x1$a;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lio/dcloud/p/x1$a;

    invoke-interface {v0}, Lio/dcloud/p/x1$a;->a()V

    :cond_b
    return-void
.end method

.method public onVideoPlayPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    instance-of v1, v0, Lio/dcloud/p/x1$a;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lio/dcloud/p/x1$a;

    invoke-interface {v0}, Lio/dcloud/p/x1$a;->c()V

    :cond_b
    return-void
.end method

.method public onVideoPlayResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    instance-of v1, v0, Lio/dcloud/p/x1$a;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lio/dcloud/p/x1$a;

    invoke-interface {v0}, Lio/dcloud/p/x1$a;->i()V

    :cond_b
    return-void
.end method

.method public onVideoPlayStart()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/api/custom/type/feed/UniAdCustomNativeAd;->a:Lio/dcloud/p/x1;

    instance-of v1, v0, Lio/dcloud/p/x1$a;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lio/dcloud/p/x1$a;

    invoke-interface {v0}, Lio/dcloud/p/x1$a;->e()V

    :cond_b
    return-void
.end method
