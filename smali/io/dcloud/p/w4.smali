###### Class io.dcloud.p.w4 (io.dcloud.p.w4)
.class public Lio/dcloud/p/w4;
.super Lio/dcloud/p/v2;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONObject;

.field private l:Ljava/util/HashMap;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/dcloud/p/v2$c;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/p/v2;-><init>(Lio/dcloud/p/v2$c;Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/p/w4;->e:Ljava/util/concurrent/ExecutorService;

    .line 21
    const-string p1, ""

    iput-object p1, p0, Lio/dcloud/p/w4;->f:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/dcloud/p/w4;->g:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lio/dcloud/p/w4;->i:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/dcloud/p/w4;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/p/v2$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lio/dcloud/p/w4;-><init>(Lio/dcloud/p/v2$c;Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p5, p0, Lio/dcloud/p/w4;->i:Ljava/lang/String;

    .line 3
    iput-object p6, p0, Lio/dcloud/p/w4;->j:Ljava/lang/String;

    .line 5
    :try_start_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p2, "did"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/p/w4;->m:Ljava/lang/String;

    .line 7
    const-string p2, "adid"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/p/w4;->n:Ljava/lang/String;

    .line 8
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/p/w4;->g:Ljava/lang/String;

    .line 9
    const-string p2, "app"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/p/w4;->k:Lorg/json/JSONObject;

    .line 10
    const-string p3, "app_id"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/p/w4;->f:Ljava/lang/String;

    .line 11
    const-string p2, "tid"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/p/w4;->h:Ljava/lang/String;

    .line 12
    const-string p2, "header"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_6b

    .line 14
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/dcloud/p/w4;->l:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 16
    :goto_55
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 18
    iget-object p4, p0, Lio/dcloud/p/w4;->l:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_6a} :catch_6b

    goto :goto_55

    :catch_6b
    :cond_6b
    return-void
.end method

.method static synthetic a(Lio/dcloud/p/w4;Lio/dcloud/sdk/base/entry/AdData;)Lio/dcloud/sdk/base/entry/AdData;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/p/v2;->d:Lio/dcloud/sdk/base/entry/AdData;

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/p/w4;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/w4;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/p/w4;ILjava/lang/String;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/v2;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/p/w4;Lio/dcloud/sdk/base/entry/AdData;)Lio/dcloud/sdk/base/entry/AdData;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/p/v2;->d:Lio/dcloud/sdk/base/entry/AdData;

    return-object p1
.end method

