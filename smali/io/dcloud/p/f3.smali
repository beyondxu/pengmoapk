###### Class io.dcloud.p.f3 (io.dcloud.p.f3)
.class public Lio/dcloud/p/f3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/p/f3$b;,
        Lio/dcloud/p/f3$c;
    }
.end annotation


# instance fields
.field private a:Lio/dcloud/p/f3$b;


# direct methods
.method public constructor <init>(Lio/dcloud/p/f3$b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/p/f3;->a:Lio/dcloud/p/f3$b;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 12

    .line 2
    :try_start_0
    const-string v0, "com.bun.miitmdid.core.MdidSdkHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_61

    .line 9
    :try_start_6
    const-string v1, "com.bun.supplier.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_13

    .line 11
    :catch_d
    :try_start_d
    const-string v1, "com.bun.miitmdid.interfaces.IIdentifierListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 13
    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v6, Lio/dcloud/p/f3$c;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lio/dcloud/p/f3$c;-><init>(Lio/dcloud/p/f3;Lio/dcloud/p/f3$a;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    const-string v4, "InitSdk"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 19
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v1, v3

    aput-object v2, v1, v9

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 21
    :cond_52
    instance-of p1, v7, Ljava/lang/Integer;

    if-eqz p1, :cond_5d

    .line 22
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5c} :catch_5d

    return p1

    :catch_5d
    :cond_5d
    const p1, 0xf63e7

    return p1

    :catchall_61
    const p1, 0xf63e4

    return p1
.end method

.method static synthetic a(Lio/dcloud/p/f3;)Lio/dcloud/p/f3$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/f3;->a:Lio/dcloud/p/f3$b;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3
    :cond_8
    invoke-direct {p0, p1}, Lio/dcloud/p/f3;->a(Landroid/content/Context;)I

    move-result p1

    const v0, 0xf63e4

    if-ne p1, v0, :cond_12

    return v1

    :cond_12
    const v0, 0xf63e5

    if-ne p1, v0, :cond_18

    return v1

    :cond_18
    const v0, 0xf63e3

    if-ne p1, v0, :cond_1e

    return v1

    :cond_1e
    const v0, 0xf63e6

    if-ne p1, v0, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    return v1
.end method

###### Class io.dcloud.p.f3.a (io.dcloud.p.f3$a)
.class abstract synthetic Lio/dcloud/p/f3$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.p.f3.b (io.dcloud.p.f3$b)
.class public interface abstract Lio/dcloud/p/f3$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Z)V
.end method

###### Class io.dcloud.p.f3.c (io.dcloud.p.f3$c)
.class Lio/dcloud/p/f3$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/f3;


# direct methods
.method private constructor <init>(Lio/dcloud/p/f3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/f3$c;->a:Lio/dcloud/p/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/p/f3;Lio/dcloud/p/f3$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/p/f3$c;-><init>(Lio/dcloud/p/f3;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnSupport"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7a

    if-eqz p3, :cond_7a

    .line 5
    array-length p1, p3

    if-lez p1, :cond_7a

    const/4 p1, 0x0

    .line 6
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10
    array-length v1, p3

    const/4 v2, 0x1

    if-le v1, v2, :cond_22

    .line 11
    aget-object p3, p3, v2

    goto :goto_23

    :cond_22
    move-object p3, p2

    .line 13
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_30

    .line 15
    const-string p1, "||"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 17
    :cond_30
    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "getOAID"

    invoke-static {p3, v3, p2, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    new-array v3, p1, [Ljava/lang/Object;

    const-string v4, "getVAID"

    invoke-static {p3, v4, p2, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "getAAID"

    invoke-static {p3, v4, p2, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, ""

    if-nez v2, :cond_4d

    move-object v2, p3

    .line 20
    :cond_4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_58

    move-object v3, p3

    :cond_58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_61

    move-object p1, p3

    :cond_61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    :goto_64
    iget-object p1, p0, Lio/dcloud/p/f3$c;->a:Lio/dcloud/p/f3;

    invoke-static {p1}, Lio/dcloud/p/f3;->a(Lio/dcloud/p/f3;)Lio/dcloud/p/f3$b;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 25
    iget-object p1, p0, Lio/dcloud/p/f3$c;->a:Lio/dcloud/p/f3;

    invoke-static {p1}, Lio/dcloud/p/f3;->a(Lio/dcloud/p/f3;)Lio/dcloud/p/f3$b;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lio/dcloud/p/f3$b;->a(Ljava/lang/String;Z)V

    nop

    :cond_7a
    return-object p2
.end method
