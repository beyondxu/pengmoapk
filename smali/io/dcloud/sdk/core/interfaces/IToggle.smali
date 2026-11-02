###### Class io.dcloud.sdk.core.interfaces.IToggle (io.dcloud.sdk.core.interfaces.IToggle)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/IToggle;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/interfaces/IToggle$CADLoadListener;
    }
.end annotation


# virtual methods
.method public abstract getSuccessAds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLoading()Z
.end method

.method public abstract setCADLoadListener(Lio/dcloud/sdk/core/interfaces/IToggle$CADLoadListener;)V
.end method

###### Class io.dcloud.sdk.core.interfaces.IToggle.CADLoadListener (io.dcloud.sdk.core.interfaces.IToggle$CADLoadListener)
.class public interface abstract Lio/dcloud/sdk/core/interfaces/IToggle$CADLoadListener;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/IToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CADLoadListener"
.end annotation


# virtual methods
.method public abstract onLoadFail(ILjava/lang/String;)V
.end method

.method public abstract onLoadSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;)V"
        }
    .end annotation
.end method
