###### Class io.dcloud.p.f1 (io.dcloud.p.f1)
.class public abstract Lio/dcloud/p/f1;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/p/f1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    :try_start_8
    const-string v0, "@\\ED=XD][Z]F\\AEM"

    invoke-static {v0}, Lio/dcloud/p/f1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/p/f1;->b:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_15
    :goto_15
    sget-object v0, Lio/dcloud/p/f1;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 9
    const-string v0, "GBK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 10
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 11
    aget-byte v2, p0, v1

    xor-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 13
    :cond_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/p/f1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    :try_start_8
    const-string v0, "LKdg}l.:\"8V9+>88"

    invoke-static {v0}, Lio/dcloud/p/f1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/p/f1;->a:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_15
    :goto_15
    sget-object v0, Lio/dcloud/p/f1;->a:Ljava/lang/String;

    return-object v0
.end method
