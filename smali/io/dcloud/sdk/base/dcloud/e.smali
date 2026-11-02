###### Class io.dcloud.sdk.base.dcloud.e (io.dcloud.sdk.base.dcloud.e)
.class public abstract Lio/dcloud/sdk/base/dcloud/e;
.super Lio/dcloud/sdk/base/dcloud/ADHandler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method static a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 14
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 16
    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 17
    invoke-static {p0, p3, p1}, Lio/dcloud/sdk/base/dcloud/e;->a(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    :cond_d
    return-void
.end method

.method static a(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V
    .registers 7

    if-eqz p0, :cond_4e

    const/4 p1, 0x0

    .line 1
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_4e

    .line 2
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 6
    const-string v2, "ua"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string v2, "ua-webview"

    invoke-static {v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 13
    :goto_3f
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v2

    new-instance v3, Lio/dcloud/sdk/base/dcloud/e$a;

    invoke-direct {v3, v0, v1}, Lio/dcloud/sdk/base/dcloud/e$a;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4e
    return-void
.end method

.method static d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    const-string v1, "clktracker"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    invoke-static {v0, v1, p1}, Lio/dcloud/sdk/base/dcloud/e;->a(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V

    .line 6
    :cond_f
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.e.a (io.dcloud.sdk.base.dcloud.e$a)
.class Lio/dcloud/sdk/base/dcloud/e$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/e;->a(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/e$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/e$a;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/e$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/e$a;->b:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/util/HashMap;Z)[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
