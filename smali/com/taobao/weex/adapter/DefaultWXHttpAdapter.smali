###### Class com.taobao.weex.adapter.DefaultWXHttpAdapter (com.taobao.weex.adapter.DefaultWXHttpAdapter)
.class public Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;,
        Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELEGATE:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;-><init>(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;)V

    sput-object v0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->DEFAULT_DELEGATE:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/net/HttpURLConnection;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->openConnection(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_b

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 4
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openConnection(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/net/HttpURLConnection;
    .registers 9

    .line 1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3
    iget v1, p1, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 4
    iget v1, p1, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 8
    iget-object v3, p1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-eqz v3, :cond_41

    .line 9
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 11
    iget-object v5, p1, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 15
    :cond_41
    iget-object v3, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    iget-object v3, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v4, "PUT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    iget-object v3, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v4, "PATCH"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    goto :goto_74

    .line 30
    :cond_60
    iget-object p2, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6e

    .line 31
    iget-object p1, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object v0

    .line 33
    :cond_6e
    const-string p1, "GET"

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_74
    :goto_74
    iget-object v3, p1, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 35
    iget-object v3, p1, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    if-eqz v3, :cond_a1

    if-eqz p2, :cond_82

    .line 37
    invoke-interface {p2, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 39
    :cond_82
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 40
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    iget-object p1, p1, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 43
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    if-eqz p2, :cond_a1

    const/16 p1, 0x64

    .line 45
    invoke-interface {p2, p1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    :cond_a1
    return-object v0
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
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public getEventReporterDelegate()Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;
    .registers 2

    .line 1
    sget-object v0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->DEFAULT_DELEGATE:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;

    return-object v0
.end method

.method public sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 1
    invoke-interface {p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpStart()V

    .line 3
    :cond_5
    new-instance v0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;-><init>(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.taobao.weex.adapter.DefaultWXHttpAdapter.AnonymousClass1 (com.taobao.weex.adapter.DefaultWXHttpAdapter$1)
.class Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$request:Lcom/taobao/weex/common/WXRequest;


# direct methods
.method constructor <init>(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iput-object p2, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p3, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

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

    .line 9
    iget-object v2, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-virtual {v2}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->getEventReporterDelegate()Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    :try_start_2d
    iget-object v4, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v6, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v4, v5, v6}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$100(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 12
    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v5, v5, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 14
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 15
    iget-object v7, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v7, :cond_4d

    .line 16
    invoke-interface {v7, v6, v5}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 18
    :cond_4d
    invoke-interface {v2}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->postConnect()V

    .line 20
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    const/16 v5, 0xc8

    if-lt v6, v5, :cond_72

    const/16 v5, 0x12b

    if-gt v6, v5, :cond_72

    .line 22
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 23
    invoke-interface {v2, v4}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    .line 24
    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iget-object v6, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v5, v4, v6}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$200(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    const/4 v4, 0x1

    goto :goto_81

    .line 26
    :cond_72
    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v6, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v5, v4, v6}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$300(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    const/4 v4, 0x0

    .line 29
    :goto_81
    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v5, :cond_88

    .line 30
    invoke-interface {v5, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_88} :catch_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_88} :catch_8a

    :cond_88
    move v3, v4

    goto :goto_b1

    :catch_8a
    move-exception v4

    goto :goto_8d

    :catch_8c
    move-exception v4

    .line 34
    :goto_8d
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    const-string v5, "-1"

    iput-object v5, v1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 36
    iput-object v5, v1, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 37
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 38
    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v5, :cond_a3

    .line 39
    invoke-interface {v5, v1}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 41
    :cond_a3
    instance-of v1, v4, Ljava/io/IOException;

    if-eqz v1, :cond_b1

    .line 43
    :try_start_a7
    check-cast v4, Ljava/io/IOException;

    invoke-interface {v2, v4}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->httpExchangeFailed(Ljava/io/IOException;)V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_ad

    goto :goto_b1

    :catchall_ad
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b1
    :goto_b1
    if-eqz v0, :cond_c1

    .line 49
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_c1

    .line 50
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetResult(ZLjava/lang/String;)V

    :cond_c1
    return-void
.end method

###### Class com.taobao.weex.adapter.DefaultWXHttpAdapter.IEventReporterDelegate (com.taobao.weex.adapter.DefaultWXHttpAdapter$IEventReporterDelegate)
.class public interface abstract Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEventReporterDelegate"
.end annotation


# virtual methods
.method public abstract httpExchangeFailed(Ljava/io/IOException;)V
.end method

.method public abstract interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public abstract postConnect()V
.end method

.method public abstract preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
.end method

###### Class com.taobao.weex.adapter.DefaultWXHttpAdapter.NOPEventReportDelegate (com.taobao.weex.adapter.DefaultWXHttpAdapter$NOPEventReportDelegate)
.class Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NOPEventReportDelegate"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public httpExchangeFailed(Ljava/io/IOException;)V
    .registers 2

    return-void
.end method

.method public interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    return-object p1
.end method

.method public postConnect()V
    .registers 1

    return-void
.end method

.method public preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
