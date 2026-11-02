###### Class com.taobao.weex.http.Options (com.taobao.weex.http.Options)
.class Lcom/taobao/weex/http/Options;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/http/Options$Type;,
        Lcom/taobao/weex/http/Options$Builder;
    }
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputType:Ljava/lang/String;

.field private isFirstIpv4:Z

.field private method:Ljava/lang/String;

.field private sslVerify:Z

.field private timeout:I

.field private tlsConfig:Lcom/alibaba/fastjson/JSONObject;

.field private type:Lcom/taobao/weex/http/Options$Type;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/Options$Type;",
            "I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    const v0, 0xea60

    .line 4
    iput v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 6
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    .line 15
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    .line 18
    iput-object p4, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    if-nez p6, :cond_1e

    const p6, 0xea60

    .line 23
    :cond_1e
    iput p6, p0, Lcom/taobao/weex/http/Options;->timeout:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/http/Options$Type;",
            "IZZ)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    const v0, 0xea60

    .line 26
    iput v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 28
    iput-boolean v1, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    .line 56
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    .line 59
    iput-object p4, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    if-nez p6, :cond_1e

    const p6, 0xea60

    .line 64
    :cond_1e
    iput p6, p0, Lcom/taobao/weex/http/Options;->timeout:I

    .line 65
    iput-boolean p7, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    .line 66
    iput-boolean p8, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZLcom/taobao/weex/http/Options$1;)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/taobao/weex/http/Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZ)V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->inputType:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getSslVerify()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/http/Options;->sslVerify:Z

    return v0
.end method

.method public getTimeout()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taobao/weex/http/Options;->timeout:I

    return v0
.end method

.method public getTlsConfig()Lcom/alibaba/fastjson/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->tlsConfig:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getType()Lcom/taobao/weex/http/Options$Type;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->type:Lcom/taobao/weex/http/Options$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/Options;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstIpv4()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/taobao/weex/http/Options;->isFirstIpv4:Z

    return v0
.end method

.method public setInputType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->inputType:Ljava/lang/String;

    return-void
.end method

.method public setTlsConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/Options;->tlsConfig:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

###### Class com.taobao.weex.http.Options.AnonymousClass1 (com.taobao.weex.http.Options$1)
.class synthetic Lcom/taobao/weex/http/Options$1;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.taobao.weex.http.Options.Builder (com.taobao.weex.http.Options$Builder)
.class public Lcom/taobao/weex/http/Options$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private androidTLSConfig:Lcom/alibaba/fastjson/JSONObject;

.field private body:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputType:Ljava/lang/String;

.field private isFirstIpv4:Z

.field private method:Ljava/lang/String;

.field private sslVerify:Z

.field private timeout:I

.field private type:Lcom/taobao/weex/http/Options$Type;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/http/Options$Builder;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createOptions()Lcom/taobao/weex/http/Options;
    .registers 11

    .line 1
    new-instance v0, Lcom/taobao/weex/http/Options;

    iget-object v1, p0, Lcom/taobao/weex/http/Options$Builder;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/http/Options$Builder;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/http/Options$Builder;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/taobao/weex/http/Options$Builder;->body:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    iget v6, p0, Lcom/taobao/weex/http/Options$Builder;->timeout:I

    iget-boolean v7, p0, Lcom/taobao/weex/http/Options$Builder;->sslVerify:Z

    iget-boolean v8, p0, Lcom/taobao/weex/http/Options$Builder;->isFirstIpv4:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/taobao/weex/http/Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;IZZLcom/taobao/weex/http/Options$1;)V

    .line 2
    iget-object v1, p0, Lcom/taobao/weex/http/Options$Builder;->inputType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/http/Options;->setInputType(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/taobao/weex/http/Options$Builder;->androidTLSConfig:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/http/Options;->setTlsConfig(Lcom/alibaba/fastjson/JSONObject;)V

    return-object v0
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taobao/weex/http/Options$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAndroidTlsConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->androidTLSConfig:Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->body:Ljava/lang/String;

    return-object p0
.end method

.method public setFirstIpv4(Z)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/http/Options$Builder;->isFirstIpv4:Z

    return-object p0
.end method

.method public setInputTypes(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->inputType:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setSslVerify(Z)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/taobao/weex/http/Options$Builder;->sslVerify:Z

    return-object p0
.end method

.method public setTimeout(I)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/taobao/weex/http/Options$Builder;->timeout:I

    return-object p0
.end method

.method public setType(Lcom/taobao/weex/http/Options$Type;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 4

    .line 1
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2
    iput-object v0, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    return-object p0

    .line 3
    :cond_f
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4
    iput-object v0, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    return-object p0

    .line 5
    :cond_1e
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 6
    iput-object v0, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    return-object p0

    .line 8
    :cond_2d
    sget-object p1, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->type:Lcom/taobao/weex/http/Options$Type;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taobao/weex/http/Options$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

###### Class com.taobao.weex.http.Options.Type (com.taobao.weex.http.Options$Type)
.class public final enum Lcom/taobao/weex/http/Options$Type;
.super Ljava/lang/Enum;
.source "r8-map-id-b4716a25f9920722ba6f2d7f7c6f40e43a654927e8ebe1c489894a7bc6a88ab4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/http/Options$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/http/Options$Type;

.field public static final enum base64:Lcom/taobao/weex/http/Options$Type;

.field public static final enum json:Lcom/taobao/weex/http/Options$Type;

.field public static final enum jsonp:Lcom/taobao/weex/http/Options$Type;

.field public static final enum text:Lcom/taobao/weex/http/Options$Type;


# direct methods
.method private static synthetic $values()[Lcom/taobao/weex/http/Options$Type;
    .registers 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/taobao/weex/http/Options$Type;

    sget-object v1, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/taobao/weex/http/Options$Type;

    const-string v1, "json"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/http/Options$Type;->json:Lcom/taobao/weex/http/Options$Type;

    new-instance v0, Lcom/taobao/weex/http/Options$Type;

    const-string/jumbo v1, "text"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/http/Options$Type;->text:Lcom/taobao/weex/http/Options$Type;

    new-instance v0, Lcom/taobao/weex/http/Options$Type;

    const-string v1, "jsonp"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/http/Options$Type;->jsonp:Lcom/taobao/weex/http/Options$Type;

    new-instance v0, Lcom/taobao/weex/http/Options$Type;

    const-string v1, "base64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/http/Options$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/http/Options$Type;->base64:Lcom/taobao/weex/http/Options$Type;

    .line 2
    invoke-static {}, Lcom/taobao/weex/http/Options$Type;->$values()[Lcom/taobao/weex/http/Options$Type;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/http/Options$Type;->$VALUES:[Lcom/taobao/weex/http/Options$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/http/Options$Type;
    .registers 2

    .line 1
    const-class v0, Lcom/taobao/weex/http/Options$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/http/Options$Type;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/http/Options$Type;
    .registers 1

    .line 1
    sget-object v0, Lcom/taobao/weex/http/Options$Type;->$VALUES:[Lcom/taobao/weex/http/Options$Type;

    invoke-virtual {v0}, [Lcom/taobao/weex/http/Options$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/http/Options$Type;

    return-object v0
.end method
