###### Class io.dcloud.p.a (io.dcloud.p.a)
.class public abstract Lio/dcloud/p/a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public static a(Landroid/view/View;)Z
    .registers 2

    if-eqz p0, :cond_16

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
