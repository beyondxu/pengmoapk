###### Class io.dcloud.p.b5 (io.dcloud.p.b5)
.class public Lio/dcloud/p/b5;
.super Lio/dcloud/p/w;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;


# instance fields
.field protected r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

.field protected s:Lio/dcloud/p/w2;

.field protected t:Lio/dcloud/sdk/core/module/DCBaseAOL;

.field private u:Z

.field private v:Z

.field protected w:Z


# direct methods
.method public static synthetic $r8$lambda$-Hangc4sgs8wx5NHQ7MWSM5QOVU(Lio/dcloud/p/b5;Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/dcloud/p/b5;->b(Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3XiivqZxdCnkGmbyeZxf6l3gwUw(Lio/dcloud/p/b5;)V
    .registers 1

    invoke-direct {p0}, Lio/dcloud/p/b5;->r()V

    return-void
.end method

.method public static synthetic $r8$lambda$40QasxZLwWZ3d91nNWd8yeWQlpw(Lio/dcloud/p/b5;Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/dcloud/p/b5;->a(Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$59gQH6K6YZbK4GWc_1YxNk-BEqU(Lio/dcloud/p/b5;)V
    .registers 1

    invoke-direct {p0}, Lio/dcloud/p/b5;->n()V

    return-void
.end method

.method public static synthetic $r8$lambda$8eS24TscpPUSODMF7WIO-uajgK8(Lio/dcloud/p/b5;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/dcloud/p/b5;->d(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXZ_stJmrr1V3OYc3fI1m9Jq24E(Lio/dcloud/p/w2;)V
    .registers 1

    invoke-static {p0}, Lio/dcloud/p/b5;->a(Lio/dcloud/p/w2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HHyQZRyhK6Wl2VeGXPOZXXMzQJA(Lio/dcloud/p/b5;)V
    .registers 1

    invoke-direct {p0}, Lio/dcloud/p/b5;->o()V

    return-void
.end method

.method public static synthetic $r8$lambda$Hh5nOadwq4lahCDuXZL23p9HI0w(Lio/dcloud/p/b5;)V
    .registers 1

    invoke-direct {p0}, Lio/dcloud/p/b5;->p()V

    return-void
.end method

.method public static synthetic $r8$lambda$XSkMV6RPRpBEexLdnpUyfBH-TUs(Lio/dcloud/p/w2;)V
    .registers 1

    invoke-static {p0}, Lio/dcloud/p/b5;->b(Lio/dcloud/p/w2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a-q5RK-h69QR4zrzbXiaHwz3vDg(Lio/dcloud/p/b5;)V
    .registers 1

    invoke-direct {p0}, Lio/dcloud/p/b5;->q()V

    return-void
.end method

.method public static synthetic $r8$lambda$kLbnKvC9I0zWz2F3exzjnj48Jlo(Lio/dcloud/p/b5;)V
    .registers 1

    invoke-direct {p0}, Lio/dcloud/p/b5;->m()V

    return-void
.end method

.method public static synthetic $r8$lambda$kpvy8dhrRuKE14HhgVaphSG50OI(Lio/dcloud/p/b5;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/dcloud/p/b5;->d(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s7kgQVet-ZY0v6wakwRl4mcyxY8(Lio/dcloud/p/b5;ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/p/b5;->c(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/p/w;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/p/b5;->u:Z

    .line 3
    iput-boolean p1, p0, Lio/dcloud/p/b5;->v:Z

    .line 4
    iput-boolean p1, p0, Lio/dcloud/p/b5;->w:Z

    .line 8
    iput p2, p0, Lio/dcloud/p/i4;->d:I

    return-void
.end method

.method private static synthetic a(Lio/dcloud/p/w2;)V
    .registers 4

    if-eqz p0, :cond_c

    const/16 v0, -0x1399

    .line 33
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/dcloud/p/w2;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_c
    return-void
.end method

.method private synthetic a(Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/dcloud/p/b5;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";code:-1;message:\u6682\u65e0\u7f13\u5b58\u4efb\u52a1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x13ec

    invoke-interface {p1, v1, v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;->onError(ILjava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private static synthetic b(Lio/dcloud/p/w2;)V
    .registers 4

    if-eqz p0, :cond_c

    const/16 v0, -0x139d

    .line 1
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/dcloud/p/w2;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_c
    return-void
.end method

.method private synthetic b(Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/dcloud/p/b5;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";code:-1;message:\u6682\u65e0\u7f13\u5b58\u4efb\u52a1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x13ec

    invoke-interface {p1, v1, v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;->onError(ILjava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private synthetic c(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 3
    iget-object v0, p0, Lio/dcloud/p/b5;->s:Lio/dcloud/p/w2;

    if-eqz v0, :cond_7

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/p/w2;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_7
    return-void
.end method

.method private synthetic d(ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private synthetic d(Ljava/util/List;)V
    .registers 5

    if-eqz p1, :cond_1c

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    iput-object p1, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 5
    invoke-virtual {p1, p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setVideoAdCallback(Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/p/b5;->s:Lio/dcloud/p/w2;

    if-eqz p1, :cond_2a

    .line 7
    invoke-interface {p1}, Lio/dcloud/p/w2;->onLoaded()V

    return-void

    .line 9
    :cond_1c
    iget-object p1, p0, Lio/dcloud/p/b5;->s:Lio/dcloud/p/w2;

    if-eqz p1, :cond_2a

    const/16 v0, -0x138d

    .line 10
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lio/dcloud/p/w2;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_2a
    return-void
.end method

.method private synthetic m()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;->onClick()V

    :cond_7
    return-void
.end method

.method private synthetic n()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;->onClose()V

    :cond_7
    return-void
.end method

.method private synthetic o()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;->onShow()V

    :cond_7
    return-void
.end method

.method private synthetic p()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;->onSkip()V

    :cond_7
    return-void
.end method

.method private synthetic q()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;->onVideoPlayEnd()V

    :cond_7
    return-void
.end method

.method private synthetic r()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    if-eqz v0, :cond_d

    const/16 v1, -0x138e

    .line 2
    invoke-static {v1}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 2
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

    .line 3
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;-><init>(Lio/dcloud/p/b5;ILjava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4

    .line 4
    iget-boolean v0, p0, Lio/dcloud/p/b5;->u:Z

    if-eqz v0, :cond_11

    .line 5
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/p/b5$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lio/dcloud/p/b5$$ExternalSyntheticLambda6;-><init>(Lio/dcloud/p/b5;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :cond_11
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    instance-of v1, v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    if-eqz v1, :cond_1c

    .line 12
    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->show(Landroid/app/Activity;)V

    :cond_1c
    return-void
.end method

.method public a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/p/w2;)V
    .registers 4

    .line 14
    iget-boolean v0, p0, Lio/dcloud/p/b5;->v:Z

    if-eqz v0, :cond_11

    .line 15
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/p/b5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lio/dcloud/p/b5$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/p/w2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 21
    :cond_11
    iget-boolean v0, p0, Lio/dcloud/p/b5;->w:Z

    if-eqz v0, :cond_22

    .line 22
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/p/b5$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lio/dcloud/p/b5$$ExternalSyntheticLambda4;-><init>(Lio/dcloud/p/w2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_22
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lio/dcloud/p/b5;->u:Z

    .line 29
    invoke-virtual {p0, p1}, Lio/dcloud/p/i4;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V

    .line 30
    iput-object p2, p0, Lio/dcloud/p/b5;->s:Lio/dcloud/p/w2;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lio/dcloud/p/b5;->w:Z

    .line 32
    invoke-static {}, Lio/dcloud/p/a3;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_8

    .line 36
    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;)V

    return-void

    .line 38
    :cond_8
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lio/dcloud/p/b5$$ExternalSyntheticLambda7;-><init>(Lio/dcloud/p/b5;Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    return-void
.end method

.method protected a(Z)V
    .registers 2

    .line 34
    iput-boolean p1, p0, Lio/dcloud/p/b5;->w:Z

    return-void
.end method

.method public b(Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;)V

    return-void

    .line 6
    :cond_8
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lio/dcloud/p/b5$$ExternalSyntheticLambda3;-><init>(Lio/dcloud/p/b5;Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected c(Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lio/dcloud/p/b5$$ExternalSyntheticLambda5;-><init>(Lio/dcloud/p/b5;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->destroy()V

    :cond_7
    return-void
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_13

    invoke-static {}, Lio/dcloud/p/e;->b()Lio/dcloud/p/e;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, ""

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/b5;->w:Z

    return v0
.end method

.method public l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/p/y3;->a(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;)V

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lio/dcloud/p/b5$$ExternalSyntheticLambda10;-><init>(Lio/dcloud/p/b5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lio/dcloud/p/i4;->d:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lio/dcloud/p/i4;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :cond_3a
    const-string v3, ""

    :goto_3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/p/g4;->a(Landroid/app/Activity;ZLjava/lang/String;)V

    return-void
.end method

.method public onClose()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/p/b5;->v:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lio/dcloud/p/b5$$ExternalSyntheticLambda8;-><init>(Lio/dcloud/p/b5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPaidGet(JLjava/lang/String;I)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/dcloud/p/y3;->a(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;JLjava/lang/String;I)V

    return-void
.end method

.method public onShow()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/p/b5;->u:Z

    .line 2
    iput-boolean v0, p0, Lio/dcloud/p/b5;->v:Z

    .line 3
    invoke-virtual {p0}, Lio/dcloud/p/w;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/p/y3;->b(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;)V

    .line 4
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/dcloud/p/b5$$ExternalSyntheticLambda2;-><init>(Lio/dcloud/p/b5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/p/b5;->v:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/p/b5$$ExternalSyntheticLambda11;-><init>(Lio/dcloud/p/b5;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSkip()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/p/b5;->v:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lio/dcloud/p/b5$$ExternalSyntheticLambda9;-><init>(Lio/dcloud/p/b5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoPlayEnd()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/p/b5;->v:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/b5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/dcloud/p/b5$$ExternalSyntheticLambda1;-><init>(Lio/dcloud/p/b5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda0 (io.dcloud.p.b5$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/w2;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/w2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/w2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/w2;

    invoke-static {v0}, Lio/dcloud/p/b5;->$r8$lambda$XSkMV6RPRpBEexLdnpUyfBH-TUs(Lio/dcloud/p/w2;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda1 (io.dcloud.p.b5$$ExternalSyntheticLambda1)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/p/b5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/p/b5;

    invoke-static {v0}, Lio/dcloud/p/b5;->$r8$lambda$a-q5RK-h69QR4zrzbXiaHwz3vDg(Lio/dcloud/p/b5;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda10 (io.dcloud.p.b5$$ExternalSyntheticLambda10)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda10;->f$0:Lio/dcloud/p/b5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda10;->f$0:Lio/dcloud/p/b5;

    invoke-static {v0}, Lio/dcloud/p/b5;->$r8$lambda$kLbnKvC9I0zWz2F3exzjnj48Jlo(Lio/dcloud/p/b5;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda11 (io.dcloud.p.b5$$ExternalSyntheticLambda11)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda11;->f$0:Lio/dcloud/p/b5;

    iput p2, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda11;->f$0:Lio/dcloud/p/b5;

    iget v1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda11;->f$1:I

    iget-object v2, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/dcloud/p/b5;->$r8$lambda$8eS24TscpPUSODMF7WIO-uajgK8(Lio/dcloud/p/b5;ILjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda12 (io.dcloud.p.b5$$ExternalSyntheticLambda12)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;ILjava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;->f$0:Lio/dcloud/p/b5;

    iput p2, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;->f$3:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;->f$0:Lio/dcloud/p/b5;

    iget v1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;->f$1:I

    iget-object v2, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda12;->f$3:Lorg/json/JSONArray;

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/p/b5;->$r8$lambda$s7kgQVet-ZY0v6wakwRl4mcyxY8(Lio/dcloud/p/b5;ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda2 (io.dcloud.p.b5$$ExternalSyntheticLambda2)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda2;->f$0:Lio/dcloud/p/b5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda2;->f$0:Lio/dcloud/p/b5;

    invoke-static {v0}, Lio/dcloud/p/b5;->$r8$lambda$HHyQZRyhK6Wl2VeGXPOZXXMzQJA(Lio/dcloud/p/b5;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda3 (io.dcloud.p.b5$$ExternalSyntheticLambda3)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;

.field public final synthetic f$1:Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda3;->f$0:Lio/dcloud/p/b5;

    iput-object p2, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda3;->f$1:Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda3;->f$0:Lio/dcloud/p/b5;

    iget-object v1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda3;->f$1:Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;

    invoke-static {v0, v1}, Lio/dcloud/p/b5;->$r8$lambda$40QasxZLwWZ3d91nNWd8yeWQlpw(Lio/dcloud/p/b5;Lio/dcloud/sdk/core/interfaces/AOLLoader$RequestConvertResultListener;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda4 (io.dcloud.p.b5$$ExternalSyntheticLambda4)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/w2;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/w2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda4;->f$0:Lio/dcloud/p/w2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda4;->f$0:Lio/dcloud/p/w2;

    invoke-static {v0}, Lio/dcloud/p/b5;->$r8$lambda$DXZ_stJmrr1V3OYc3fI1m9Jq24E(Lio/dcloud/p/w2;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda5 (io.dcloud.p.b5$$ExternalSyntheticLambda5)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda5;->f$0:Lio/dcloud/p/b5;

    iput-object p2, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda5;->f$0:Lio/dcloud/p/b5;

    iget-object v1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lio/dcloud/p/b5;->$r8$lambda$kpvy8dhrRuKE14HhgVaphSG50OI(Lio/dcloud/p/b5;Ljava/util/List;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda6 (io.dcloud.p.b5$$ExternalSyntheticLambda6)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda6;->f$0:Lio/dcloud/p/b5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda6;->f$0:Lio/dcloud/p/b5;

    invoke-static {v0}, Lio/dcloud/p/b5;->$r8$lambda$3XiivqZxdCnkGmbyeZxf6l3gwUw(Lio/dcloud/p/b5;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda7 (io.dcloud.p.b5$$ExternalSyntheticLambda7)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;

.field public final synthetic f$1:Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda7;->f$0:Lio/dcloud/p/b5;

    iput-object p2, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda7;->f$1:Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda7;->f$0:Lio/dcloud/p/b5;

    iget-object v1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda7;->f$1:Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;

    invoke-static {v0, v1}, Lio/dcloud/p/b5;->$r8$lambda$-Hangc4sgs8wx5NHQ7MWSM5QOVU(Lio/dcloud/p/b5;Lio/dcloud/sdk/core/interfaces/AOLLoader$GetConvertResultListener;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda8 (io.dcloud.p.b5$$ExternalSyntheticLambda8)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda8;->f$0:Lio/dcloud/p/b5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda8;->f$0:Lio/dcloud/p/b5;

    invoke-static {v0}, Lio/dcloud/p/b5;->$r8$lambda$59gQH6K6YZbK4GWc_1YxNk-BEqU(Lio/dcloud/p/b5;)V

    return-void
.end method

###### Class io.dcloud.p.b5$$ExternalSyntheticLambda9 (io.dcloud.p.b5$$ExternalSyntheticLambda9)
.class public final synthetic Lio/dcloud/p/b5$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/b5;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/b5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda9;->f$0:Lio/dcloud/p/b5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/dcloud/p/b5$$ExternalSyntheticLambda9;->f$0:Lio/dcloud/p/b5;

    invoke-static {v0}, Lio/dcloud/p/b5;->$r8$lambda$Hh5nOadwq4lahCDuXZL23p9HI0w(Lio/dcloud/p/b5;)V

    return-void
.end method
