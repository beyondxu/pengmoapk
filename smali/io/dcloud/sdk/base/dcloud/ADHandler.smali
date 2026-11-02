###### Class io.dcloud.sdk.base.dcloud.ADHandler (io.dcloud.sdk.base.dcloud.ADHandler)
.class public abstract Lio/dcloud/sdk/base/dcloud/ADHandler;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/base/dcloud/ADHandler$e;,
        Lio/dcloud/sdk/base/dcloud/ADHandler$h;,
        Lio/dcloud/sdk/base/dcloud/ADHandler$f;,
        Lio/dcloud/sdk/base/dcloud/ADHandler$g;,
        Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;
    }
.end annotation


# static fields
.field private static a:Ljava/util/LinkedList;


# direct methods
.method public static synthetic $r8$lambda$XIlKNpMimQxDp9MUeGwNEbY-4Dk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$e;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;
    .registers 5

    .line 88
    iput-object p1, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    .line 89
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    sput-object p1, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    .line 90
    new-instance p1, Lio/dcloud/sdk/base/dcloud/ADHandler$c;

    invoke-direct {p1, p2, p0}, Lio/dcloud/sdk/base/dcloud/ADHandler$c;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;)V

    invoke-static {p0, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$f;)V

    .line 102
    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a()Z

    move-result p1

    if-nez p1, :cond_5d

    sget-object p1, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-eqz p1, :cond_5d

    const/4 p1, 0x0

    .line 103
    :goto_20
    sget-object v0, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5d

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-nez p1, :cond_5a

    .line 107
    sget-object v0, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {p0, v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    :cond_5a
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_5d
    return-object p2
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/sdcard/Android/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/ad/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ad/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 12
    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_5c

    goto :goto_2f

    :sswitch_f
    const-string v0, "ua-webview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_2f

    :cond_18
    const/4 v1, 0x2

    goto :goto_2f

    :sswitch_1a
    const-string v0, "appid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_2f

    :cond_23
    const/4 v1, 0x1

    goto :goto_2f

    :sswitch_25
    const-string v0, "adid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    packed-switch v1, :pswitch_data_6a

    const/4 p0, 0x0

    return-object p0

    .line 7
    :pswitch_34
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/p/r0;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/n4;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_41
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/p/r0;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_4e
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/p/r0;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAdId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_5c
    .sparse-switch
        0x2d9c7e -> :sswitch_25
        0x58b82fc -> :sswitch_1a
        0x5f0ee1b8 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_41
        :pswitch_34
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .line 23
    :try_start_0
    const-string v0, "${User-Agent}"

    const-string v1, "u-a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 24
    const-string v0, "${click_id}"

    const-string v1, "click_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 25
    const-string v0, "${down_x}"

    const-string v1, "down_x"

    const/16 v2, -0x3e7

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 26
    const-string v0, "${down_y}"

    const-string v1, "down_y"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 27
    const-string v0, "${up_x}"

    const-string v1, "up_x"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 28
    const-string v0, "${up_y}"

    const-string v1, "up_y"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 29
    const-string v0, "${relative_down_x}"

    const-string v1, "relative_down_x"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 30
    const-string v0, "${relative_down_y}"

    const-string v1, "relative_down_y"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 31
    const-string v0, "${relative_up_x}"

    const-string v1, "relative_up_x"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 32
    const-string v0, "${relative_up_y}"

    const-string v1, "relative_up_y"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_a0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a0} :catch_a1

    return-object p0

    :catch_a1
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method static synthetic a()Ljava/util/LinkedList;
    .registers 1

    .line 3
    sget-object v0, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 6

    .line 2
    invoke-static/range {p0 .. p5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 5

    .line 36
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/a;->d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_e
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 39
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/b;->d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_1c
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 41
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/e;->d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_2a
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$f;)V
    .registers 12

    .line 52
    invoke-static {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_12

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_6c

    .line 63
    :cond_19
    invoke-static {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a([Ljava/io/File;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    :goto_1e
    array-length v2, p0

    if-ge v1, v2, :cond_6c

    .line 67
    aget-object v2, p0, v1

    .line 68
    invoke-interface {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$f;->find()Z

    move-result v3

    if-nez v3, :cond_66

    .line 69
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 70
    :goto_2e
    array-length v4, v2

    if-ge v3, v4, :cond_69

    .line 71
    aget-object v4, v2, v3

    .line 72
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_60

    .line 74
    invoke-interface {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$f;->find()Z

    move-result v5

    if-nez v5, :cond_63

    .line 75
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    .line 76
    :goto_4e
    array-length v6, v4

    if-ge v5, v6, :cond_63

    .line 77
    aget-object v6, v4, v5

    .line 78
    invoke-interface {p1, v6}, Lio/dcloud/sdk/base/dcloud/ADHandler$f;->operate(Ljava/lang/Object;)V

    .line 79
    invoke-interface {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$f;->find()Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_63

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 83
    :cond_60
    invoke-static {v4}, Lio/dcloud/p/v0;->a(Ljava/lang/Object;)Z

    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 87
    :cond_66
    invoke-static {v2}, Lio/dcloud/p/v0;->a(Ljava/lang/Object;)Z

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_6c
    :goto_6c
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V
    .registers 3

    .line 4
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$e;)V
    .registers 6

    .line 35
    iget-object p5, p5, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->k:Ljava/lang/String;

    invoke-static/range {p0 .. p5}, Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;JLio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    .registers 5

    .line 125
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Lorg/json/JSONObject;JLio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 140
    :catch_4
    invoke-interface {p4}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    .registers 8

    if-eqz p1, :cond_1a

    .line 113
    const-string v0, "es"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 115
    new-instance p2, Lio/dcloud/sdk/base/dcloud/c;

    invoke-direct {p2, p0, p1}, Lio/dcloud/sdk/base/dcloud/c;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/c;->d()V

    return-void

    .line 119
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tid.txt"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lio/dcloud/p/v0;->a([BILjava/lang/String;)V

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".gif"

    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_49

    const-string p2, "img.gif"

    goto :goto_4b

    :cond_49
    const-string p2, "img.png"

    :goto_4b
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string p2, "srcPath"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "data.json"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, v0, p4}, Lio/dcloud/p/v0;->a([BILjava/lang/String;)V

    .line 124
    new-instance p2, Lio/dcloud/sdk/base/dcloud/ADHandler$d;

    invoke-direct {p2, p1, p3, p0, p5}, Lio/dcloud/sdk/base/dcloud/ADHandler$d;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V

    invoke-static {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Lio/dcloud/sdk/base/dcloud/ADHandler$h;)V

    return-void
.end method

.method private static a(Lio/dcloud/sdk/base/dcloud/ADHandler$h;)V
    .registers 3

    if-eqz p0, :cond_20

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    .line 15
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/base/dcloud/ADHandler$a;

    invoke-direct {v1, p0}, Lio/dcloud/sdk/base/dcloud/ADHandler$a;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$h;)V

    invoke-virtual {v0, v1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void

    .line 22
    :cond_1d
    invoke-interface {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler$h;->execute()V

    :cond_20
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private static a([Ljava/io/File;)V
    .registers 10

    if-nez p0, :cond_3

    goto :goto_38

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    :goto_5
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_38

    const/4 v2, 0x0

    .line 45
    :goto_b
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_35

    .line 46
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-int/lit8 v5, v2, 0x1

    .line 47
    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_33

    .line 49
    aget-object v3, p0, v2

    .line 50
    aget-object v4, p0, v5

    aput-object v4, p0, v2

    .line 51
    aput-object v3, p0, v5

    :cond_33
    move v2, v5

    goto :goto_b

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_38
    :goto_38
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;
    .registers 3

    .line 73
    new-instance v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-direct {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;-><init>()V

    .line 74
    invoke-static {p0, p1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    move-result-object p0

    return-object p0
.end method

.method private static b(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;

    move v6, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v3, p5

    invoke-direct/range {v1 .. v7}, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    invoke-virtual {v0, v1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 15

    .line 2
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "tid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    const-string v0, "dplk"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/dcloud/p/c;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 6
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_f9

    .line 11
    :cond_28
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/base/dcloud/ADHandler$b;

    invoke-direct {v1, p1, p0, v5, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$b;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    .line 24
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 25
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/a;->e(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_42
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 27
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/b;->e(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_50
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 29
    const-string v0, "dptracker"

    invoke-static {p0, p1, p2, v0}, Lio/dcloud/sdk/base/dcloud/e;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_60
    const-string v0, "action"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v2, "url"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 37
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 38
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_7c
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/p/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_84
    const-string v3, "download"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 44
    const-string v0, "expires"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 45
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "yy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    :try_start_9d
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_a8
    .catch Ljava/text/ParseException; {:try_start_9d .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :cond_ad
    :goto_ad
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 55
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "ua"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c0

    .line 54
    :cond_be
    const-string v0, ""

    :goto_c0
    move-object v10, v0

    .line 57
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 58
    iget-object v4, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "bundle"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->k:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, p2

    invoke-static/range {v3 .. v11}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/p/a2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    :cond_dc
    move-object v3, p0

    move-object v6, p2

    .line 60
    invoke-virtual {p1, v3, v5, v6}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    :cond_e2
    move-object v3, p0

    .line 68
    const-string p0, "browser"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f9

    .line 69
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result p0

    if-eqz p0, :cond_f2

    goto :goto_f9

    .line 72
    :cond_f2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lio/dcloud/p/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V
    .registers 10

    const-string p0, "/s.txt"

    const-string v0, "/data.json"

    .line 75
    :try_start_4
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/p/v0;->e(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_ed

    .line 77
    :cond_28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_37

    goto/16 :goto_ed

    .line 80
    :cond_37
    const-string v2, "provider"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    .line 81
    iput-object v0, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d:Lorg/json/JSONObject;

    .line 82
    const-string v2, "es"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->i:I

    .line 83
    const-string v2, "ec"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->j:I

    .line 84
    const-string v2, "src"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    iput-object v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->g:Ljava/lang/String;

    .line 86
    const-string v4, "tid"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->l:Ljava/lang/String;

    .line 87
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_86

    const-string v4, "img.gif"

    goto :goto_88

    .line 89
    :cond_86
    const-string v4, "img.png"

    :goto_88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ed

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_ed

    if-eqz v1, :cond_d4

    .line 94
    const-string v1, "srcPath"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "pl.droidsonroids.gif.GifDrawable"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v5, v4}, Lio/dcloud/sdk/core/util/ReflectUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e:Ljava/lang/Object;

    goto :goto_dc

    .line 97
    :cond_d4
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 99
    iput-object v0, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e:Ljava/lang/Object;

    .line 102
    :cond_dc
    :goto_dc
    iput-object v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->f:Ljava/lang/String;

    .line 103
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/v0;->a(Ljava/lang/Object;)Z
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_ed} :catch_ee

    :cond_ed
    :goto_ed
    return-void

    :catch_ee
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;JLio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    .registers 15

    .line 110
    invoke-static {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 112
    const-string v2, "expires"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "yy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_6a

    .line 116
    const-string v3, "src"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    const-string v3, "utf-8"

    invoke-static {v7, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 119
    const-string p2, "tid"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p1

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V

    return-void

    :cond_6a
    move-object v9, p4

    .line 121
    invoke-interface {v9}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b()V

    return-void
.end method

.method static c(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/a;->f(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_e
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/b;->f(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1c
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6
    const-string v0, "imptracker"

    invoke-static {p0, p1, p2, v0}, Lio/dcloud/sdk/base/dcloud/e;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.InstallReceiver (io.dcloud.sdk.base.dcloud.ADHandler$InstallReceiver)
.class public Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallReceiver"
.end annotation


# instance fields
.field a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    .line 3
    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 3
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "tid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "adid"

    invoke-static {p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v6, v5, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    const/16 v1, 0x1f

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2f
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.a (io.dcloud.sdk.base.dcloud.ADHandler$a)
.class Lio/dcloud/sdk/base/dcloud/ADHandler$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Lio/dcloud/sdk/base/dcloud/ADHandler$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/ADHandler$h;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$h;

    invoke-interface {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$h;->execute()V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.b (io.dcloud.sdk.base.dcloud.ADHandler$b)
.class Lio/dcloud/sdk/base/dcloud/ADHandler$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    :cond_13
    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->b:Landroid/content/Context;

    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->c:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->d:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/r0;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0x32

    invoke-static/range {v3 .. v8}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.c (io.dcloud.sdk.base.dcloud.ADHandler$c)
.class Lio/dcloud/sdk/base/dcloud/ADHandler$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/base/dcloud/ADHandler$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)Lio/dcloud/sdk/base/dcloud/ADHandler$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$c;->b:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-static {v0, p1, v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    return-void
.end method

.method public find()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$c;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$c;->a(Ljava/io/File;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.d (io.dcloud.sdk.base.dcloud.ADHandler$d)
.class Lio/dcloud/sdk/base/dcloud/ADHandler$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/base/dcloud/ADHandler$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/sdk/base/dcloud/ADHandler$g;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->d:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->a:Lorg/json/JSONObject;

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "ua-webview"

    invoke-static {v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_2a
    move-object v0, v2

    :goto_2b
    const/4 v1, 0x1

    .line 9
    :try_start_2c
    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->b:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    nop

    .line 12
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "download file is nulll"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez v2, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adh"

    invoke-static {v1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_63

    .line 14
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lio/dcloud/p/v0;->a([BILjava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->d:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-interface {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a()V

    goto :goto_68

    .line 17
    :cond_63
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$d;->d:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-interface {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b()V

    :goto_68
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.e (io.dcloud.sdk.base.dcloud.ADHandler$e)
.class public Lio/dcloud/sdk/base/dcloud/ADHandler$e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:Landroid/view/MotionEvent;

.field b:Landroid/view/MotionEvent;

.field c:Ljava/lang/String;

.field d:Lorg/json/JSONObject;

.field public e:Ljava/lang/Object;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:I

.field k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->i:I

    .line 11
    iput v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->j:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lio/dcloud/p/s1;)V
    .registers 5

    if-eqz p2, :cond_24

    .line 3
    new-instance v0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$a;

    invoke-direct {v0, p0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e$a;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Lio/dcloud/p/s1;)V

    .line 25
    :try_start_7
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    const-string v1, "ad_receive"

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    const-string p1, "ADReceive"

    const-string p2, "registerReceiver"

    invoke-static {p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 31
    invoke-static {p1}, Lio/dcloud/p/c;->a(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Lio/dcloud/p/z0;->a(Landroid/content/Context;)Lio/dcloud/p/z0;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lio/dcloud/p/z0;->a()Ljava/util/List;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d:Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_3c

    .line 37
    :cond_16
    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    const-string v4, "downloadAppName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/p/y0;

    .line 40
    invoke-virtual {v4}, Lio/dcloud/p/y0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    :goto_3c
    return-void

    .line 44
    :cond_3d
    sget-object v1, Lio/dcloud/p/f;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_48

    move-object v2, v5

    goto :goto_57

    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_57
    invoke-static {v3, v1, v2}, Lio/dcloud/p/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p1, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v5, ""

    :cond_75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Download/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 48
    iget-object v9, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    const/16 v4, 0x1d

    move-object v8, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v4 .. v9}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lio/dcloud/p/y0;

    invoke-direct {p1}, Lio/dcloud/p/y0;-><init>()V

    .line 50
    invoke-virtual {p1, v5, v3, v10}, Lio/dcloud/p/y0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v7

    move-object v7, v5

    .line 51
    new-instance v5, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;

    move-object v8, v6

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lio/dcloud/p/y0;->a(Lio/dcloud/p/y0$a;)V

    .line 78
    invoke-virtual {v0, p1}, Lio/dcloud/p/z0;->a(Lio/dcloud/p/y0;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->k:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e:Ljava/lang/Object;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method b()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method c()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method d()Z
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method e()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d:Lorg/json/JSONObject;

    const-string v1, "report"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.e.a (io.dcloud.sdk.base.dcloud.ADHandler$e$a)
.class Lio/dcloud/sdk/base/dcloud/ADHandler$e$a;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a(Landroid/content/Context;Lio/dcloud/p/s1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/s1;

.field final synthetic b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Lio/dcloud/p/s1;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$a;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$a;->a:Lio/dcloud/p/s1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string v0, "ADReceive"

    const-string v1, "useTime="

    .line 1
    :try_start_4
    const-string v2, "begin"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2
    const-string v2, "end"

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0xbb8

    cmp-long p2, v2, v4

    if-gtz p2, :cond_2e

    .line 8
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$a;->a:Lio/dcloud/p/s1;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lio/dcloud/p/s1;->onReceiver(Lorg/json/JSONObject;)V

    .line 10
    :cond_2e
    const-string p2, "unregisterReceiver"

    invoke-static {v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.e.b (io.dcloud.sdk.base.dcloud.ADHandler$e$b)
.class Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/y0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/p/y0;)V
    .registers 9

    .line 1
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v5, v4, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/dcloud/p/c;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    new-instance v2, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    :cond_40
    :try_start_40
    const-string p1, "io.dcloud.feature.pack.FileUtils"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 14
    const-string v0, "addFileToSystem"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dc.fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    aput-object v3, v1, v6

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_83} :catch_83

    :catch_83
    return-void
.end method

.method public b(Lio/dcloud/p/y0;)V
    .registers 8

    .line 1
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v5, v4, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.f (io.dcloud.sdk.base.dcloud.ADHandler$f)
.class interface abstract Lio/dcloud/sdk/base/dcloud/ADHandler$f;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "f"
.end annotation


# virtual methods
.method public abstract find()Z
.end method

.method public abstract operate(Ljava/lang/Object;)V
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.g (io.dcloud.sdk.base.dcloud.ADHandler$g)
.class public interface abstract Lio/dcloud/sdk/base/dcloud/ADHandler$g;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler.h (io.dcloud.sdk.base.dcloud.ADHandler$h)
.class interface abstract Lio/dcloud/sdk/base/dcloud/ADHandler$h;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "h"
.end annotation


# virtual methods
.method public abstract execute()V
.end method

###### Class io.dcloud.sdk.base.dcloud.ADHandler$$ExternalSyntheticLambda0 (io.dcloud.sdk.base.dcloud.ADHandler$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;
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

.field public final synthetic f$5:Lio/dcloud/sdk/base/dcloud/ADHandler$e;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$e;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$5:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$4:I

    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$$ExternalSyntheticLambda0;->f$5:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->$r8$lambda$XIlKNpMimQxDp9MUeGwNEbY-4Dk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    return-void
.end method
