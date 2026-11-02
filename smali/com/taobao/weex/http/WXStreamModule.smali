###### Class com.taobao.weex.http.WXStreamModule (com.taobao.weex.http.WXStreamModule)
.class public Lcom/taobao/weex/http/WXStreamModule;
.super Lcom/taobao/weex/common/WXModule;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;,
        Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;
    }
.end annotation


# static fields
.field static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_TEXT:Ljava/lang/String; = "statusText"

.field public static certMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/CertDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "charset=([a-z0-9-]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/http/WXStreamModule;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/taobao/weex/http/WXStreamModule;-><init>(Lcom/taobao/weex/adapter/IWXHttpAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/adapter/IWXHttpAdapter;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule;->mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    return-void
.end method

.method private extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V
    .registers 8

    .line 1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user-agent"

    if-eqz p1, :cond_38

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 5
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 8
    :cond_30
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/taobao/weex/http/Options$Builder;->putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    goto :goto_19

    .line 11
    :cond_38
    invoke-virtual {p2, v1, v0}, Lcom/taobao/weex/http/Options$Builder;->putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    return-void
.end method

.method static getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1f

    if-nez p1, :cond_5

    goto :goto_1f

    .line 1
    :cond_5
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4
    :cond_12
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method static readAsString([BLjava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_1a

    .line 3
    sget-object v0, Lcom/taobao/weex/http/WXStreamModule;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    .line 9
    :cond_1a
    const-string/jumbo p1, "utf-8"

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v0, :cond_27

    const/4 p1, 0x2

    .line 10
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_27
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_2d

    return-object p2

    :catch_2d
    move-exception p1

    .line 15
    const-string p2, ""

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1
    new-instance v0, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {v0}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "request"

    invoke-interface {v1, p5, v3, v2}, Lio/dcloud/feature/uniapp/adapter/AbsURIAdapter;->rewrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getBody()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getTimeout()I

    move-result p5

    iput p5, v0, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    .line 6
    iput-object p4, v0, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getSslVerify()Z

    move-result p4

    iput-boolean p4, v0, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    .line 8
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->isFirstIpv4()Z

    move-result p4

    iput-boolean p4, v0, Lcom/taobao/weex/common/WXRequest;->isFirstIpv4:Z

    .line 9
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getTlsConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p4

    iput-object p4, v0, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    .line 10
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getInputType()Ljava/lang/String;

    move-result-object p4

    const-string p5, "BASE64"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_56

    .line 12
    iput-object p5, v0, Lcom/taobao/weex/common/WXRequest;->inputType:Ljava/lang/String;

    goto :goto_5a

    .line 15
    :cond_56
    const-string p4, ""

    iput-object p4, v0, Lcom/taobao/weex/common/WXRequest;->inputType:Ljava/lang/String;

    .line 19
    :goto_5a
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_72

    .line 20
    iget-object p4, v0, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-nez p4, :cond_6b

    .line 21
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    goto :goto_72

    .line 23
    :cond_6b
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 27
    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule;->mAdapter:Lcom/taobao/weex/adapter/IWXHttpAdapter;

    if-nez p1, :cond_7e

    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object p1

    :cond_7e
    if-eqz p1, :cond_8a

    .line 29
    new-instance p4, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;

    const/4 p5, 0x0

    invoke-direct {p4, p2, p3, p5}, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;-><init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/WXStreamModule$1;)V

    invoke-interface {p1, v0, p4}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    return-void

    .line 31
    :cond_8a
    const-string p1, "WXStreamModule"

    const-string p2, "No HttpAdapter found,request failed."

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configMTLS(Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 9
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_61

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_61

    .line 6
    :cond_c
    sget-object v0, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10
    :goto_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    .line 12
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 14
    const-string v3, "host"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_56

    .line 18
    :cond_26
    new-instance v4, Lcom/taobao/weex/http/CertDTO;

    invoke-direct {v4}, Lcom/taobao/weex/http/CertDTO;-><init>()V

    .line 19
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    iput-object v3, v4, Lcom/taobao/weex/http/CertDTO;->host:Ljava/lang/String;

    .line 21
    const-string v5, "client"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    .line 22
    const-string v5, "clientPassword"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/http/CertDTO;->clientPassword:Ljava/lang/String;

    .line 23
    const-string v5, "server"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 25
    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 26
    iput-object v2, v4, Lcom/taobao/weex/http/CertDTO;->server:[Ljava/lang/String;

    .line 28
    sget-object v2, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 32
    :cond_59
    invoke-static {}, Lcom/taobao/weex/http/CertJSResponse;->obtainSuccess()Lcom/taobao/weex/http/CertJSResponse;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_61
    :goto_61
    sget-object p1, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {v0, p1}, Lcom/taobao/weex/http/CertJSResponse;->obtainFail(ILjava/lang/String;)Lcom/taobao/weex/http/CertJSResponse;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 11
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_e7

    .line 2
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    goto/16 :goto_e7

    .line 12
    :cond_13
    const-string v4, "method"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    const-string v5, "headers"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 15
    const-string v6, "body"

    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    const-string/jumbo v7, "type"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    const-string v8, "inputType"

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 19
    const-string/jumbo v9, "timeout"

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    .line 20
    const-string/jumbo v10, "tls"

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 21
    const-string v11, "sslVerify"

    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v11

    .line 22
    const-string v12, "firstIpv4"

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 24
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v12, v13}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v12

    if-eqz v12, :cond_71

    .line 26
    invoke-virtual {v12}, Lcom/taobao/weex/WXSDKInstance;->getStreamNetworkHandler()Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    move-result-object v14

    if-eqz v14, :cond_71

    .line 27
    invoke-virtual {v12}, Lcom/taobao/weex/WXSDKInstance;->getStreamNetworkHandler()Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    move-result-object v12

    invoke-interface {v12, v3}, Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;->fetchLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_71

    move-object v3, v12

    :cond_71
    if-eqz v4, :cond_77

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 37
    :cond_77
    new-instance v12, Lcom/taobao/weex/http/Options$Builder;

    invoke-direct {v12}, Lcom/taobao/weex/http/Options$Builder;-><init>()V

    .line 38
    const-string v14, "GET"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ad

    .line 39
    const-string v15, "POST"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ad

    .line 40
    const-string v15, "PUT"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ad

    .line 41
    const-string v15, "DELETE"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ad

    .line 42
    const-string v15, "HEAD"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ad

    .line 43
    const-string v15, "PATCH"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ad

    move-object v4, v14

    .line 44
    :cond_ad
    invoke-virtual {v12, v4}, Lcom/taobao/weex/http/Options$Builder;->setMethod(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v3}, Lcom/taobao/weex/http/Options$Builder;->setUrl(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v6}, Lcom/taobao/weex/http/Options$Builder;->setBody(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v7}, Lcom/taobao/weex/http/Options$Builder;->setType(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v8}, Lcom/taobao/weex/http/Options$Builder;->setInputTypes(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v3

    .line 54
    invoke-virtual {v3, v9}, Lcom/taobao/weex/http/Options$Builder;->setTimeout(I)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v11}, Lcom/taobao/weex/http/Options$Builder;->setSslVerify(Z)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v3

    .line 56
    invoke-virtual {v3, v10}, Lcom/taobao/weex/http/Options$Builder;->setAndroidTlsConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v3

    .line 57
    invoke-virtual {v3, v1}, Lcom/taobao/weex/http/Options$Builder;->setFirstIpv4(Z)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v1

    .line 59
    invoke-direct {v0, v5, v1}, Lcom/taobao/weex/http/WXStreamModule;->extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V

    .line 60
    invoke-virtual {v1}, Lcom/taobao/weex/http/Options$Builder;->createOptions()Lcom/taobao/weex/http/Options;

    move-result-object v1

    .line 61
    new-instance v3, Lcom/taobao/weex/http/WXStreamModule$2;

    invoke-direct {v3, v0, v2, v1}, Lcom/taobao/weex/http/WXStreamModule$2;-><init>(Lcom/taobao/weex/http/WXStreamModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/Options;)V

    move-object/from16 v5, p5

    move-object v2, v3

    move-object v4, v13

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/http/WXStreamModule;->sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e7
    :goto_e7
    if-eqz v2, :cond_100

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "ok"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v1, "statusText"

    const-string v3, "ERR_INVALID_REQUEST"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface {v2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_100
    return-void
.end method

.method public fetchWithArrayBuffer(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 11
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    const-string v0, "ERR_INVALID_REQUEST"

    const-string/jumbo v1, "statusText"

    const-string v2, "ok"

    if-nez p1, :cond_1c

    if-eqz p3, :cond_81

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1c
    const-string v3, "@type"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6e

    const-string v4, "binary"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_6e

    .line 21
    :cond_31
    const-string v3, "base64"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_50

    if-eqz p3, :cond_81

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 26
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-interface {p3, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_50
    const-string v0, "inputType"

    invoke-virtual {p2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "body"

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6e
    :goto_6e
    move-object p1, p3

    if-eqz p1, :cond_81

    .line 38
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 39
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_81
    return-void
.end method

.method parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v0, :cond_9

    .line 2
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    if-ne p2, v0, :cond_3f

    if-eqz p1, :cond_3a

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_3a

    .line 7
    :cond_16
    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 8
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_34

    if-ge p2, v0, :cond_34

    if-gtz v0, :cond_2b

    goto :goto_34

    .line 13
    :cond_2b
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_34
    :goto_34
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    return-object p1

    .line 16
    :cond_3a
    :goto_3a
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :cond_3f
    return-object p1
.end method

.method public sendHttp(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "header"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 4
    const-string v3, "body"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    const-string/jumbo v4, "timeout"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 6
    const-string v5, "sslVerify"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v5

    .line 7
    const-string v6, "firstIpv4"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v6

    .line 8
    const-string/jumbo v7, "tls"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_39

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_39
    new-instance v7, Lcom/taobao/weex/http/Options$Builder;

    invoke-direct {v7}, Lcom/taobao/weex/http/Options$Builder;-><init>()V

    .line 12
    const-string v8, "GET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 13
    const-string v9, "POST"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 14
    const-string v9, "PUT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 15
    const-string v9, "DELETE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 16
    const-string v9, "HEAD"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 17
    const-string v9, "PATCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    move-object v0, v8

    .line 18
    :cond_6f
    invoke-virtual {v7, v0}, Lcom/taobao/weex/http/Options$Builder;->setMethod(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Lcom/taobao/weex/http/Options$Builder;->setUrl(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v3}, Lcom/taobao/weex/http/Options$Builder;->setBody(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v4}, Lcom/taobao/weex/http/Options$Builder;->setTimeout(I)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v5}, Lcom/taobao/weex/http/Options$Builder;->setSslVerify(Z)Lcom/taobao/weex/http/Options$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/taobao/weex/http/Options$Builder;->setAndroidTlsConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/http/Options$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v6}, Lcom/taobao/weex/http/Options$Builder;->setFirstIpv4(Z)Lcom/taobao/weex/http/Options$Builder;

    move-result-object p1

    .line 31
    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/http/WXStreamModule;->extractHeaders(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/http/Options$Builder;)V

    .line 32
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options$Builder;->createOptions()Lcom/taobao/weex/http/Options;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/taobao/weex/http/Options$Builder;->createOptions()Lcom/taobao/weex/http/Options;

    move-result-object v2

    new-instance v3, Lcom/taobao/weex/http/WXStreamModule$1;

    invoke-direct {v3, p0, p2, v0}, Lcom/taobao/weex/http/WXStreamModule$1;-><init>(Lcom/taobao/weex/http/WXStreamModule;Ljava/lang/String;Lcom/taobao/weex/http/Options;)V

    iget-object p1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 44
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p0

    .line 45
    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/http/WXStreamModule;->sendRequest(Lcom/taobao/weex/http/Options;Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.http.WXStreamModule.AnonymousClass1 (com.taobao.weex.http.WXStreamModule$1)
.class Lcom/taobao/weex/http/WXStreamModule$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/http/WXStreamModule;->sendHttp(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/http/WXStreamModule;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$options:Lcom/taobao/weex/http/Options;


# direct methods
.method constructor <init>(Lcom/taobao/weex/http/WXStreamModule;Ljava/lang/String;Lcom/taobao/weex/http/Options;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$options:Lcom/taobao/weex/http/Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v0, v0, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3b

    .line 2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/http/WXStreamModule$1;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v1, v1, Lcom/taobao/weex/common/WXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$callback:Ljava/lang/String;

    if-eqz p1, :cond_35

    .line 3
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-nez p1, :cond_1f

    goto :goto_35

    :cond_1f
    if-eqz p2, :cond_28

    .line 5
    const-string v3, "Content-Type"

    invoke-static {p2, v3}, Lcom/taobao/weex/http/WXStreamModule;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2a

    :cond_28
    const-string p2, ""

    :goto_2a
    iget-object v3, p0, Lcom/taobao/weex/http/WXStreamModule$1;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v3}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v3

    .line 6
    invoke-static {p1, p2, v3}, Lcom/taobao/weex/http/WXStreamModule;->readAsString([BLjava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/String;

    move-result-object p1

    goto :goto_38

    .line 7
    :cond_35
    :goto_35
    const-string/jumbo p1, "{}"

    .line 8
    :goto_38
    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

###### Class com.taobao.weex.http.WXStreamModule.AnonymousClass2 (com.taobao.weex.http.WXStreamModule$2)
.class Lcom/taobao/weex/http/WXStreamModule$2;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/http/WXStreamModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$options:Lcom/taobao/weex/http/Options;


# direct methods
.method constructor <init>(Lcom/taobao/weex/http/WXStreamModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/Options;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$2;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_ae

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "statusText"

    const-string/jumbo v2, "status"

    if-eqz p1, :cond_88

    .line 3
    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_88

    .line 12
    :cond_1c
    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc8

    if-lt v3, v2, :cond_33

    const/16 v2, 0x12b

    if-gt v3, v2, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 14
    :goto_34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ok"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    const-string v4, "data"

    if-nez v2, :cond_49

    .line 16
    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_49
    const-string v5, ""

    if-eqz p2, :cond_54

    .line 19
    const-string v6, "Content-Type"

    invoke-static {p2, v6}, Lcom/taobao/weex/http/WXStreamModule;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_55

    :cond_54
    move-object v6, v5

    :goto_55
    iget-object v7, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v7}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/taobao/weex/http/WXStreamModule;->readAsString([BLjava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/String;

    move-result-object v2

    .line 21
    :try_start_5f
    iget-object v6, p0, Lcom/taobao/weex/http/WXStreamModule$2;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v7, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v7}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/taobao/weex/http/WXStreamModule;->parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_5f .. :try_end_6e} :catch_6f

    goto :goto_7e

    :catch_6f
    move-exception v2

    .line 23
    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string/jumbo v2, "{\'err\':\'Data parse failed!\'}"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :goto_7e
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/weex/http/Status;->getStatusText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    :cond_88
    :goto_88
    const/4 v3, -0x1

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v2, "ERR_CONNECT_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    if-eqz p1, :cond_9f

    .line 32
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 34
    :cond_9f
    const-string p1, "response \u4e3a\u7a7a"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_a4
    const-string p1, "headers"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_ae
    return-void
.end method

###### Class com.taobao.weex.http.WXStreamModule.ResponseCallback (com.taobao.weex.http.WXStreamModule$ResponseCallback)
.class interface abstract Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/WXStreamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ResponseCallback"
.end annotation


# virtual methods
.method public abstract onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.taobao.weex.http.WXStreamModule.StreamHttpListener (com.taobao.weex.http.WXStreamModule$StreamHttpListener)
.class Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/WXStreamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamHttpListener"
.end annotation


# instance fields
.field private mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

.field private mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

.field private mRespHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

    .line 8
    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/WXStreamModule$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;-><init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "readyState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_8a

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 7
    :goto_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 8
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_40

    goto :goto_27

    .line 11
    :cond_40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "_"

    if-ne v1, v2, :cond_6e

    .line 12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_56

    goto :goto_5d

    :cond_56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :goto_5d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 14
    :cond_6e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_75

    goto :goto_7c

    :cond_75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :goto_7c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 19
    :cond_8a
    iget-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const-string v0, "headers"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mRespHeaders:Ljava/util/Map;

    .line 21
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_a1

    .line 22
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_a1
    return-void
.end method

.method public onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

    if-eqz v0, :cond_9

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mRespHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;->onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V

    .line 5
    :cond_9
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p1, :cond_1b

    .line 6
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz p1, :cond_1b

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1d

    :cond_1b
    const-string v0, "response data is NUll!"

    :goto_1d
    const-string p1, "WXStreamModule"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public onHttpResponseProgress(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "length"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_19

    .line 3
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public onHttpStart()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_28

    .line 2
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "readyState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .registers 2

    return-void
.end method
