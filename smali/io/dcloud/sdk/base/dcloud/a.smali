###### Class io.dcloud.sdk.base.dcloud.a (io.dcloud.sdk.base.dcloud.a)
.class abstract Lio/dcloud/sdk/base/dcloud/a;
.super Lio/dcloud/sdk/base/dcloud/ADHandler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method static synthetic a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 1
    invoke-static/range {p0 .. p6}, Lio/dcloud/sdk/base/dcloud/a;->b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object p3

    new-instance p4, Lio/dcloud/sdk/base/dcloud/a$c;

    invoke-direct {p4, p2, p1, p0}, Lio/dcloud/sdk/base/dcloud/a$c;-><init>(Lorg/json/JSONArray;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/p/v1;Ljava/lang/String;Z)V
    .registers 8

    .line 2
    invoke-static/range {p0 .. p7}, Lio/dcloud/sdk/base/dcloud/a;->b(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/p/v1;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/p/v1;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_63

    move-object/from16 v3, p0

    .line 6
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 7
    const-string v5, "template_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 9
    const-string v6, "ua"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2e

    .line 10
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "webview"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v16, 0x1

    goto :goto_30

    :cond_2e
    const/16 v16, 0x0

    .line 15
    :goto_30
    :try_start_30
    const-string v6, "u-a"

    const-string v7, "ua-webview"

    invoke-static {v7}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    nop

    .line 18
    :goto_3d
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    .line 19
    const-string v6, "http_method"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 20
    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-ne v5, v8, :cond_57

    const/4 v13, 0x1

    goto :goto_58

    :cond_57
    const/4 v13, 0x0

    :goto_58
    const/4 v12, 0x2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 21
    invoke-static/range {v9 .. v16}, Lio/dcloud/sdk/base/dcloud/a;->b(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/p/v1;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_63
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0, p2}, Lio/dcloud/sdk/base/dcloud/a;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/p/v1;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    return-void
.end method

.method static b(Ljava/lang/String;)V
    .registers 2

    .line 2
    const-string v0, "wanka"

    invoke-static {v0, p0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/p/v1;Ljava/lang/String;Z)V
    .registers 11

    add-int/lit8 p3, p3, -0x1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleTrackers_wanka template = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; t_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; tagMsg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ";  url="

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lio/dcloud/sdk/base/dcloud/a;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    move p6, p3

    move-object p3, p0

    new-instance p0, Lio/dcloud/sdk/base/dcloud/a$d;

    move v2, p4

    move-object p4, p1

    move p1, p7

    move-object p7, p5

    move p5, v2

    invoke-direct/range {p0 .. p7}, Lio/dcloud/sdk/base/dcloud/a$d;-><init>(ZILjava/lang/String;Ljava/lang/String;ZILio/dcloud/p/v1;)V

    invoke-virtual {v0, p0}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "template"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    const-string v3, "clktrackers"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4d

    .line 4
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    goto/16 :goto_ca

    .line 7
    :cond_24
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 10
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lio/dcloud/sdk/base/dcloud/a$a;

    invoke-direct {v2, p1, p0, p2}, Lio/dcloud/sdk/base/dcloud/a$a;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/sdk/base/dcloud/a;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/p/v1;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_3f
    const-string v2, "url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 32
    iget-object v1, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p2}, Lio/dcloud/sdk/base/dcloud/a;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_4d
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 37
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lio/dcloud/sdk/base/dcloud/a;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 40
    :cond_5e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 41
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b5

    invoke-static {p0, v0}, Lio/dcloud/p/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 43
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result p2

    if-eqz p2, :cond_81

    goto :goto_ca

    .line 47
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "dplk"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v0, 0x10000

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_ca

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_af
    .catch Ljava/net/URISyntaxException; {:try_start_81 .. :try_end_af} :catch_b0

    return-void

    :catch_b0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 66
    :cond_b5
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/base/dcloud/a$b;

    invoke-direct {v1, p1, p0, p2}, Lio/dcloud/sdk/base/dcloud/a$b;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result p1

    if-nez p1, :cond_ca

    .line 75
    invoke-static {p0}, Lio/dcloud/p/c;->a(Landroid/content/Context;)V

    :cond_ca
    :goto_ca
    return-void

    .line 79
    :cond_cb
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void
.end method