.method static synthetic b(Lio/dcloud/p/w4;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/w4;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/p/w4;ILjava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/v2;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lio/dcloud/p/w4;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/v2;->a()V

    return-void
.end method

.method static synthetic c(Lio/dcloud/p/w4;ILjava/lang/String;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/p/v2;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lio/dcloud/p/w4;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/w4;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/p/w4;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/v2;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/p/w4;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/w4;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lio/dcloud/p/w4;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/w4;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lio/dcloud/p/w4;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/w4;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/p/w4;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/p/v2;->a()V

    return-void
.end method

.method static synthetic j(Lio/dcloud/p/w4;)Lio/dcloud/sdk/base/entry/AdData;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/v2;->d:Lio/dcloud/sdk/base/entry/AdData;

    return-object p0
.end method


# virtual methods
.method public c()V
    .registers 6

    const-string v0, "edata="

    .line 3
    iget-object v1, p0, Lio/dcloud/p/w4;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const v0, 0xea61

    .line 4
    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5730\u5740\u51fa\u9519"

    invoke-virtual {p0, v0, v1}, Lio/dcloud/p/v2;->a(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_13
    iget-object v1, p0, Lio/dcloud/p/w4;->k:Lorg/json/JSONObject;

    if-eqz v1, :cond_ae

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_1f

    goto/16 :goto_ae

    .line 11
    :cond_1f
    iget-object v1, p0, Lio/dcloud/p/v2;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 13
    :try_start_27
    iget-object v1, p0, Lio/dcloud/p/w4;->k:Lorg/json/JSONObject;

    const-string v2, "adp_id"

    iget-object v3, p0, Lio/dcloud/p/v2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_30} :catch_30

    .line 17
    :catch_30
    :cond_30
    invoke-virtual {p0}, Lio/dcloud/p/v2;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/p/n4;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 19
    :try_start_38
    const-string v2, "app"

    iget-object v3, p0, Lio/dcloud/p/w4;->k:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    nop

    .line 22
    :goto_41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lio/dcloud/p/w4;->i:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 25
    :try_start_4f
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/dcloud/p/w4;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v3, "method"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    const-string v4, "iv"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v1}, Lio/dcloud/p/g5;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 30
    invoke-static {v4, v3, v2}, Lio/dcloud/p/d;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    .line 31
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_74} :catch_a3

    .line 33
    :try_start_74
    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_7a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_74 .. :try_end_7a} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_a3

    .line 36
    :catch_7a
    :try_start_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_86} :catch_a3

    goto :goto_a3

    .line 40
    :cond_87
    iget-object v0, p0, Lio/dcloud/p/w4;->l:Ljava/util/HashMap;

    if-nez v0, :cond_92

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/w4;->l:Ljava/util/HashMap;

    .line 43
    :cond_92
    iget-object v0, p0, Lio/dcloud/p/w4;->l:Ljava/util/HashMap;

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 44
    iget-object v0, p0, Lio/dcloud/p/w4;->l:Ljava/util/HashMap;

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :catch_a3
    :cond_a3
    :goto_a3
    iget-object v0, p0, Lio/dcloud/p/w4;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/dcloud/p/w4$a;

    invoke-direct {v2, p0, v1}, Lio/dcloud/p/w4$a;-><init>(Lio/dcloud/p/w4;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_ae
    :goto_ae
    const v0, 0xea62

    .line 49
    const-string v1, "\u5e7f\u544a\u914d\u7f6e\u5f02\u5e38"

    invoke-virtual {p0, v0, v1}, Lio/dcloud/p/v2;->a(ILjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.p.w4.a (io.dcloud.p.w4$a)
.class Lio/dcloud/p/w4$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/w4;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/p/w4;


# direct methods
.method constructor <init>(Lio/dcloud/p/w4;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    iput-object p2, p0, Lio/dcloud/p/w4$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v2}, Lio/dcloud/p/w4;->a(Lio/dcloud/p/w4;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/p/w4$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v4}, Lio/dcloud/p/w4;->b(Lio/dcloud/p/w4;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 6
    :try_start_1c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v1, Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {v1}, Lio/dcloud/sdk/base/entry/AdData;-><init>()V

    .line 10
    iget-object v3, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-virtual {v3}, Lio/dcloud/p/v2;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/dcloud/sdk/base/entry/AdData;->c(Landroid/content/Context;)V

    .line 11
    const-string v3, "appid"

    iget-object v4, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v4}, Lio/dcloud/p/w4;->d(Lio/dcloud/p/w4;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v3, "adpid"

    iget-object v4, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v4}, Lio/dcloud/p/w4;->e(Lio/dcloud/p/w4;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v3, "tid"

    iget-object v4, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v4}, Lio/dcloud/p/w4;->f(Lio/dcloud/p/w4;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v3, "did"

    iget-object v4, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v4}, Lio/dcloud/p/w4;->g(Lio/dcloud/p/w4;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v3, "adid"

    iget-object v4, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v4}, Lio/dcloud/p/w4;->h(Lio/dcloud/p/w4;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance v3, Lio/dcloud/p/w4$a$a;

    invoke-direct {v3, p0, v1}, Lio/dcloud/p/w4$a$a;-><init>(Lio/dcloud/p/w4$a;Lio/dcloud/sdk/base/entry/AdData;)V

    invoke-virtual {v1, v2, v3, v0}, Lio/dcloud/sdk/base/entry/AdData;->a(Lorg/json/JSONObject;Lio/dcloud/sdk/base/entry/AdData$e;Z)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_6e} :catch_6f

    return-void

    :catch_6f
    move-exception v0

    .line 50
    iget-object v1, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v2, 0xea66

    invoke-static {v1, v2, v0}, Lio/dcloud/p/w4;->b(Lio/dcloud/p/w4;ILjava/lang/String;)V

    return-void

    .line 54
    :cond_7d
    iget-object v0, p0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v1, v1, v3

    if-nez v1, :cond_8d

    const-string v1, "data null"

    :cond_8d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xea63

    invoke-static {v0, v2, v1}, Lio/dcloud/p/w4;->c(Lio/dcloud/p/w4;ILjava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.p.w4.a.C0073a (io.dcloud.p.w4$a$a)
.class Lio/dcloud/p/w4$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/sdk/base/entry/AdData$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/w4$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/entry/AdData;

.field final synthetic b:Lio/dcloud/p/w4$a;


# direct methods
.method constructor <init>(Lio/dcloud/p/w4$a;Lio/dcloud/sdk/base/entry/AdData;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iput-object p2, p0, Lio/dcloud/p/w4$a$a;->a:Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v0, v0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    iget-object v1, p0, Lio/dcloud/p/w4$a$a;->a:Lio/dcloud/sdk/base/entry/AdData;

    invoke-static {v0, v1}, Lio/dcloud/p/w4;->b(Lio/dcloud/p/w4;Lio/dcloud/sdk/base/entry/AdData;)Lio/dcloud/sdk/base/entry/AdData;

    .line 2
    iget-object v0, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v0, v0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v0}, Lio/dcloud/p/w4;->i(Lio/dcloud/p/w4;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    .line 3
    invoke-static {}, Lio/dcloud/p/l4;->a()Lio/dcloud/p/l4;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v1, v1, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-virtual {v1}, Lio/dcloud/p/v2;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/p/l4;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 5
    :try_start_10
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/base/entry/a;

    .line 6
    invoke-virtual {v1}, Lio/dcloud/sdk/base/entry/a;->b()Z

    move-result v2

    if-nez v2, :cond_83

    .line 7
    new-instance v2, Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {v2}, Lio/dcloud/sdk/base/entry/AdData;-><init>()V

    .line 8
    iget-object v3, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v3, v3, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-virtual {v3}, Lio/dcloud/p/v2;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lio/dcloud/sdk/base/entry/a;->a(Landroid/content/Context;Lio/dcloud/sdk/base/entry/AdData;)V

    .line 9
    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->n()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->m()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v3, v3, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v3}, Lio/dcloud/p/w4;->d(Lio/dcloud/p/w4;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v3, v3, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v3}, Lio/dcloud/p/w4;->f(Lio/dcloud/p/w4;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 10
    iget-object v1, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v1, v1, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v1}, Lio/dcloud/p/w4;->j(Lio/dcloud/p/w4;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object v1

    if-nez v1, :cond_18

    .line 11
    iget-object v0, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v0, v0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v0, v2}, Lio/dcloud/p/w4;->a(Lio/dcloud/p/w4;Lio/dcloud/sdk/base/entry/AdData;)Lio/dcloud/sdk/base/entry/AdData;

    .line 12
    iget-object v0, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v0, v0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v0}, Lio/dcloud/p/w4;->c(Lio/dcloud/p/w4;)V

    return-void

    .line 17
    :cond_83
    invoke-static {}, Lio/dcloud/p/l4;->a()Lio/dcloud/p/l4;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v3, v3, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-virtual {v3}, Lio/dcloud/p/v2;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lio/dcloud/sdk/base/entry/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/dcloud/p/l4;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_96} :catch_97

    goto :goto_18

    .line 22
    :catch_97
    :cond_97
    iget-object v0, p0, Lio/dcloud/p/w4$a$a;->b:Lio/dcloud/p/w4$a;

    iget-object v0, v0, Lio/dcloud/p/w4$a;->b:Lio/dcloud/p/w4;

    invoke-static {v0, p1, p2}, Lio/dcloud/p/w4;->a(Lio/dcloud/p/w4;ILjava/lang/String;)V

    return-void
.end method
