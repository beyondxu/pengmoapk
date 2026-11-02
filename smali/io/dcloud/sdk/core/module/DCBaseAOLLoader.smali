###### Class io.dcloud.sdk.core.module.DCBaseAOLLoader (io.dcloud.sdk.core.module.DCBaseAOLLoader)
.class public abstract Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
.super Lio/dcloud/sdk/core/module/a;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;,
        Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;
    }
.end annotation


# instance fields
.field private F:Z

.field private final G:Landroid/os/Handler;

.field private final H:I

.field private I:I

.field private J:Lio/dcloud/p/w$a;


# direct methods
.method public static synthetic $r8$lambda$-11oSvBNvBEUOpIaZTZIQnsfc8Q(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/sdk/core/module/a;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->F:Z

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->H:I

    const/16 p1, 0x1388

    .line 5
    iput p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->I:I

    const/4 p1, -0x1

    .line 11
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/module/a;->d(I)V

    .line 12
    new-instance p1, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;

    invoke-static {}, Lio/dcloud/p/a3;->a()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Landroid/os/Looper;)V

    iput-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->G:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;)Lio/dcloud/p/w$a;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->J:Lio/dcloud/p/w$a;

    return-object p0
.end method

.method private synthetic a(Ljava/util/Map;)V
    .registers 3

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->load(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xfa2

    invoke-virtual {p0, v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void
.end method

.method private w()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 2
    invoke-static {}, Lio/dcloud/p/e;->b()Lio/dcloud/p/e;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/p/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 4
    :cond_1a
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dcloud"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return v1

    .line 6
    :cond_27
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    return v1

    :cond_34
    const/4 v0, 0x0

    return v0

    .line 10
    :cond_36
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sgm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 11
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_4c
    return v1
.end method

.method private x()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlot()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_25

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlot()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlot()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    return v0

    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lio/dcloud/p/v4;)V
    .registers 5

    .line 6
    invoke-virtual {p1}, Lio/dcloud/p/v4;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lio/dcloud/p/v4;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->s:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lio/dcloud/p/v4;->u()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(Z)V

    .line 9
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v0

    if-nez v0, :cond_21

    .line 10
    invoke-virtual {p1}, Lio/dcloud/p/v4;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setBiddingECPM(I)V

    .line 11
    :cond_21
    invoke-virtual {p1}, Lio/dcloud/p/v4;->n()I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->d:I

    .line 12
    invoke-virtual {p1}, Lio/dcloud/p/v4;->p()I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->I:I

    .line 13
    invoke-virtual {p1}, Lio/dcloud/p/v4;->f()I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->e:I

    .line 14
    invoke-virtual {p1}, Lio/dcloud/p/v4;->b()I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->g:I

    .line 15
    invoke-virtual {p1}, Lio/dcloud/p/v4;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setFeedType(I)V

    .line 16
    invoke-virtual {p1}, Lio/dcloud/p/v4;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->e(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lio/dcloud/p/v4;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Z)V

    .line 18
    invoke-virtual {p1}, Lio/dcloud/p/v4;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->f(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lio/dcloud/p/v4;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->c(I)V

    .line 20
    invoke-virtual {p1}, Lio/dcloud/p/v4;->j()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Lorg/json/JSONObject;)V

    .line 21
    invoke-virtual {p1}, Lio/dcloud/p/v4;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(I)V

    .line 22
    invoke-virtual {p1}, Lio/dcloud/p/v4;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(I)V

    .line 23
    invoke-virtual {p1}, Lio/dcloud/p/v4;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setExpressAd(Z)V

    .line 24
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getExtraData()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lio/dcloud/p/v4;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load sub slot cfg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/dcloud/p/v4;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/p/c3;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lio/dcloud/p/w$a;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->J:Lio/dcloud/p/w$a;

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/adapter/IAdAdapter;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method public final a(Ljava/lang/String;Lio/dcloud/sdk/core/adapter/IAdAdapter;Lorg/json/JSONObject;)V
    .registers 4

    .line 29
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/sdk/core/adapter/IAdAdapter;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->c(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .registers 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/a;->d(I)V

    .line 2
    invoke-direct {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->w()Z

    move-result v0

    const-string v1, ""

    const/16 v2, -0x270f

    if-nez v0, :cond_12

    .line 3
    invoke-virtual {p0, v2, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    .line 6
    :cond_12
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 7
    invoke-virtual {p0, v2, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    .line 10
    :cond_20
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->startLoadTime()V

    .line 11
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->runOnMain()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 12
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_44

    .line 21
    :cond_36
    :try_start_36
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->load(Ljava/util/Map;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_44

    :catchall_3a
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xfa2

    invoke-virtual {p0, v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    .line 27
    :goto_44
    iget-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->G:Landroid/os/Handler;

    iget v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->I:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected abstract init(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract load(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final loadFail(ILjava/lang/String;)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->F:Z

    if-eqz v0, :cond_5

    return-void

    .line 3
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/dcloud/sdk/core/module/a;->b(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->F:Z

    .line 5
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->G:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-static {}, Lio/dcloud/p/a3;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final loadSuccess()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->x()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, -0x1389

    .line 2
    const-string v1, "\u56de\u8c03\u63a5\u53e3\u8c03\u7528\u5931\u8d25\uff0c\u5e94\u8be5\u4f7f\u7528loadSuccess(List obj)"

    invoke-virtual {p0, v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadSuccess(Ljava/util/List;)V

    return-void
.end method

.method public final loadSuccess(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->x()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    move-object v2, p1

    .line 8
    iget-boolean p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->F:Z

    if-eqz p1, :cond_d

    return-void

    :cond_d
    if-eqz v2, :cond_5a

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 12
    iget v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->e:I

    iput v1, v0, Lio/dcloud/sdk/core/module/DCBaseAOL;->e:I

    .line 13
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(Z)V

    .line 14
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setBiddingECPM(I)V

    .line 15
    iget v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->d:I

    iput v1, v0, Lio/dcloud/sdk/core/module/DCBaseAOL;->d:I

    .line 16
    iget v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->g:I

    iput v1, v0, Lio/dcloud/sdk/core/module/DCBaseAOL;->g:I

    .line 17
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedType()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setFeedType(I)V

    .line 20
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->d(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->s:Ljava/lang/String;

    iput-object v1, v0, Lio/dcloud/sdk/core/module/DCBaseAOL;->s:Ljava/lang/String;

    goto :goto_13

    .line 24
    :cond_5a
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->v()V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->F:Z

    .line 26
    iget-object v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->G:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    invoke-static {}, Lio/dcloud/p/a3;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected runOnMain()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setPlatform(Lio/dcloud/sdk/poly/api/Platform;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public showIn(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public y()Lio/dcloud/p/n1;
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/p/n1;

    invoke-direct {v0}, Lio/dcloud/p/n1;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->u()V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->c(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    iget v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->e:I

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->b(I)Lio/dcloud/p/n1;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->e(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->d(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->f(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->t()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/dcloud/p/n1;->a(J)Lio/dcloud/p/n1;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->getAdStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->c(I)Lio/dcloud/p/n1;

    .line 5
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 6
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->a(I)Lio/dcloud/p/n1;

    .line 7
    :cond_49
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->s()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 8
    invoke-static {p0}, Lio/dcloud/p/m;->a(Lio/dcloud/sdk/core/module/DCBaseAOL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->a(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    invoke-static {p0}, Lio/dcloud/p/m;->b(Lio/dcloud/sdk/core/module/DCBaseAOL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->b(Ljava/lang/String;)Lio/dcloud/p/n1;

    :cond_5e
    return-object v0
.end method

###### Class io.dcloud.sdk.core.module.DCBaseAOLLoader.a (io.dcloud.sdk.core.module.DCBaseAOLLoader$a)
.class Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;IILjava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    .line 3
    iput p3, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->b:I

    .line 4
    iput p4, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->c:I

    .line 5
    iput-object p5, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->e:Ljava/util/List;

    if-eqz p2, :cond_24

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "sub slot ads:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/p/c3;->d(Ljava/lang/String;)V

    :cond_24
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/p/n1;

    invoke-direct {v0}, Lio/dcloud/p/n1;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->c(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->e(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    iget v2, v2, Lio/dcloud/sdk/core/module/DCBaseAOL;->e:I

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->b(I)Lio/dcloud/p/n1;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->d(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->f(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/a;->t()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/dcloud/p/n1;->a(J)Lio/dcloud/p/n1;

    .line 3
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->s()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 4
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-static {v1}, Lio/dcloud/p/m;->a(Lio/dcloud/sdk/core/module/DCBaseAOL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->a(Ljava/lang/String;)Lio/dcloud/p/n1;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-static {v2}, Lio/dcloud/p/m;->b(Lio/dcloud/sdk/core/module/DCBaseAOL;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/p/n1;->b(Ljava/lang/String;)Lio/dcloud/p/n1;

    .line 5
    :cond_59
    iget v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_80

    .line 6
    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->c(I)Lio/dcloud/p/n1;

    .line 7
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 8
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getBiddingECPM()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->a(I)Lio/dcloud/p/n1;

    .line 9
    :cond_72
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-static {v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;)Lio/dcloud/p/w$a;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    iget-object v3, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->e:Ljava/util/List;

    invoke-interface {v1, v2, v3, v0}, Lio/dcloud/p/w$a;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;Lio/dcloud/p/n1;)V

    return-void

    :cond_80
    if-nez v1, :cond_97

    .line 11
    invoke-virtual {v0, v1}, Lio/dcloud/p/n1;->c(I)Lio/dcloud/p/n1;

    .line 12
    iget v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->c:I

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/p/n1;->a(ILjava/lang/String;)Lio/dcloud/p/n1;

    .line 13
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-static {v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;)Lio/dcloud/p/w$a;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-interface {v1, v2, v0}, Lio/dcloud/p/w$a;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Lio/dcloud/p/n1;)V

    :cond_97
    return-void
.end method

###### Class io.dcloud.sdk.core.module.DCBaseAOLLoader.b (io.dcloud.sdk.core.module.DCBaseAOLLoader$b)
.class Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;
.super Landroid/os/Handler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    const/16 v0, -0x1388

    const-string v1, "timeout"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

###### Class io.dcloud.sdk.core.module.DCBaseAOLLoader$$ExternalSyntheticLambda0 (io.dcloud.sdk.core.module.DCBaseAOLLoader$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/sdk/core/module/DCBaseAOLLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/Map;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    iput-object p2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-static {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->$r8$lambda$-11oSvBNvBEUOpIaZTZIQnsfc8Q(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/Map;)V

    return-void
.end method
