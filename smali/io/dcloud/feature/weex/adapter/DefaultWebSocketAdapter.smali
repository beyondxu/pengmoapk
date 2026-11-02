###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter)
.class public Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;


# static fields
.field private static mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;


# instance fields
.field private eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

.field private throttleUtil:Lio/dcloud/common/util/ThrottleUtil;

.field private ws:Ldc/squareup/okhttp3/WebSocket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->throttleUtil:Lio/dcloud/common/util/ThrottleUtil;

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Ldc/squareup/okhttp3/WebSocket;)Ldc/squareup/okhttp3/WebSocket;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    return-object p1
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->throttleUtil:Lio/dcloud/common/util/ThrottleUtil;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Lio/dcloud/common/util/ThrottleUtil;)Lio/dcloud/common/util/ThrottleUtil;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->throttleUtil:Lio/dcloud/common/util/ThrottleUtil;

    return-object p1
.end method

.method private reportError(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onError(Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_13

    .line 3
    :try_start_4
    invoke-interface {v0, p1, p2}, Ldc/squareup/okhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
    .registers 7

    .line 1
    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    .line 3
    new-instance p3, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {p3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 16
    :try_start_7
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 19
    invoke-virtual {p3, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_10} :catch_16
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :cond_1a
    :goto_1a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {p3, v1, v2, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 30
    invoke-virtual {p3, v1, v2, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    invoke-virtual {p3, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 33
    new-instance v0, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 35
    const-string v1, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v1, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 37
    :cond_3c
    const-string p2, "Origin"

    const-string v1, "http://localhost"

    invoke-virtual {v0, p2, v1}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 39
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 42
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    .line 43
    invoke-virtual {p3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object p2

    .line 45
    new-instance p3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V

    invoke-virtual {p2, p1, p3}, Ldc/squareup/okhttp3/OkHttpClient;->newWebSocket(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;)Ldc/squareup/okhttp3/WebSocket;

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
    .registers 10

    const-string v0, "Origin"

    .line 46
    iput-object p4, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    .line 48
    new-instance p4, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {p4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 61
    :try_start_9
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 64
    invoke-virtual {p4, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_12} :catch_18
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_1c

    :catch_13
    move-exception v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c

    :catch_18
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :cond_1c
    :goto_1c
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {p4, v2, v3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 75
    invoke-virtual {p4, v2, v3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 76
    sget-object v1, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    if-nez v1, :cond_31

    .line 77
    new-instance v1, Ldc/squareup/okhttp3/ConnectionPool;

    invoke-direct {v1}, Ldc/squareup/okhttp3/ConnectionPool;-><init>()V

    sput-object v1, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 79
    :cond_31
    sget-object v1, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    invoke-virtual {p4, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool(Ldc/squareup/okhttp3/ConnectionPool;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    const/4 v1, 0x0

    .line 80
    invoke-static {v1}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v2

    invoke-virtual {p4, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 82
    new-instance v2, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v2}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 84
    const-string v3, "Sec-WebSocket-Protocol"

    invoke-virtual {v2, v3, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 89
    :cond_4e
    :try_start_4e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_91

    .line 90
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_91

    .line 92
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_64
    :goto_64
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_91

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    const/4 v1, 0x1

    .line 98
    :cond_83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 99
    invoke-virtual {v2, v3, p3}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_8c} :catch_8d

    goto :goto_64

    :catch_8d
    move-exception p2

    .line 106
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_91
    if-nez v1, :cond_98

    .line 110
    const-string p2, "http://localhost"

    invoke-virtual {v2, v0, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 113
    :cond_98
    invoke-virtual {v2, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 116
    invoke-virtual {v2}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    .line 117
    invoke-virtual {p4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object p2

    .line 120
    new-instance p3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V

    invoke-virtual {p2, p1, p3}, Ldc/squareup/okhttp3/OkHttpClient;->newWebSocket(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;)Ldc/squareup/okhttp3/WebSocket;

    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_16

    .line 3
    :try_start_4
    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ldc/squareup/okhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    return-void
.end method

.method public send(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 6

    const-string v0, "base64"

    .line 18
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v1, :cond_44

    .line 20
    :try_start_6
    const-string v1, "@type"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_3b

    const-string v2, "some error occur"

    if-eqz v1, :cond_37

    .line 21
    :try_start_10
    const-string v3, "binary"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 22
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_33

    .line 24
    invoke-static {p1}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    invoke-interface {v0, p1}, Ldc/squareup/okhttp3/WebSocket;->send(Ldc/squareup/okio/ByteString;)Z

    return-void

    .line 27
    :cond_33
    invoke-direct {p0, v2}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    return-void

    .line 30
    :cond_37
    invoke-direct {p0, v2}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_44
    const-string p1, "WebSocket is not ready"

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 2
    const-string v1, "@type"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 4
    const-string v2, "binary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->send(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    nop

    .line 9
    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_35

    .line 11
    :try_start_25
    invoke-interface {v0, p1}, Ldc/squareup/okhttp3/WebSocket;->send(Ljava/lang/String;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_3a

    :catch_29
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    goto :goto_3a

    .line 17
    :cond_35
    const-string p1, "WebSocket is not ready"

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter.AnonymousClass1 (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter$1)
.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;
.super Ldc/squareup/okhttp3/WebSocketListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-direct {p0}, Ldc/squareup/okhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    if-nez p1, :cond_15

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    new-instance v0, Lio/dcloud/common/util/ThrottleUtil;

    invoke-direct {v0}, Lio/dcloud/common/util/ThrottleUtil;-><init>()V

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$202(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Lio/dcloud/common/util/ThrottleUtil;)Lio/dcloud/common/util/ThrottleUtil;

    .line 5
    :cond_15
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;

    invoke-direct {v0, p0, p2, p3}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;ILjava/lang/String;)V

    const-wide/16 p2, 0xa

    invoke-virtual {p1, v0, p2, p3}, Lio/dcloud/common/util/ThrottleUtil;->throttlePost(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    if-nez p1, :cond_15

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    new-instance v0, Lio/dcloud/common/util/ThrottleUtil;

    invoke-direct {v0}, Lio/dcloud/common/util/ThrottleUtil;-><init>()V

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$202(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Lio/dcloud/common/util/ThrottleUtil;)Lio/dcloud/common/util/ThrottleUtil;

    .line 5
    :cond_15
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;

    invoke-direct {v0, p0, p2, p3}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;ILjava/lang/String;)V

    const-wide/16 p2, 0xa

    invoke-virtual {p1, v0, p2, p3}, Lio/dcloud/common/util/ThrottleUtil;->throttlePost(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V

    .line 2
    instance-of p1, p2, Ljava/io/EOFException;

    if-eqz p1, :cond_1c

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    sget-object p2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {p2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p3, p2, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void

    .line 5
    :cond_1c
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V
    .registers 5

    .line 4
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V

    .line 5
    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 6
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8
    const-string v0, "@type"

    const-string v1, "binary"

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v0, "base64"

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$002(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Ldc/squareup/okhttp3/WebSocket;)Ldc/squareup/okhttp3/WebSocket;

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onOpen()V

    .line 4
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_3a
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter.AnonymousClass1.RunnableC00521 (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter$1$1)
.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

.field final synthetic val$code:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;->this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;->val$code:I

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;->this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

    iget-object v0, v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;->val$code:I

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;->val$reason:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter.AnonymousClass1.AnonymousClass2 (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter$1$2)
.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

.field final synthetic val$code:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;->this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;->val$code:I

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;->this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

    iget-object v0, v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;->val$code:I

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;->val$reason:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter.AnonymousClass2 (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter$2)
.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;
.super Ldc/squareup/okhttp3/WebSocketListener;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-direct {p0}, Ldc/squareup/okhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    if-nez p1, :cond_15

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    new-instance v0, Lio/dcloud/common/util/ThrottleUtil;

    invoke-direct {v0}, Lio/dcloud/common/util/ThrottleUtil;-><init>()V

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$202(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Lio/dcloud/common/util/ThrottleUtil;)Lio/dcloud/common/util/ThrottleUtil;

    .line 5
    :cond_15
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;

    invoke-direct {v0, p0, p2, p3}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;ILjava/lang/String;)V

    const-wide/16 p2, 0xa

    invoke-virtual {p1, v0, p2, p3}, Lio/dcloud/common/util/ThrottleUtil;->throttlePost(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    if-nez p1, :cond_15

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    new-instance v0, Lio/dcloud/common/util/ThrottleUtil;

    invoke-direct {v0}, Lio/dcloud/common/util/ThrottleUtil;-><init>()V

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$202(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Lio/dcloud/common/util/ThrottleUtil;)Lio/dcloud/common/util/ThrottleUtil;

    .line 5
    :cond_15
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;

    invoke-direct {v0, p0, p2, p3}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;ILjava/lang/String;)V

    const-wide/16 p2, 0xa

    invoke-virtual {p1, v0, p2, p3}, Lio/dcloud/common/util/ThrottleUtil;->throttlePost(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V

    .line 2
    instance-of p1, p2, Ljava/io/EOFException;

    if-eqz p1, :cond_1c

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    sget-object p2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {p2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, p3, p2, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void

    .line 5
    :cond_1c
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V
    .registers 5

    .line 4
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V

    .line 5
    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 6
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 8
    const-string v0, "@type"

    const-string v1, "binary"

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v0, "base64"

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$002(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Ldc/squareup/okhttp3/WebSocket;)Ldc/squareup/okhttp3/WebSocket;

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onOpen()V

    .line 4
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_3a
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter.AnonymousClass2.AnonymousClass1 (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter$2$1)
.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

.field final synthetic val$code:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;->this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;->val$code:I

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;->this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

    iget-object v0, v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;->val$code:I

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$1;->val$reason:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter.AnonymousClass2.RunnableC00532 (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapter$2$2)
.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

.field final synthetic val$code:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;->this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;->val$code:I

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;->this$1:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

    iget-object v0, v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;->val$code:I

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2$2;->val$reason:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    return-void
.end method
