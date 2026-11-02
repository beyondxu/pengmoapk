###### Class io.dcloud.sdk.base.dcloud.c (io.dcloud.sdk.base.dcloud.c)
.class public Lio/dcloud/sdk/base/dcloud/c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

.field private b:Landroid/content/Context;

.field c:Landroid/os/Handler;

.field d:Lorg/json/JSONObject;


# direct methods
.method public static synthetic $r8$lambda$SOOrlyhn5IfVbwOsEGwalPfnsvI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/sdk/base/dcloud/c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    .line 4
    iput-object v0, p0, Lio/dcloud/sdk/base/dcloud/c;->c:Landroid/os/Handler;

    .line 9
    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/c;->d:Lorg/json/JSONObject;

    .line 10
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/c;->b:Landroid/content/Context;

    .line 11
    new-instance p2, Lio/dcloud/sdk/base/dcloud/c$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lio/dcloud/sdk/base/dcloud/c$a;-><init>(Lio/dcloud/sdk/base/dcloud/c;Landroid/os/Looper;)V

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/c;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a(II)I
    .registers 6

    int-to-double v0, p0

    .line 23
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    int-to-double p0, p1

    mul-double v2, v2, p0

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method static synthetic a(Lio/dcloud/sdk/base/dcloud/c;Lorg/json/JSONObject;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/sdk/base/dcloud/c;->a(Lorg/json/JSONObject;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;
    .registers 6

    .line 6
    new-instance v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-direct {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;-><init>()V

    .line 7
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 9
    const-string v2, "provider"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    .line 10
    iput-object p1, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d:Lorg/json/JSONObject;

    .line 11
    const-string v2, "es"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->i:I

    .line 12
    const-string v2, "ec"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->j:I

    .line 13
    const-string p1, "src"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->g:Ljava/lang/String;

    .line 14
    const-string p1, "000"

    iput-object p1, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e:Ljava/lang/Object;

    .line 15
    const-string p1, "appid"

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    :cond_3c
    return-object v0
.end method

.method private a()V
    .registers 4

    .line 16
    const-string v0, "adh"

    const-string v1, "ADSim---click"

    invoke-static {v0, v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    const-string v2, "adid"

    invoke-static {v0, v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 24
    new-instance v0, Lio/dcloud/sdk/base/dcloud/d;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/base/dcloud/d;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0, p1}, Lio/dcloud/sdk/base/dcloud/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 77
    invoke-static/range {p0 .. p5}, Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 4
    invoke-static/range {p0 .. p5}, Lio/dcloud/sdk/base/dcloud/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/p/a2;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/16 v5, 0x1d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p8

    .line 26
    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object p2, v0

    move-object p3, v1

    move-object p5, v3

    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/z0;->a(Landroid/content/Context;)Lio/dcloud/p/z0;

    move-result-object p7

    const/4 p0, 0x0

    .line 29
    invoke-virtual {p2, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, "/"

    invoke-virtual {p0, p8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p8, ""

    :cond_30
    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/Download/ADSIM-INFO.io"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p8

    if-eqz p8, :cond_56

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    :cond_56
    invoke-virtual {p7}, Lio/dcloud/p/z0;->a()Ljava/util/List;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5e
    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lio/dcloud/p/y0;

    .line 39
    invoke-virtual {p8}, Lio/dcloud/p/y0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 40
    invoke-virtual {p7, p8}, Lio/dcloud/p/z0;->b(Lio/dcloud/p/y0;)V

    goto :goto_5e

    .line 43
    :cond_78
    new-instance p8, Lio/dcloud/p/y0;

    invoke-direct {p8}, Lio/dcloud/p/y0;-><init>()V

    .line 44
    invoke-virtual {p8, p2, p4, p0}, Lio/dcloud/p/y0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance p0, Lio/dcloud/sdk/base/dcloud/c$e;

    move-object p1, p6

    move-object p4, v2

    move-object p6, v4

    invoke-direct/range {p0 .. p7}, Lio/dcloud/sdk/base/dcloud/c$e;-><init>(Lio/dcloud/p/a2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/p/z0;)V

    invoke-virtual {p8, p0}, Lio/dcloud/p/y0;->a(Lio/dcloud/p/y0$a;)V

    .line 76
    invoke-virtual {p7, p8}, Lio/dcloud/p/z0;->a(Lio/dcloud/p/y0;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/sdk/base/dcloud/c;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/base/dcloud/c;->c()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/sdk/base/dcloud/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 5
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/base/dcloud/c$c;

    invoke-direct {v1, p0, p2, p1}, Lio/dcloud/sdk/base/dcloud/c$c;-><init>(Lio/dcloud/sdk/base/dcloud/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .registers 6

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x320

    const/16 v1, 0x7d0

    .line 3
    invoke-static {v0, v1}, Lio/dcloud/sdk/base/dcloud/c;->a(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c;->c:Landroid/os/Handler;

    new-instance v2, Lio/dcloud/sdk/base/dcloud/c$d;

    invoke-direct {v2, p0}, Lio/dcloud/sdk/base/dcloud/c$d;-><init>(Lio/dcloud/sdk/base/dcloud/c;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .line 5
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/sdk/base/dcloud/c;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/base/dcloud/c;->a()V

    return-void
.end method

.method private c()V
    .registers 4

    .line 1
    const-string v0, "adh"

    const-string v1, "ADSim---view"

    invoke-static {v0, v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    const-string v2, "adid"

    invoke-static {v0, v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->c(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lio/dcloud/sdk/base/dcloud/c;->b()V

    return-void
.end method


# virtual methods
.method public d()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c;->c:Landroid/os/Handler;

    new-instance v1, Lio/dcloud/sdk/base/dcloud/c$b;

    invoke-direct {v1, p0}, Lio/dcloud/sdk/base/dcloud/c$b;-><init>(Lio/dcloud/sdk/base/dcloud/c;)V

    const/16 v2, 0xfa

    const/16 v3, 0x15e

    .line 13
    invoke-static {v2, v3}, Lio/dcloud/sdk/base/dcloud/c;->a(II)I

    move-result v2

    int-to-long v2, v2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.c.a (io.dcloud.sdk.base.dcloud.c$a)
.class Lio/dcloud/sdk/base/dcloud/c$a;
.super Landroid/os/Handler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/c;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/c;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/c;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$a;->a:Lio/dcloud/sdk/base/dcloud/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_a

    return-void

    .line 4
    :cond_a
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$a;->a:Lio/dcloud/sdk/base/dcloud/c;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/c;->a(Lio/dcloud/sdk/base/dcloud/c;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.c.b (io.dcloud.sdk.base.dcloud.c$b)
.class Lio/dcloud/sdk/base/dcloud/c$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/c;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$b;->a:Lio/dcloud/sdk/base/dcloud/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$b;->a:Lio/dcloud/sdk/base/dcloud/c;

    iget-object v1, v0, Lio/dcloud/sdk/base/dcloud/c;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/sdk/base/dcloud/c;->a(Lio/dcloud/sdk/base/dcloud/c;Lorg/json/JSONObject;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/sdk/base/dcloud/c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$b;->a:Lio/dcloud/sdk/base/dcloud/c;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    if-eqz v0, :cond_30

    .line 4
    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 5
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$b;->a:Lio/dcloud/sdk/base/dcloud/c;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 4
    :cond_25
    const-string v0, ""

    .line 7
    :goto_27
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c$b;->a:Lio/dcloud/sdk/base/dcloud/c;

    iget-object v2, v1, Lio/dcloud/sdk/base/dcloud/c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->g:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/sdk/base/dcloud/c;->a(Lio/dcloud/sdk/base/dcloud/c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.c.RunnableC0075c (io.dcloud.sdk.base.dcloud.c$c)
.class Lio/dcloud/sdk/base/dcloud/c$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/c;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/sdk/base/dcloud/c;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$c;->c:Lio/dcloud/sdk/base/dcloud/c;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/c$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/c$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c$c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c$c;->a:Ljava/lang/String;

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3
    const-string v1, "ua-webview"

    invoke-static {v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_22
    :try_start_22
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c$c;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object v0

    if-eqz v0, :cond_34

    .line 8
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$c;->c:Lio/dcloud/sdk/base/dcloud/c;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/c;->c:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.c.d (io.dcloud.sdk.base.dcloud.c$d)
.class Lio/dcloud/sdk/base/dcloud/c$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/c;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$d;->a:Lio/dcloud/sdk/base/dcloud/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$d;->a:Lio/dcloud/sdk/base/dcloud/c;

    invoke-static {v0}, Lio/dcloud/sdk/base/dcloud/c;->b(Lio/dcloud/sdk/base/dcloud/c;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.c.e (io.dcloud.sdk.base.dcloud.c$e)
.class Lio/dcloud/sdk/base/dcloud/c$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/y0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/p/a2;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/p/z0;


# direct methods
.method constructor <init>(Lio/dcloud/p/a2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/p/z0;)V
    .registers 8

    .line 1
    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/c$e;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/c$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/c$e;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/sdk/base/dcloud/c$e;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/sdk/base/dcloud/c$e;->e:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/sdk/base/dcloud/c$e;->f:Lio/dcloud/p/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/p/y0;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lio/dcloud/p/y0;->a()Landroid/content/Context;

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Lio/dcloud/p/y0;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$e;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/c$e;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/c$e;->d:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/c$e;->e:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lio/dcloud/p/y0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    :cond_21
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$e;->f:Lio/dcloud/p/z0;

    invoke-virtual {v0, p1}, Lio/dcloud/p/z0;->b(Lio/dcloud/p/y0;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.c$$ExternalSyntheticLambda0 (io.dcloud.sdk.base.dcloud.c$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget v4, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/c$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/c;->$r8$lambda$SOOrlyhn5IfVbwOsEGwalPfnsvI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
