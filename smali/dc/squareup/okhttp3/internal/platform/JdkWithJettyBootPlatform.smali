###### Class dc.squareup.okhttp3.internal.platform.JdkWithJettyBootPlatform (dc.squareup.okhttp3.internal.platform.JdkWithJettyBootPlatform)
.class Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;
.super Ldc/squareup/okhttp3/internal/platform/Platform;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    }
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/platform/Platform;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 4
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    .line 5
    iput-object p4, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 6
    iput-object p5, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    return-void
.end method

.method public static buildIfSupported()Ldc/squareup/okhttp3/internal/platform/Platform;
    .registers 9

    .line 2
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-string v1, "org.eclipse.jetty.alpn.ALPN$Provider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    const-string v2, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 5
    const-string v2, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 6
    const-string v2, "put"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljavax/net/ssl/SSLSocket;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7
    const-string v2, "get"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v6, Ljavax/net/ssl/SSLSocket;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 8
    const-string v3, "remove"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Ljavax/net/ssl/SSLSocket;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 9
    new-instance v3, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;

    move-object v4, v1

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_48} :catch_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_48} :catch_49

    return-object v3

    :catch_49
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    goto :goto_10

    :catch_f
    move-exception p1

    .line 3
    :goto_10
    const-string/jumbo v0, "unable to remove alpn"

    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ldc/squareup/okhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4
    :try_start_4
    const-class p3, Ldc/squareup/okhttp3/internal/platform/Platform;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    new-instance v1, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    invoke-direct {v1, p2}, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {p3, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v0

    const/4 p1, 0x0

    invoke-virtual {p3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    goto :goto_30

    :catch_2f
    move-exception p1

    .line 8
    :goto_30
    const-string/jumbo p2, "unable to set alpn"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    .line 3
    iget-boolean v1, v0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    if-nez v1, :cond_26

    iget-object v2, v0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 4
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :cond_26
    if-eqz v1, :cond_29

    return-object p1

    .line 8
    :cond_29
    iget-object p1, v0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2b} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    goto :goto_2f

    :catch_2e
    move-exception p1

    .line 10
    :goto_2f
    const-string/jumbo v0, "unable to get selected protocol"

    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

###### Class dc.squareup.okhttp3.internal.platform.JdkWithJettyBootPlatform.JettyNegoProvider (dc.squareup.okhttp3.internal.platform.JdkWithJettyBootPlatform$JettyNegoProvider)
.class Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JettyNegoProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selected:Ljava/lang/String;

.field unsupported:Z


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-nez p3, :cond_c

    .line 4
    sget-object p3, Ldc/squareup/okhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 6
    :cond_c
    const-string/jumbo v1, "supports"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1c

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_1c
    const-string/jumbo v1, "unsupported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_2e

    .line 9
    iput-boolean v3, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    return-object v2

    .line 11
    :cond_2e
    const-string v1, "protocols"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    array-length v1, p3

    if-nez v1, :cond_3c

    .line 12
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    return-object p1

    .line 13
    :cond_3c
    const-string v1, "selectProtocol"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_4d

    const-string v1, "select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    :cond_4d
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_86

    array-length v0, p3

    if-ne v0, v3, :cond_86

    aget-object v0, p3, v4

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_86

    .line 15
    check-cast v0, Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_61
    if-ge p2, p1, :cond_7b

    .line 18
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_78

    .line 19
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object p1

    :cond_78
    add-int/lit8 p2, p2, 0x1

    goto :goto_61

    .line 22
    :cond_7b
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object p1

    .line 23
    :cond_86
    const-string v0, "protocolSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    const-string v0, "selected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a0

    :cond_96
    array-length p1, p3

    if-ne p1, v3, :cond_a0

    .line 25
    aget-object p1, p3, v4

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v2

    .line 28
    :cond_a0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
