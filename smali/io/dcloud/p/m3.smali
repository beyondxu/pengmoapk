###### Class io.dcloud.p.m3 (io.dcloud.p.m3)
.class public Lio/dcloud/p/m3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/m3$a;
    }
.end annotation


# static fields
.field private static b:Lio/dcloud/p/m3;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lio/dcloud/p/m3;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 12

    const v0, 0xf63e7

    .line 10
    :try_start_3
    const-string v1, "com.bun.miitmdid.core.MdidSdkHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_60

    .line 17
    :try_start_9
    const-string v2, "com.bun.supplier.IIdentifierListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_16

    .line 19
    :catch_10
    :try_start_10
    const-string v2, "com.bun.miitmdid.interfaces.IIdentifierListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 21
    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    new-instance v7, Lio/dcloud/p/m3$a;

    invoke-direct {v7, p0, p1}, Lio/dcloud/p/m3$a;-><init>(Lio/dcloud/p/m3;Landroid/content/Context;)V

    invoke-static {v3, v5, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    const-string v5, "InitSdk"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    const/4 v9, 0x2

    aput-object v2, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 27
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v5, v4

    aput-object v3, v5, v9

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    :cond_55
    instance-of p1, v2, Ljava/lang/Integer;

    if-eqz p1, :cond_60

    .line 30
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5f} :catch_60

    return p1

    :catch_60
    :catchall_60
    :cond_60
    return v0
.end method

.method public static a()Lio/dcloud/p/m3;
    .registers 2

    .line 2
    sget-object v0, Lio/dcloud/p/m3;->b:Lio/dcloud/p/m3;

    if-nez v0, :cond_17

    .line 3
    const-class v0, Lio/dcloud/p/m3;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lio/dcloud/p/m3;->b:Lio/dcloud/p/m3;

    if-nez v1, :cond_12

    .line 5
    new-instance v1, Lio/dcloud/p/m3;

    invoke-direct {v1}, Lio/dcloud/p/m3;-><init>()V

    sput-object v1, Lio/dcloud/p/m3;->b:Lio/dcloud/p/m3;

    .line 7
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 9
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/p/m3;->b:Lio/dcloud/p/m3;

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 31
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 39
    array-length p2, p3

    if-nez p2, :cond_14

    move-object p3, v0

    :cond_14
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    return-object p0

    :catchall_19
    return-object v0
.end method

.method static synthetic a(Lio/dcloud/p/m3;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/m3;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/p/m3;->a(Landroid/content/Context;)I

    move-result p1

    const v0, 0xf63e4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b

    return v1

    :cond_b
    const v0, 0xf63e5

    if-ne p1, v0, :cond_11

    return v1

    :cond_11
    const v0, 0xf63e3

    if-ne p1, v0, :cond_17

    return v1

    :cond_17
    const v0, 0xf63e6

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v1
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/p/m3;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/p/m3;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3
    const-string p1, ""

    return-object p1

    :cond_11
    if-eqz p1, :cond_1d

    .line 5
    const-string v0, "dcloud-ads"

    const-string v1, "oaid"

    invoke-static {p1, v0, v1}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/m3;->a:Ljava/lang/String;

    .line 8
    :cond_1d
    iget-object p1, p0, Lio/dcloud/p/m3;->a:Ljava/lang/String;

    return-object p1
.end method

###### Class io.dcloud.p.m3.a (io.dcloud.p.m3$a)
.class Lio/dcloud/p/m3$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/p/m3;


# direct methods
.method public constructor <init>(Lio/dcloud/p/m3;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/m3$a;->b:Lio/dcloud/p/m3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/p/m3$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnSupport"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6c

    if-eqz p3, :cond_6c

    .line 4
    array-length p1, p3

    if-lez p1, :cond_6c

    const/4 p1, 0x0

    .line 5
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_21

    .line 10
    aget-object p3, p3, v1

    goto :goto_22

    :cond_21
    move-object p3, p2

    :goto_22
    if-nez p3, :cond_25

    goto :goto_6c

    .line 16
    :cond_25
    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "getOAID"

    invoke-static {p3, v1, p2, v0}, Lio/dcloud/p/m3;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    new-array v1, p1, [Ljava/lang/Object;

    const-string v2, "getVAID"

    invoke-static {p3, v2, p2, v1}, Lio/dcloud/p/m3;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "getAAID"

    invoke-static {p3, v2, p2, p1}, Lio/dcloud/p/m3;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, ""

    if-nez v0, :cond_43

    move-object v2, p3

    goto :goto_44

    :cond_43
    move-object v2, v0

    .line 19
    :goto_44
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-nez v1, :cond_4a

    move-object v1, p3

    .line 20
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-nez p1, :cond_50

    move-object p1, p3

    .line 21
    :cond_50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    iget-object p1, p0, Lio/dcloud/p/m3$a;->b:Lio/dcloud/p/m3;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lio/dcloud/p/m3;->a(Lio/dcloud/p/m3;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lio/dcloud/p/m3$a;->a:Landroid/content/Context;

    if-eqz p1, :cond_6c

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "dcloud-ads"

    const-string v1, "oaid"

    invoke-static {p1, v0, v1, p3}, Lio/dcloud/p/e4;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_6c
    :goto_6c
    return-object p2
.end method