.method static e(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e()Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "dplktrackers"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 3
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/a;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method static f(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->e()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 3
    const-string p2, "imptrackers"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/a;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.a.C0074a (io.dcloud.sdk.base.dcloud.a$a)
.class Lio/dcloud/sdk/base/dcloud/a$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/v1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/a;->d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/a$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/a$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/a$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    check-cast p2, Lorg/json/JSONObject;

    .line 2
    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    const-string p2, "dstlink"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string p2, "clickid"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/a$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "tid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    :try_start_20
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/a$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "click_id"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    move-exception v0

    move-object p1, v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :goto_31
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/a$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v3, v1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lio/dcloud/sdk/base/dcloud/a;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/a$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result p1

    if-nez p1, :cond_4d

    .line 14
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/a$a;->b:Landroid/content/Context;

    invoke-static {p1}, Lio/dcloud/p/c;->a(Landroid/content/Context;)V

    :cond_4d
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.sdk.base.dcloud.a.b (io.dcloud.sdk.base.dcloud.a$b)
.class Lio/dcloud/sdk/base/dcloud/a$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/a;->d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/a$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/a$b;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/a$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/a$b;->b:Landroid/content/Context;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/a$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v5, v3, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/sdk/base/dcloud/a$b;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lio/dcloud/sdk/base/dcloud/a;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.a.c (io.dcloud.sdk.base.dcloud.a$c)
.class Lio/dcloud/sdk/base/dcloud/a$c;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/a;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/a$c;->a:Lorg/json/JSONArray;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/a$c;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/a$c;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const-string v1, "ua"

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$c;->a:Lorg/json/JSONArray;

    if-eqz v0, :cond_81

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_8
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$c;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_81

    .line 4
    :try_start_10
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$c;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    const-string v4, "template_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 6
    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/a$c;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v5}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->c()Lorg/json/JSONObject;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_37

    .line 9
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "webview"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v11, 0x1

    goto :goto_38

    :cond_37
    const/4 v11, 0x0

    .line 13
    :goto_38
    const-string v6, "u-a"

    const-string v8, "ua-webview"

    invoke-static {v8}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v6, "url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 15
    const-string v6, "http_method"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 16
    const-string v8, "content"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v4, v7, :cond_6f

    .line 18
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$c;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->d()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 19
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$c;->c:Landroid/content/Context;

    invoke-static {v0, v5}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7e

    .line 21
    :cond_69
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$c;->c:Landroid/content/Context;

    invoke-static {v0, v5}, Lio/dcloud/p/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7e

    .line 24
    :cond_6f
    const-string v10, "clktrackers"

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v5

    move-object v5, v0

    invoke-static/range {v4 .. v11}, Lio/dcloud/sdk/base/dcloud/a;->a(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/p/v1;Ljava/lang/String;Z)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_81
    return-void
.end method

###### Class io.dcloud.sdk.base.dcloud.a.d (io.dcloud.sdk.base.dcloud.a$d)
.class Lio/dcloud/sdk/base/dcloud/a$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/a;->b(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/p/v1;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Lio/dcloud/p/v1;


# direct methods
.method constructor <init>(ZILjava/lang/String;Ljava/lang/String;ZILio/dcloud/p/v1;)V
    .registers 8

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/base/dcloud/a$d;->a:Z

    iput p2, p0, Lio/dcloud/sdk/base/dcloud/a$d;->b:I

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/a$d;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/a$d;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lio/dcloud/sdk/base/dcloud/a$d;->e:Z

    iput p6, p0, Lio/dcloud/sdk/base/dcloud/a$d;->f:I

    iput-object p7, p0, Lio/dcloud/sdk/base/dcloud/a$d;->g:Lio/dcloud/p/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const-string v0, "handleTrackers_wanka Runnable Error url="

    .line 1
    iget-boolean v1, p0, Lio/dcloud/sdk/base/dcloud/a$d;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string v3, "ua-webview"

    invoke-static {v3}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_18
    move-object v1, v2

    .line 5
    :goto_19
    iget v3, p0, Lio/dcloud/sdk/base/dcloud/a$d;->b:I

    const/4 v4, 0x1

    if-nez v3, :cond_27

    .line 7
    :try_start_1e
    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/a$d;->c:Ljava/lang/String;

    invoke-static {v3, v1, v4}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_31

    :catch_25
    nop

    goto :goto_31

    :cond_27
    if-ne v3, v4, :cond_31

    .line 11
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/a$d;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/a$d;->d:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object v2

    .line 13
    :cond_31
    :goto_31
    iget-boolean v3, p0, Lio/dcloud/sdk/base/dcloud/a$d;->e:Z

    if-eqz v3, :cond_8c

    if-eqz v2, :cond_8c

    .line 15
    :try_start_37
    new-instance v3, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v2, "ret"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_80

    .line 17
    const-string v2, "msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";msg="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/sdk/base/dcloud/a;->b(Ljava/lang/String;)V

    .line 19
    iget v8, p0, Lio/dcloud/sdk/base/dcloud/a$d;->f:I

    if-lez v8, :cond_7a

    .line 20
    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/a$d;->c:Ljava/lang/String;

    iget v7, p0, Lio/dcloud/sdk/base/dcloud/a$d;->b:I

    iget-boolean v9, p0, Lio/dcloud/sdk/base/dcloud/a$d;->e:Z

    iget-object v10, p0, Lio/dcloud/sdk/base/dcloud/a$d;->g:Lio/dcloud/p/v1;

    iget-boolean v12, p0, Lio/dcloud/sdk/base/dcloud/a$d;->a:Z

    const/4 v11, 0x0

    invoke-static/range {v5 .. v12}, Lio/dcloud/sdk/base/dcloud/a;->a(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/p/v1;Ljava/lang/String;Z)V

    .line 22
    :cond_7a
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    goto :goto_8c

    .line 23
    :cond_80
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/a$d;->g:Lio/dcloud/p/v1;

    if-eqz v0, :cond_8c

    .line 24
    invoke-interface {v0, v4, v3}, Lio/dcloud/p/v1;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8c
    :goto_8c
    return-void
.end method
