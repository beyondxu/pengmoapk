###### Class io.dcloud.feature.weex.adapter.DCWXHttpAdapter (io.dcloud.feature.weex.adapter.DCWXHttpAdapter)
.class public Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter;


# static fields
.field private static mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

.field private static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_c

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 4
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x800

    .line 3
    new-array p1, p1, [C

    .line 5
    :cond_17
    :goto_17
    invoke-virtual {v1, p1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, p1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_17

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    goto :goto_17

    .line 11
    :cond_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B
    .registers 10

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    .line 5
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :cond_f
    :goto_f
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_20

    .line 8
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v4, v5

    if-eqz p2, :cond_f

    .line 11
    invoke-interface {p2, v4}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    goto :goto_f

    .line 15
    :cond_20
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .registers 2

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object p1

    .line 3
    :cond_5
    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object p1
.end method

.method public getImageOkHttpClient()Ldc/squareup/okhttp3/OkHttpClient;
    .registers 6

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    const/16 v1, 0x7530

    int-to-long v1, v1

    .line 2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    .line 6
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 8
    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public getOKRequest(Ldc/squareup/okhttp3/OkHttpClient$Builder;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ldc/squareup/okhttp3/Request;
    .registers 9

    .line 1
    iget v0, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v3, v1

    .line 3
    invoke-virtual {v0, v3, v4, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v3, v1

    .line 4
    invoke-virtual {v0, v3, v4, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v3, v1

    .line 5
    invoke-virtual {v0, v3, v4, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 8
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->isFirstIpv4:Z

    if-eqz v0, :cond_33

    .line 9
    new-instance v0, Lio/dcloud/common/adapter/util/DCOKDns;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/DCOKDns;-><init>()V

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dns(Ldc/squareup/okhttp3/Dns;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 12
    :cond_33
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_91

    .line 17
    new-instance v0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;-><init>()V

    .line 18
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "keystore"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setKeystore(Ljava/lang/String;)V

    .line 19
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "storePass"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setStorePass(Ljava/lang/String;)V

    .line 20
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "ca"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 23
    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    .line 25
    :goto_71
    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setCa([Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p2, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 31
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->getSSLSocketFactory(Lio/dcloud/feature/weex/config/AndroidTlsConfig;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 32
    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_e8

    .line 34
    :cond_91
    sget-object v1, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    if-eqz v1, :cond_c0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 36
    sget-object v1, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/http/CertDTO;

    .line 38
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p2, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 41
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->getSSLSocketFactory(Lcom/taobao/weex/http/CertDTO;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 42
    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_e8

    .line 46
    :cond_c0
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    if-eqz v0, :cond_e8

    .line 48
    :try_start_c4
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_ce

    .line 49
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 51
    :cond_ce
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_df

    .line 52
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c4 .. :try_end_d5} :catch_db
    .catch Ljava/security/KeyManagementException; {:try_start_c4 .. :try_end_d5} :catch_d6

    goto :goto_df

    :catch_d6
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_df

    :catch_db
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    :cond_df
    :goto_df
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 68
    :cond_e8
    :goto_e8
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    if-nez v0, :cond_f3

    .line 69
    new-instance v0, Ldc/squareup/okhttp3/ConnectionPool;

    invoke-direct {v0}, Ldc/squareup/okhttp3/ConnectionPool;-><init>()V

    sput-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 71
    :cond_f3
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool(Ldc/squareup/okhttp3/ConnectionPool;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 75
    new-instance p1, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {p1}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 76
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 78
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    const-string v1, "application/x-www-form-urlencoded"

    if-eqz v0, :cond_138

    .line 79
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_110
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_138

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 82
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    :cond_12c
    iget-object v4, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    goto :goto_110

    .line 87
    :cond_138
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16f

    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16f

    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "PATCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16f

    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "DELETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    goto :goto_16f

    .line 111
    :cond_161
    iget-object p2, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string p3, "HEAD"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b2

    .line 113
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request$Builder;->head()Ldc/squareup/okhttp3/Request$Builder;

    goto :goto_1b2

    .line 114
    :cond_16f
    :goto_16f
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    if-eqz v0, :cond_178

    if-eqz p3, :cond_178

    .line 116
    invoke-interface {p3, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 119
    :cond_178
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->inputType:Ljava/lang/String;

    const-string v2, "BASE64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x64

    if-eqz v0, :cond_19e

    .line 121
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 122
    invoke-static {v1}, Ldc/squareup/okhttp3/MediaType;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Ldc/squareup/okhttp3/RequestBody;->createWithBytes(Ldc/squareup/okhttp3/MediaType;[B)Ldc/squareup/okhttp3/RequestBody;

    move-result-object v0

    .line 123
    iget-object p2, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    if-eqz p3, :cond_1b2

    .line 126
    invoke-interface {p3, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    goto :goto_1b2

    .line 129
    :cond_19e
    invoke-static {v1}, Ldc/squareup/okhttp3/MediaType;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;Ljava/lang/String;)Ldc/squareup/okhttp3/RequestBody;

    move-result-object v0

    .line 130
    iget-object p2, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    if-eqz p3, :cond_1b2

    .line 132
    invoke-interface {p3, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 140
    :cond_1b2
    :goto_1b2
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 1
    invoke-interface {p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpStart()V

    .line 3
    :cond_5
    new-instance v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;-><init>(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.DCWXHttpAdapter.AnonymousClass1 (io.dcloud.feature.weex.adapter.DCWXHttpAdapter$1)
.class Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$request:Lcom/taobao/weex/common/WXRequest;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v1, v1, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_21

    .line 3
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetRequest()V

    .line 8
    :cond_21
    new-instance v1, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v1}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    const/4 v2, 0x0

    .line 11
    :try_start_27
    new-instance v3, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 14
    iget-object v4, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v6, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-virtual {v4, v3, v5, v6}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->getOKRequest(Ldc/squareup/okhttp3/OkHttpClient$Builder;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ldc/squareup/okhttp3/Request;

    move-result-object v4

    .line 15
    invoke-virtual {v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v4}, Ldc/squareup/okhttp3/OkHttpClient;->newCall(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Call;

    move-result-object v3

    .line 19
    invoke-interface {v3}, Ldc/squareup/okhttp3/Call;->execute()Ldc/squareup/okhttp3/Response;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v4

    .line 22
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 24
    iget-object v6, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v6, :cond_5b

    .line 25
    invoke-interface {v6, v5, v4}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 27
    :cond_5b
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 28
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Ldc/squareup/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 29
    iget-object v4, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v4, v3, v5}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->access$000(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    const/4 v3, 0x1

    goto :goto_88

    .line 31
    :cond_75
    iget-object v4, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Ldc/squareup/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v4, v3, v5}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    const/4 v3, 0x0

    .line 34
    :goto_88
    iget-object v4, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v4, :cond_8f

    .line 35
    invoke-interface {v4, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_8f} :catch_91

    :cond_8f
    move v2, v3

    goto :goto_a8

    :catch_91
    move-exception v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    const-string v4, "-1"

    iput-object v4, v1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 41
    iput-object v4, v1, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v3, :cond_a8

    .line 44
    invoke-interface {v3, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    :cond_a8
    :goto_a8
    if-eqz v0, :cond_b8

    .line 47
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 48
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetResult(ZLjava/lang/String;)V

    :cond_b8
    return-void
.end method
