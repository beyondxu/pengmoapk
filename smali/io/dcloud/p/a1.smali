###### Class io.dcloud.p.a1 (io.dcloud.p.a1)
.class public Lio/dcloud/p/a1;
.super Lio/dcloud/p/y4;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$RewVAOLInteractionListener;


# direct methods
.method public static synthetic $r8$lambda$gxXfD6eFz1bUqllTljbUpwW4nwg(Lio/dcloud/p/a1;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/dcloud/p/a1;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/p/y4;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method private synthetic b(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->r:Lio/dcloud/sdk/core/interfaces/AOLLoader$VAOLInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$RewVAOLInteractionListener;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/interfaces/AOLLoader$RewVAOLInteractionListener;

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/interfaces/AOLLoader$RewVAOLInteractionListener;->onReward(Lorg/json/JSONObject;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 8

    .line 9
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_23

    .line 11
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLockCount"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    return-void
.end method

.method public a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/p/w2;)V
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "com.bytedance.sdk.djx.DJXSdk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_9

    .line 7
    invoke-super {p0, p1, p2}, Lio/dcloud/p/y4;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/p/w2;)V

    return-void

    :catch_9
    nop

    if-eqz p2, :cond_14

    .line 8
    const-string p1, "\u5f53\u524d\u73af\u5883\u6ca1\u6709\u7a7f\u5c71\u7532\u5185\u5bb9\u8054\u76dfSDK"

    const/4 v0, 0x0

    const/16 v1, -0x13bb

    invoke-interface {p2, v1, p1, v0}, Lio/dcloud/p/w2;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_14
    return-void
.end method

.method public onReward(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/a1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/dcloud/p/a1$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/p/a1;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public s()Landroidx/fragment/app/Fragment;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDramaPage"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lio/dcloud/p/b5;->t:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    :cond_18
    return-object v1
.end method

###### Class io.dcloud.p.a1$$ExternalSyntheticLambda0 (io.dcloud.p.a1$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/p/a1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/a1;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/a1;Lorg/json/JSONObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/a1$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/a1;

    iput-object p2, p0, Lio/dcloud/p/a1$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/dcloud/p/a1$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/a1;

    iget-object v1, p0, Lio/dcloud/p/a1$$ExternalSyntheticLambda0;->f$1:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/p/a1;->$r8$lambda$gxXfD6eFz1bUqllTljbUpwW4nwg(Lio/dcloud/p/a1;Lorg/json/JSONObject;)V

    return-void
.end method
