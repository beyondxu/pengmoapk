###### Class io.dcloud.p.t0 (io.dcloud.p.t0)
.class public Lio/dcloud/p/t0;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;

.field private f:I

.field private g:Z

.field private h:I

.field private final i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lio/dcloud/p/t0;->f:I

    .line 30
    iput-boolean v0, p0, Lio/dcloud/p/t0;->g:Z

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lio/dcloud/p/t0;->h:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/t0;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;I)Lio/dcloud/p/t0;
    .registers 16

    .line 1
    const-string v0, "adpid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/p/t0;->a:Ljava/lang/String;

    .line 2
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/t0;->b:I

    .line 3
    const-string v0, "tto"

    const/16 v2, 0x4650

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/t0;->c:I

    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_21

    .line 5
    iput v2, p0, Lio/dcloud/p/t0;->c:I

    .line 6
    :cond_21
    const-string v0, "dsto"

    const/16 v2, 0x1388

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/t0;->d:I

    if-ge v0, v3, :cond_2f

    .line 8
    iput v2, p0, Lio/dcloud/p/t0;->d:I

    .line 9
    :cond_2f
    const-string v0, "sr"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/p/t0;->f:I

    .line 10
    const-string v0, "ord"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    iput-boolean v0, p0, Lio/dcloud/p/t0;->g:Z

    .line 11
    const-string v0, "ft"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 12
    const-string v6, "mt"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lio/dcloud/p/t0;->h:I

    .line 13
    const-string v7, "vadpid"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    const-string v8, "cfgs"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_178

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_178

    .line 16
    iget-object v8, p0, Lio/dcloud/p/t0;->e:Ljava/util/List;

    if-nez v8, :cond_75

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lio/dcloud/p/t0;->e:Ljava/util/List;

    :cond_75
    const/4 v8, 0x0

    .line 18
    :goto_76
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_178

    .line 19
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_174

    .line 21
    const-string v10, "sto"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8f

    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_91

    :cond_8f
    iget v10, p0, Lio/dcloud/p/t0;->d:I

    :goto_91
    if-ge v10, v3, :cond_95

    const/16 v10, 0x1388

    .line 24
    :cond_95
    new-instance v11, Lio/dcloud/p/v4$b;

    invoke-direct {v11}, Lio/dcloud/p/v4$b;-><init>()V

    .line 25
    const-string v12, "sid"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lio/dcloud/p/v4$b;->e(Ljava/lang/String;)Lio/dcloud/p/v4$b;

    move-result-object v11

    .line 26
    const-string v12, "cpm"

    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lio/dcloud/p/v4$b;->c(I)Lio/dcloud/p/v4$b;

    move-result-object v11

    .line 27
    const-string v12, "bdt"

    invoke-virtual {v9, v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v5, :cond_b8

    const/4 v12, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v12, 0x0

    :goto_b9
    invoke-virtual {v11, v12}, Lio/dcloud/p/v4$b;->c(Z)Lio/dcloud/p/v4$b;

    move-result-object v11

    .line 28
    const-string v12, "level"

    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lio/dcloud/p/v4$b;->f(I)Lio/dcloud/p/v4$b;

    move-result-object v11

    .line 29
    const-string v12, "m"

    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lio/dcloud/p/v4$b;->g(I)Lio/dcloud/p/v4$b;

    move-result-object v11

    .line 30
    const-string v12, "p"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lio/dcloud/p/v4$b;->c(Ljava/lang/String;)Lio/dcloud/p/v4$b;

    move-result-object v11

    .line 31
    const-string v12, "ss"

    invoke-virtual {v9, v12, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lio/dcloud/p/v4$b;->i(I)Lio/dcloud/p/v4$b;

    move-result-object v11

    .line 32
    invoke-virtual {v11, v10}, Lio/dcloud/p/v4$b;->j(I)Lio/dcloud/p/v4$b;

    move-result-object v10

    .line 33
    const-string v11, "w"

    invoke-virtual {v9, v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lio/dcloud/p/v4$b;->k(I)Lio/dcloud/p/v4$b;

    move-result-object v10

    .line 34
    invoke-virtual {v10, v0}, Lio/dcloud/p/v4$b;->d(I)Lio/dcloud/p/v4$b;

    move-result-object v10

    iget v11, p0, Lio/dcloud/p/t0;->b:I

    .line 35
    invoke-virtual {v10, v11}, Lio/dcloud/p/v4$b;->b(I)Lio/dcloud/p/v4$b;

    move-result-object v10

    .line 36
    const-string v11, "mrt"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/dcloud/p/v4$b;->a(Ljava/lang/String;)Lio/dcloud/p/v4$b;

    move-result-object v10

    .line 37
    const-string v11, "path"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/dcloud/p/v4$b;->b(Ljava/lang/String;)Lio/dcloud/p/v4$b;

    move-result-object v10

    .line 38
    invoke-virtual {v9, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lio/dcloud/p/v4$b;->h(I)Lio/dcloud/p/v4$b;

    move-result-object v10

    .line 39
    const-string v11, "end"

    invoke-virtual {v9, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v5, :cond_123

    const/4 v11, 0x1

    goto :goto_124

    :cond_123
    const/4 v11, 0x0

    :goto_124
    invoke-virtual {v10, v11}, Lio/dcloud/p/v4$b;->a(Z)Lio/dcloud/p/v4$b;

    move-result-object v10

    .line 40
    const-string v11, "params"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/dcloud/p/v4$b;->a(Lorg/json/JSONObject;)Lio/dcloud/p/v4$b;

    move-result-object v10

    .line 41
    const-string v11, "acpt"

    invoke-virtual {v9, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v10, v9}, Lio/dcloud/p/v4$b;->a(I)Lio/dcloud/p/v4$b;

    move-result-object v9

    iget v10, p0, Lio/dcloud/p/t0;->h:I

    .line 42
    invoke-virtual {v9, v10}, Lio/dcloud/p/v4$b;->e(I)Lio/dcloud/p/v4$b;

    move-result-object v9

    .line 43
    invoke-virtual {v9, v7}, Lio/dcloud/p/v4$b;->d(Ljava/lang/String;)Lio/dcloud/p/v4$b;

    move-result-object v9

    iget v10, p0, Lio/dcloud/p/t0;->b:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_14d

    const/4 v10, 0x1

    goto :goto_14e

    :cond_14d
    const/4 v10, 0x0

    .line 44
    :goto_14e
    invoke-virtual {v9, v10}, Lio/dcloud/p/v4$b;->b(Z)Lio/dcloud/p/v4$b;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Lio/dcloud/p/v4$b;->a()Lio/dcloud/p/v4;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Lio/dcloud/p/v4;->l()Ljava/lang/String;

    move-result-object v10

    const-string v11, "hw"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_166

    const/4 v10, 0x3

    if-ne p2, v10, :cond_166

    goto :goto_174

    .line 50
    :cond_166
    iget-object v10, p0, Lio/dcloud/p/t0;->i:Ljava/util/List;

    invoke-virtual {v9}, Lio/dcloud/p/v4;->l()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v10, p0, Lio/dcloud/p/t0;->e:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_174
    :goto_174
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_76

    :cond_178
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lio/dcloud/p/t0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/t0;->i:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/t0;->f:I

    return v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/p/t0;->e:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/t0;->c:I

    return v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/p/t0;->b:I

    return v0
.end method

.method public g()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/p/t0;->g:Z

    return v0
.end method
