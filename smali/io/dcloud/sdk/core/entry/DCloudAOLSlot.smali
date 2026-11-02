###### Class io.dcloud.sdk.core.entry.DCloudAOLSlot (io.dcloud.sdk.core.entry.DCloudAOLSlot)
.class public Lio/dcloud/sdk/core/entry/DCloudAOLSlot;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;,
        Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private final e:I

.field private final f:Z

.field private g:I

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private l:I

.field private m:Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;


# direct methods
.method private constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->g:I

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->l:I

    .line 17
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->a:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->b(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->b:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->c(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->c:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->d(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I

    move-result v1

    const/4 v2, 0x3

    if-gtz v1, :cond_23

    goto :goto_2b

    :cond_23
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->d(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2b
    iput v2, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->e:I

    .line 21
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->e(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I

    move-result v1

    iput v1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->j:I

    .line 22
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->f(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I

    move-result v1

    iput v1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->k:I

    .line 23
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->g:I

    .line 24
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->g(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->f:Z

    .line 25
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->h(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->h:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->i(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->m:Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;Lio/dcloud/sdk/core/entry/DCloudAOLSlot$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)V

    return-void
.end method


# virtual methods
.method public getAdpid()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->e:I

    return v0
.end method

.method public getDramaConfig()Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->m:Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;

    return-object v0
.end method

.method public getEI()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_5
    const-string v1, "extra"

    iget-object v2, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "ruu"

    iget-object v2, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_13

    .line 7
    :catch_13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->k:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->g:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->l:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->j:I

    return v0
.end method

.method public isVideoSoundEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->f:Z

    return v0
.end method

.method public setAdpid(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->a:Ljava/lang/String;

    return-void
.end method

.method public setConfig(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public setRID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->i:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->l:I

    return-void
.end method

###### Class io.dcloud.sdk.core.entry.DCloudAOLSlot.AnonymousClass1 (io.dcloud.sdk.core.entry.DCloudAOLSlot$1)
.class synthetic Lio/dcloud/sdk/core/entry/DCloudAOLSlot$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/entry/DCloudAOLSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.sdk.core.entry.DCloudAOLSlot.Builder (io.dcloud.sdk.core.entry.DCloudAOLSlot$Builder)
.class public final Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/entry/DCloudAOLSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:I

.field private i:Ljava/lang/String;

.field private j:Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->d:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->g:Z

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->h:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->d:I

    return p0
.end method

.method static synthetic e(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->f:I

    return p0
.end method

.method static synthetic g(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->g:Z

    return p0
.end method

.method static synthetic h(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->j:Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;

    return-object p0
.end method


# virtual methods
.method public adpid(Ljava/lang/String;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;Lio/dcloud/sdk/core/entry/DCloudAOLSlot$1;)V

    return-object v0
.end method

.method public count(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->d:I

    return-object p0
.end method

.method public extra(Ljava/lang/String;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public height(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->f:I

    return-object p0
.end method

.method public setDramaConfig(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->j:Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;

    return-object p0
.end method

.method public setEI(Ljava/lang/String;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoSoundEnable(Z)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->g:Z

    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public width(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->e:I

    return-object p0
.end method

###### Class io.dcloud.sdk.core.entry.DCloudAOLSlot.DramaConfig (io.dcloud.sdk.core.entry.DCloudAOLSlot$DramaConfig)
.class public Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/entry/DCloudAOLSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DramaConfig"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;->a:I

    .line 5
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;->b:I

    return-void
.end method


# virtual methods
.method public getFreeCount()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;->a:I

    return v0
.end method

.method public getLockCount()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;->b:I

    return v0
.end method

.method public setFreeCount(I)V
    .registers 3

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;->a:I

    const/16 v0, 0x14

    if-le p1, v0, :cond_8

    .line 3
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;->a:I

    :cond_8
    return-void
.end method

.method public setLockCount(I)V
    .registers 3

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;->b:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_8

    .line 3
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$DramaConfig;->b:I

    :cond_8
    return-void
.end method
