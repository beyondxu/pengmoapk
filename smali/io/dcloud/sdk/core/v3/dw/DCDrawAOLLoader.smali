###### Class io.dcloud.sdk.core.v3.dw.DCDrawAOLLoader (io.dcloud.sdk.core.v3.dw.DCDrawAOLLoader)
.class public Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader;
.super Lio/dcloud/sdk/core/v3/base/DCBaseAOL;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field protected b:Lio/dcloud/p/c1;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/v3/base/DCBaseAOL;-><init>(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lio/dcloud/p/c1;

    invoke-direct {v0, p1}, Lio/dcloud/p/c1;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader;->b:Lio/dcloud/p/c1;

    return-void
.end method


# virtual methods
.method public load(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/v3/base/DCBaseAOL;->getContext()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    if-nez p1, :cond_9

    goto :goto_14

    .line 7
    :cond_9
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader;->b:Lio/dcloud/p/c1;

    new-instance v1, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader$1;

    invoke-direct {v1, p0, p2}, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader$1;-><init>(Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader;Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/p/k1;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/p/z1;)V

    return-void

    :cond_14
    :goto_14
    if-eqz p2, :cond_20

    const/16 p1, -0x1396

    .line 8
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lio/dcloud/sdk/core/v3/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_20
    return-void
.end method

###### Class io.dcloud.sdk.core.v3.dw.DCDrawAOLLoader.AnonymousClass1 (io.dcloud.sdk.core.v3.dw.DCDrawAOLLoader$1)
.class Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/z1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader;->load(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;

.field final synthetic b:Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader;Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader$1;->b:Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader;

    iput-object p2, p0, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader$1;->a:Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader$1;->a:Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/sdk/core/v3/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_7
    return-void
.end method

.method public onLoaded(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/p/j1;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/p/j1;

    .line 3
    new-instance v2, Lio/dcloud/sdk/core/v3/dw/DCDrawAOL;

    invoke-direct {v2, v1}, Lio/dcloud/sdk/core/v3/dw/DCDrawAOL;-><init>(Lio/dcloud/p/j1;)V

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 6
    :cond_1e
    iget-object p1, p0, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoader$1;->a:Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;

    if-eqz p1, :cond_25

    .line 7
    invoke-interface {p1, v0}, Lio/dcloud/sdk/core/v3/dw/DCDrawAOLLoadListener;->onDrawAOLLoad(Ljava/util/List;)V

    :cond_25
    return-void
.end method
