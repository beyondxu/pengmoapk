###### Class io.dcloud.p.k1 (io.dcloud.p.k1)
.class public Lio/dcloud/p/k1;
.super Lio/dcloud/p/y4;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field protected C:Lio/dcloud/p/z1;


# direct methods
.method public static synthetic $r8$lambda$u3-4V7K9WkkmgZiLgO-GAs0rDiI(Lio/dcloud/p/k1;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/dcloud/p/k1;->g(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zSJrweJTx63P9q43um-XFTzr4a4(Lio/dcloud/p/k1;ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/p/k1;->e(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/y4;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method private synthetic e(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/p/k1;->C:Lio/dcloud/p/z1;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/p/z1;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_7
    return-void
.end method

.method private synthetic g(Ljava/util/List;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/k1;->C:Lio/dcloud/p/z1;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/p/z1;->onLoaded(Ljava/util/List;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/p/z1;)V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/dcloud/p/y4;->h()V

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/p/i4;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V

    .line 3
    iput-object p2, p0, Lio/dcloud/p/k1;->C:Lio/dcloud/p/z1;

    .line 4
    invoke-static {}, Lio/dcloud/p/a3;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lio/dcloud/p/b5;->w:Z

    return-void
.end method

.method protected d(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniAd-loadError"

    invoke-static {v1, v0}, Lio/dcloud/p/c3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/p/y4;->g()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3
    invoke-virtual {p0}, Lio/dcloud/p/w;->e()V

    .line 5
    :cond_30
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/p/k1;ILjava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected e(Ljava/util/List;)V
    .registers 4

    .line 3
    invoke-virtual {p0}, Lio/dcloud/p/y4;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {p0}, Lio/dcloud/p/w;->e()V

    .line 6
    :cond_9
    invoke-virtual {p0, p1}, Lio/dcloud/p/k1;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/k1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/p/k1$$ExternalSyntheticLambda1;-><init>(Lio/dcloud/p/k1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected f(Ljava/util/List;)Ljava/util/List;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2a

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2a

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 4
    new-instance v2, Lio/dcloud/p/j1;

    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/dcloud/p/j1;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOL;Landroid/app/Activity;)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2a
    return-object v0
.end method

###### Class io.dcloud.p.k1$$ExternalSyntheticLambda0 (io.dcloud.p.k1$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/p/k1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/k1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/k1;ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/k1;

    iput p2, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;->f$3:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/k1;

    iget v1, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda0;->f$3:Lorg/json/JSONArray;

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/p/k1;->$r8$lambda$zSJrweJTx63P9q43um-XFTzr4a4(Lio/dcloud/p/k1;ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

###### Class io.dcloud.p.k1$$ExternalSyntheticLambda1 (io.dcloud.p.k1$$ExternalSyntheticLambda1)
.class public final synthetic Lio/dcloud/p/k1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/k1;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/k1;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/p/k1;

    iput-object p2, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/p/k1;

    iget-object v1, p0, Lio/dcloud/p/k1$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lio/dcloud/p/k1;->$r8$lambda$u3-4V7K9WkkmgZiLgO-GAs0rDiI(Lio/dcloud/p/k1;Ljava/util/List;)V

    return-void
.end method
