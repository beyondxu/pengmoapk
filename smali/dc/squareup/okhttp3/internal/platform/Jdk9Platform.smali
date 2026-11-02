###### Class dc.squareup.okhttp3.internal.platform.Jdk9Platform (dc.squareup.okhttp3.internal.platform.Jdk9Platform)
.class final Ldc/squareup/okhttp3/internal/platform/Jdk9Platform;
.super Ldc/squareup/okhttp3/internal/platform/Platform;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field final getProtocolMethod:Ljava/lang/reflect/Method;

.field final setProtocolMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/platform/Platform;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static buildIfSupported()Ldc/squareup/okhttp3/internal/platform/Jdk9Platform;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-class v1, Ljavax/net/ssl/SSLParameters;

    const-string v2, "setApplicationProtocols"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    const-class v2, Ljavax/net/ssl/SSLSocket;

    const-string v3, "getApplicationProtocol"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 5
    new-instance v3, Ldc/squareup/okhttp3/internal/platform/Jdk9Platform;

    invoke-direct {v3, v1, v2}, Ldc/squareup/okhttp3/internal/platform/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1e} :catch_1f

    return-object v3

    :catch_1f
    return-object v0
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p2

    .line 3
    invoke-static {p3}, Ldc/squareup/okhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    .line 6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 7
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_20} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    goto :goto_24

    :catch_23
    move-exception p1

    .line 12
    :goto_24
    const-string/jumbo p2, "unable to set ssl parameters"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    const-string v0, "failed to get ALPN selected protocol"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_17

    .line 5
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_13} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_13} :catch_18

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    return-object p1

    :cond_17
    :goto_17
    return-object v1

    :catch_18
    move-exception p1

    .line 19
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :catch_1e
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_28

    return-object v1

    .line 26
    :cond_28
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
