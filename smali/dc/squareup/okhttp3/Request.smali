###### Class dc.squareup.okhttp3.Request (dc.squareup.okhttp3.Request)
.class public final Ldc/squareup/okhttp3/Request;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field final body:Ldc/squareup/okhttp3/RequestBody;

.field private volatile cacheControl:Ldc/squareup/okhttp3/CacheControl;

.field final headers:Ldc/squareup/okhttp3/Headers;

.field final method:Ljava/lang/String;

.field final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final url:Ldc/squareup/okhttp3/HttpUrl;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Request$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ldc/squareup/okhttp3/Request$Builder;->url:Ldc/squareup/okhttp3/HttpUrl;

    iput-object v0, p0, Ldc/squareup/okhttp3/Request;->url:Ldc/squareup/okhttp3/HttpUrl;

    .line 3
    iget-object v0, p1, Ldc/squareup/okhttp3/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Ldc/squareup/okhttp3/Request;->method:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Ldc/squareup/okhttp3/Request$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Request;->headers:Ldc/squareup/okhttp3/Headers;

    .line 5
    iget-object v0, p1, Ldc/squareup/okhttp3/Request$Builder;->body:Ldc/squareup/okhttp3/RequestBody;

    iput-object v0, p0, Ldc/squareup/okhttp3/Request;->body:Ldc/squareup/okhttp3/RequestBody;

    .line 6
    iget-object p1, p1, Ldc/squareup/okhttp3/Request$Builder;->tags:Ljava/util/Map;

    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/Request;->tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public body()Ldc/squareup/okhttp3/RequestBody;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->body:Ldc/squareup/okhttp3/RequestBody;

    return-object v0
.end method

.method public cacheControl()Ldc/squareup/okhttp3/CacheControl;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->cacheControl:Ldc/squareup/okhttp3/CacheControl;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->headers:Ldc/squareup/okhttp3/Headers;

    invoke-static {v0}, Ldc/squareup/okhttp3/CacheControl;->parse(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Request;->cacheControl:Ldc/squareup/okhttp3/CacheControl;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->headers:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers()Ldc/squareup/okhttp3/Headers;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->headers:Ldc/squareup/okhttp3/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->headers:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isHttps()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->url:Ldc/squareup/okhttp3/HttpUrl;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Ldc/squareup/okhttp3/Request$Builder;
    .registers 2

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/Request$Builder;-><init>(Ldc/squareup/okhttp3/Request;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .registers 2

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldc/squareup/okhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/Request;->url:Ldc/squareup/okhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/Request;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Ldc/squareup/okhttp3/HttpUrl;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request;->url:Ldc/squareup/okhttp3/HttpUrl;

    return-object v0
.end method

###### Class dc.squareup.okhttp3.Request.Builder (dc.squareup.okhttp3.Request$Builder)
.class public Ldc/squareup/okhttp3/Request$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Ldc/squareup/okhttp3/RequestBody;

.field headers:Ldc/squareup/okhttp3/Headers$Builder;

.field method:Ljava/lang/String;

.field tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field url:Ldc/squareup/okhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->tags:Ljava/util/Map;

    .line 5
    const-string v0, "GET"

    iput-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 6
    new-instance v0, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/Request;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->tags:Ljava/util/Map;

    .line 16
    iget-object v1, p1, Ldc/squareup/okhttp3/Request;->url:Ldc/squareup/okhttp3/HttpUrl;

    iput-object v1, p0, Ldc/squareup/okhttp3/Request$Builder;->url:Ldc/squareup/okhttp3/HttpUrl;

    .line 17
    iget-object v1, p1, Ldc/squareup/okhttp3/Request;->method:Ljava/lang/String;

    iput-object v1, p0, Ldc/squareup/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 18
    iget-object v1, p1, Ldc/squareup/okhttp3/Request;->body:Ldc/squareup/okhttp3/RequestBody;

    iput-object v1, p0, Ldc/squareup/okhttp3/Request$Builder;->body:Ldc/squareup/okhttp3/RequestBody;

    .line 19
    iget-object v1, p1, Ldc/squareup/okhttp3/Request;->tags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_23

    .line 21
    :cond_1c
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Ldc/squareup/okhttp3/Request;->tags:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_23
    iput-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->tags:Ljava/util/Map;

    .line 22
    iget-object p1, p1, Ldc/squareup/okhttp3/Request;->headers:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->newBuilder()Ldc/squareup/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/Request$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public build()Ldc/squareup/okhttp3/Request;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->url:Ldc/squareup/okhttp3/HttpUrl;

    if-eqz v0, :cond_a

    .line 2
    new-instance v0, Ldc/squareup/okhttp3/Request;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/Request;-><init>(Ldc/squareup/okhttp3/Request$Builder;)V

    return-object v0

    .line 3
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheControl(Ldc/squareup/okhttp3/CacheControl;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1}, Ldc/squareup/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 3
    :cond_11
    invoke-virtual {p0, v1, p1}, Ldc/squareup/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public delete()Ldc/squareup/okhttp3/Request$Builder;
    .registers 2

    .line 2
    sget-object v0, Ldc/squareup/okhttp3/internal/Util;->EMPTY_REQUEST:Ldc/squareup/okhttp3/RequestBody;

    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/Request$Builder;->delete(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    .line 1
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public get()Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    .line 1
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    .line 1
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->newBuilder()Ldc/squareup/okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/Request$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 5

    if-eqz p1, :cond_57

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "method "

    if-eqz p2, :cond_2a

    .line 2
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2a

    .line 3
    :cond_13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2a
    :goto_2a
    if-nez p2, :cond_4a

    .line 5
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_4a

    .line 6
    :cond_33
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_4a
    :goto_4a
    iput-object p1, p0, Ldc/squareup/okhttp3/Request$Builder;->method:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Ldc/squareup/okhttp3/Request$Builder;->body:Ldc/squareup/okhttp3/RequestBody;

    return-object p0

    .line 10
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_57
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    .line 1
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public post(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    .line 1
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    .line 1
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->headers:Ldc/squareup/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public tag(Ljava/lang/Class;Ljava/lang/Object;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Ldc/squareup/okhttp3/Request$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_23

    if-nez p2, :cond_a

    .line 2
    iget-object p2, p0, Ldc/squareup/okhttp3/Request$Builder;->tags:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_a
    iget-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->tags:Ljava/util/Map;

    .line 5
    :cond_19
    iget-object v0, p0, Ldc/squareup/okhttp3/Request$Builder;->tags:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 6
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tag(Ljava/lang/Object;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public url(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Request$Builder;->url:Ldc/squareup/okhttp3/HttpUrl;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 8

    if-eqz p1, :cond_4f

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    const-string/jumbo v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_24
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    const-string/jumbo v3, "wss:"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_45
    move-object p1, v0

    .line 9
    :goto_46
    invoke-static {p1}, Ldc/squareup/okhttp3/HttpUrl;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public url(Ljava/net/URL;)Ldc/squareup/okhttp3/Request$Builder;
    .registers 3

    if-eqz p1, :cond_f

    .line 11
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okhttp3/HttpUrl;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 12
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
