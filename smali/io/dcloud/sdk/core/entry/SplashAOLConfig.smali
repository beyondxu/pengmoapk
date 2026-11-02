###### Class io.dcloud.sdk.core.entry.SplashAOLConfig (io.dcloud.sdk.core.entry.SplashAOLConfig)
.class public Lio/dcloud/sdk/core/entry/SplashAOLConfig;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>(Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;)I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->a:I

    .line 4
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->b(Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;)I

    move-result p1

    iput p1, p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;Lio/dcloud/sdk/core/entry/SplashAOLConfig$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;-><init>(Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->b:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->a:I

    return v0
.end method

###### Class io.dcloud.sdk.core.entry.SplashAOLConfig.AnonymousClass1 (io.dcloud.sdk.core.entry.SplashAOLConfig$1)
.class synthetic Lio/dcloud/sdk/core/entry/SplashAOLConfig$1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/entry/SplashAOLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.sdk.core.entry.SplashAOLConfig.Builder (io.dcloud.sdk.core.entry.SplashAOLConfig$Builder)
.class public final Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/entry/SplashAOLConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->a:I

    return p0
.end method

.method static synthetic b(Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->b:I

    return p0
.end method


# virtual methods
.method public build()Lio/dcloud/sdk/core/entry/SplashAOLConfig;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;-><init>(Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;Lio/dcloud/sdk/core/entry/SplashAOLConfig$1;)V

    return-object v0
.end method

.method public height(I)Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->b:I

    return-object p0
.end method

.method public width(I)Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->a:I

    return-object p0
.end method
