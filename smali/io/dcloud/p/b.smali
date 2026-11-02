###### Class io.dcloud.p.b (io.dcloud.p.b)
.class public Lio/dcloud/p/b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static j:Lio/dcloud/p/b;


# instance fields
.field private volatile a:Landroid/content/Context;

.field private b:Z

.field private c:Lorg/json/JSONObject;

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;

.field private g:Lorg/json/JSONObject;

.field private h:Lorg/json/JSONObject;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/p/b;->b:Z

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    .line 20
    new-instance v0, Lio/dcloud/p/b$a;

    invoke-direct {v0, p0}, Lio/dcloud/p/b$a;-><init>(Lio/dcloud/p/b;)V

    iput-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    .line 21
    sget-object v0, Lio/dcloud/p/b;->j:Lio/dcloud/p/b;

    if-nez v0, :cond_3c

    return-void

    .line 22
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x3

    .line 264
    invoke-static {v0}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    if-nez v0, :cond_12

    .line 266
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 269
    :cond_12
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    .line 271
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 275
    :cond_24
    :try_start_24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 276
    const-string v1, "da"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 277
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v7

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_46} :catch_47

    return-object p1

    :catch_47
    return-object v2
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 9

    const/4 v0, 0x3

    .line 281
    invoke-static {v0}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 283
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 286
    :cond_11
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    .line 288
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 292
    :cond_23
    :try_start_23
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 293
    const-string v1, "dah"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 294
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3f} :catch_40

    return-object p1

    :catch_40
    return-object v2
.end method

.method private a()V
    .registers 36

    move-object/from16 v0, p0

    .line 33
    invoke-virtual {v0}, Lio/dcloud/p/b;->n()Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-static {}, Lio/dcloud/p/r4;->a()Ljava/util/List;

    move-result-object v2

    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "csj"

    const/4 v6, 0x1

    if-eqz v3, :cond_3a

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_3a

    :cond_35
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_52

    .line 40
    :cond_3a
    :goto_3a
    invoke-direct {v0}, Lio/dcloud/p/b;->d()Ljava/util/Map;

    move-result-object v3

    .line 41
    const-string v7, "app_id"

    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 42
    const-string v8, "unknow"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 43
    const-string v9, "UNIAD_CSJ_APPID"

    invoke-direct {v0, v9, v4}, Lio/dcloud/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 45
    :goto_52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, "gdt"

    const/4 v12, 0x0

    if-eqz v10, :cond_6f

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6c

    goto :goto_6f

    :cond_6c
    const/4 v10, 0x0

    const/4 v13, 0x0

    goto :goto_79

    .line 46
    :cond_6f
    :goto_6f
    invoke-direct {v0}, Lio/dcloud/p/b;->f()Ljava/lang/String;

    move-result-object v10

    .line 47
    const-string v13, "UNIAD_GDT_APPID"

    invoke-direct {v0, v13, v11}, Lio/dcloud/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 49
    :goto_79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    const-string v12, "ks"

    if-eqz v14, :cond_98

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_95

    goto :goto_98

    :cond_95
    const/4 v5, 0x0

    const/4 v14, 0x0

    goto :goto_a2

    .line 50
    :cond_98
    :goto_98
    invoke-direct {v0}, Lio/dcloud/p/b;->i()Ljava/lang/String;

    move-result-object v14

    .line 51
    const-string v5, "UNIAD_KS_APPID"

    invoke-direct {v0, v5, v12}, Lio/dcloud/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    :goto_a2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v17

    const-string v15, "pg"

    if-eqz v17, :cond_c3

    const/16 v17, 0x1

    const/4 v6, 0x5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    goto :goto_c5

    :cond_be
    move/from16 v18, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_d8

    :cond_c3
    const/16 v17, 0x1

    .line 54
    :goto_c5
    invoke-direct {v0}, Lio/dcloud/p/b;->j()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    .line 55
    const-string v6, "UNIAD_PG_APPID"

    invoke-direct {v0, v6, v15}, Lio/dcloud/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v34, v8

    move-object v8, v6

    move-object/from16 v6, v18

    move/from16 v18, v34

    .line 57
    :goto_d8
    const-string v19, "kWixxal"

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v19}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v19, "{Wixxal"

    move-object/from16 v21, v6

    invoke-static/range {v19 .. v19}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v19, "{WixxalW`"

    move-object/from16 v22, v8

    invoke-static/range {v19 .. v19}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v12

    .line 58
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v23, v5

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v24

    move-object/from16 v25, v14

    const-string v14, "sgm"

    move-object/from16 v26, v11

    const-string v11, "1"

    move-object/from16 v27, v10

    const-string v10, "r"

    if-eqz v24, :cond_127

    move-object/from16 v24, v13

    const/4 v13, 0x3

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_124

    goto :goto_129

    :cond_124
    move-object/from16 v28, v3

    goto :goto_158

    :cond_127
    move-object/from16 v24, v13

    .line 60
    :goto_129
    invoke-direct {v0}, Lio/dcloud/p/b;->k()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v28, v3

    .line 61
    const-string v3, "UNIAD_SGM_APPID"

    invoke-direct {v0, v3, v14}, Lio/dcloud/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v13, :cond_158

    .line 62
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_158

    move-object/from16 v29, v4

    .line 63
    invoke-direct {v0, v14}, Lio/dcloud/p/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 64
    invoke-direct {v0, v13, v4}, Lio/dcloud/p/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v30

    if-nez v30, :cond_15a

    .line 66
    :try_start_149
    invoke-virtual {v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v12, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v12, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v12, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_155} :catch_156

    goto :goto_15a

    :catch_156
    nop

    goto :goto_15a

    :cond_158
    :goto_158
    move-object/from16 v29, v4

    .line 75
    :cond_15a
    :goto_15a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "10028"

    if-eqz v3, :cond_174

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 77
    :cond_174
    invoke-direct {v0}, Lio/dcloud/p/b;->e()Ljava/lang/String;

    move-result-object v3

    .line 78
    const-string v13, ""

    invoke-direct {v0, v13, v4}, Lio/dcloud/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v3, :cond_1ac

    if-nez v13, :cond_18b

    .line 82
    :try_start_182
    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {v5, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_188} :catch_189

    goto :goto_1ac

    :catch_189
    nop

    goto :goto_1ac

    .line 85
    :cond_18b
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1ac

    move-object/from16 v30, v12

    .line 86
    invoke-direct {v0, v4}, Lio/dcloud/p/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 87
    invoke-direct {v0, v3, v12}, Lio/dcloud/p/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v31

    if-nez v31, :cond_1ae

    .line 89
    :try_start_19d
    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v5, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v5, v6, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {v5, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a9} :catch_1aa

    goto :goto_1ae

    :catch_1aa
    nop

    goto :goto_1ae

    :cond_1ac
    :goto_1ac
    move-object/from16 v30, v12

    .line 99
    :cond_1ae
    :goto_1ae
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x6

    if-eqz v3, :cond_1c5

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c8

    .line 101
    :cond_1c5
    invoke-direct {v0}, Lio/dcloud/p/b;->c()V

    .line 103
    :cond_1c8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v13, 0x7

    if-eqz v3, :cond_1df

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e2

    .line 105
    :cond_1df
    invoke-direct {v0}, Lio/dcloud/p/b;->h()V

    .line 107
    :cond_1e2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1fa

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fd

    .line 109
    :cond_1fa
    invoke-direct {v0}, Lio/dcloud/p/b;->g()V

    .line 111
    :cond_1fd
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_215

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_218

    .line 113
    :cond_215
    invoke-direct {v0}, Lio/dcloud/p/b;->m()V

    .line 115
    :cond_218
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_230

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_233

    .line 117
    :cond_230
    invoke-direct {v0}, Lio/dcloud/p/b;->b()V

    .line 120
    :cond_233
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_24b

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24e

    .line 122
    :cond_24b
    invoke-direct {v0}, Lio/dcloud/p/b;->l()V

    .line 124
    :cond_24e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/16 v31, 0x7

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 125
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 128
    :try_start_269
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_2ac

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32
    :try_end_273
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_273} :catch_2ac

    if-nez v32, :cond_2ac

    move-object/from16 v32, v9

    move-object/from16 v9, v29

    move-object/from16 v29, v4

    .line 129
    :try_start_27b
    invoke-direct {v0, v9}, Lio/dcloud/p/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 130
    invoke-direct {v0, v7, v4}, Lio/dcloud/p/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v33
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_283} :catch_2a9

    if-nez v33, :cond_2a9

    if-eqz v18, :cond_28e

    move-object/from16 v18, v5

    const/4 v5, 0x6

    .line 132
    :try_start_28a
    invoke-direct {v0, v5}, Lio/dcloud/p/b;->a(I)V
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_28a .. :try_end_28d} :catch_2b2

    goto :goto_290

    :cond_28e
    move-object/from16 v18, v5

    .line 134
    :goto_290
    :try_start_290
    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-interface {v12, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v28, :cond_2a7

    move-object/from16 v5, v28

    .line 139
    invoke-interface {v12, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2a7
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_2a7} :catch_2a7

    :catch_2a7
    :cond_2a7
    const/4 v4, 0x0

    goto :goto_2b3

    :catch_2a9
    :cond_2a9
    move-object/from16 v18, v5

    goto :goto_2b2

    :catch_2ac
    :cond_2ac
    move-object/from16 v18, v5

    move-object/from16 v9, v29

    move-object/from16 v29, v4

    :catch_2b2
    :goto_2b2
    const/4 v4, 0x1

    .line 144
    :goto_2b3
    :try_start_2b3
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2ee

    move-object/from16 v7, v24

    move-object/from16 v5, v27

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_2c1} :catch_2ee

    if-nez v24, :cond_2ee

    move/from16 v24, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v7

    .line 145
    :try_start_2c9
    invoke-direct {v0, v4}, Lio/dcloud/p/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 146
    invoke-direct {v0, v5, v7}, Lio/dcloud/p/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v27
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2d1} :catch_2eb

    if-nez v27, :cond_2eb

    move-object/from16 v27, v14

    const/4 v14, 0x6

    .line 147
    :try_start_2d6
    invoke-direct {v0, v14}, Lio/dcloud/p/b;->a(I)V
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_2d9} :catch_2f4

    .line 149
    :try_start_2d9
    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v1, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e9
    .catch Ljava/lang/Exception; {:try_start_2d9 .. :try_end_2e9} :catch_2e9

    :catch_2e9
    const/4 v5, 0x0

    goto :goto_2f5

    :catch_2eb
    :cond_2eb
    move-object/from16 v27, v14

    goto :goto_2f4

    :catch_2ee
    :cond_2ee
    move/from16 v24, v4

    move-object/from16 v27, v14

    move-object/from16 v4, v26

    :catch_2f4
    :goto_2f4
    const/4 v5, 0x1

    .line 157
    :goto_2f5
    :try_start_2f5
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_330

    move-object/from16 v7, v23

    move-object/from16 v14, v25

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23
    :try_end_303
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_303} :catch_330

    if-nez v23, :cond_330

    move/from16 v23, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v7

    .line 158
    :try_start_30b
    invoke-direct {v0, v5}, Lio/dcloud/p/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 159
    invoke-direct {v0, v14, v7}, Lio/dcloud/p/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v25
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_30b .. :try_end_313} :catch_32d

    if-nez v25, :cond_32d

    move-object/from16 v25, v5

    const/4 v5, 0x6

    .line 160
    :try_start_318
    invoke-direct {v0, v5}, Lio/dcloud/p/b;->a(I)V
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_31b} :catch_334

    .line 162
    :try_start_31b
    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-virtual {v2, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32b
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_32b} :catch_32b

    :catch_32b
    const/4 v5, 0x0

    goto :goto_335

    :catch_32d
    :cond_32d
    move-object/from16 v25, v5

    goto :goto_334

    :catch_330
    :cond_330
    move/from16 v23, v5

    move-object/from16 v25, v19

    :catch_334
    :goto_334
    const/4 v5, 0x1

    .line 171
    :goto_335
    :try_start_335
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_369

    move-object/from16 v7, v21

    move-object/from16 v14, v22

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19
    :try_end_343
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_343} :catch_36f

    if-nez v19, :cond_369

    move/from16 v19, v5

    move-object/from16 v22, v14

    move-object/from16 v5, v20

    .line 172
    :try_start_34b
    invoke-direct {v0, v5}, Lio/dcloud/p/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 173
    invoke-direct {v0, v7, v14}, Lio/dcloud/p/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v20
    :try_end_353
    .catch Ljava/lang/Exception; {:try_start_34b .. :try_end_353} :catch_373

    if-nez v20, :cond_36d

    .line 175
    :try_start_355
    invoke-virtual {v13, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {v13, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v13, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_365
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_365} :catch_367

    :goto_365
    const/4 v7, 0x0

    goto :goto_375

    :catch_367
    nop

    goto :goto_365

    :cond_369
    move/from16 v19, v5

    move-object/from16 v5, v20

    :cond_36d
    :goto_36d
    const/4 v7, 0x1

    goto :goto_375

    :catch_36f
    move/from16 v19, v5

    move-object/from16 v5, v20

    :catch_373
    nop

    goto :goto_36d

    .line 182
    :goto_375
    const-string v14, "kge&oggodm&iflzgal&oe{&il{&IXXDAKI\\AGFWAL"

    move/from16 v20, v7

    invoke-static {v14}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lio/dcloud/p/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    move-object/from16 v22, v14

    const-string v14, "gg"

    if-nez v21, :cond_3c8

    .line 185
    :try_start_38b
    const-string v21, "kge&oggodm&iflzgal&oe{&il{&EgjadmIl{"

    invoke-static/range {v21 .. v21}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_394
    .catch Ljava/lang/Exception; {:try_start_38b .. :try_end_394} :catch_3c4

    move-object/from16 v21, v5

    .line 186
    :try_start_396
    invoke-static/range {v22 .. v22}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v14}, Lio/dcloud/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3ca

    move-object/from16 v22, v5

    .line 188
    invoke-direct {v0, v14}, Lio/dcloud/p/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 189
    invoke-direct {v0, v7, v5}, Lio/dcloud/p/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v26
    :try_end_3ae
    .catch Ljava/lang/Exception; {:try_start_396 .. :try_end_3ae} :catch_3c6

    if-nez v26, :cond_3ca

    .line 191
    :try_start_3b0
    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v3, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c0
    .catch Ljava/lang/Exception; {:try_start_3b0 .. :try_end_3c0} :catch_3c2

    :goto_3c0
    const/4 v5, 0x0

    goto :goto_3cb

    :catch_3c2
    nop

    goto :goto_3c0

    :catch_3c4
    move-object/from16 v21, v5

    :catch_3c6
    nop

    goto :goto_3ca

    :cond_3c8
    move-object/from16 v21, v5

    :cond_3ca
    :goto_3ca
    const/4 v5, 0x1

    :goto_3cb
    if-eqz v24, :cond_411

    if-eqz v23, :cond_411

    if-eqz v19, :cond_411

    if-eqz v5, :cond_411

    if-eqz v20, :cond_411

    .line 200
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-gtz v6, :cond_411

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-gtz v6, :cond_411

    iget-object v6, v0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-gtz v6, :cond_411

    iget-object v6, v0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-gtz v6, :cond_411

    iget-object v6, v0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-gtz v6, :cond_411

    iget-object v6, v0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-gtz v6, :cond_411

    iget-object v6, v0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-gtz v6, :cond_411

    iget-object v6, v0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_50d

    :cond_411
    iget-boolean v6, v0, Lio/dcloud/p/b;->b:Z

    if-nez v6, :cond_50d

    .line 202
    :try_start_415
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v6, v7, v8}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 203
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 205
    array-length v7, v6

    const/4 v8, 0x0

    :goto_433
    if-ge v8, v7, :cond_447

    aget-object v10, v6, v8

    .line 206
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v15, "pr"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_444

    goto :goto_448

    :cond_444
    add-int/lit8 v8, v8, 0x1

    goto :goto_433

    :cond_447
    const/4 v10, 0x0

    .line 211
    :goto_448
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 212
    const-string v7, "t"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_45b
    .catch Ljava/lang/Exception; {:try_start_415 .. :try_end_45b} :catch_50d

    if-nez v24, :cond_465

    .line 218
    :try_start_45d
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v12}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_465
    if-nez v23, :cond_46a

    .line 221
    invoke-virtual {v7, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_46a
    if-nez v19, :cond_471

    move-object/from16 v1, v25

    .line 224
    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_471
    if-nez v5, :cond_476

    .line 227
    invoke-virtual {v7, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_476
    if-nez v20, :cond_47d

    move-object/from16 v5, v21

    .line 230
    invoke-virtual {v7, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    :cond_47d
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_48a

    move-object/from16 v2, v27

    move-object/from16 v1, v30

    .line 233
    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    :cond_48a
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_497

    move-object/from16 v1, v18

    move-object/from16 v2, v29

    .line 236
    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_497
    iget-object v1, v0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4a6

    .line 239
    const-string v1, "bd"

    iget-object v2, v0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    :cond_4a6
    iget-object v1, v0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4b5

    .line 242
    const-string v1, "10025"

    iget-object v2, v0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    :cond_4b5
    iget-object v1, v0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4c4

    .line 245
    const-string v1, "10033"

    iget-object v2, v0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_4c4
    iget-object v1, v0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4d3

    .line 248
    const-string v1, "10031"

    iget-object v2, v0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_4d3
    iget-object v1, v0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4e2

    .line 251
    const-string v1, "10026"

    iget-object v2, v0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_4e2
    iget-object v1, v0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4f1

    .line 254
    const-string v1, "10034"

    iget-object v2, v0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f1
    .catch Ljava/lang/Exception; {:try_start_45d .. :try_end_4f1} :catch_4f1

    .line 257
    :catch_4f1
    :cond_4f1
    :try_start_4f1
    const-string v1, "rad"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 259
    iget-object v2, v0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v16

    aput-object v6, v3, v1

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iput-boolean v1, v0, Lio/dcloud/p/b;->b:Z
    :try_end_50d
    .catch Ljava/lang/Exception; {:try_start_4f1 .. :try_end_50d} :catch_50d

    :catch_50d
    :cond_50d
    return-void
.end method

.method private a(I)V
    .registers 8

    .line 295
    iget-object v0, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 297
    :cond_5
    new-instance v0, Lio/dcloud/p/g0;

    iget-object v1, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lio/dcloud/p/g0;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 298
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 299
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 300
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 301
    iget-object v3, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lio/dcloud/p/a4;->a(Landroid/content/Context;)Lio/dcloud/p/a4;

    move-result-object v3

    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v4, v5, p1}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lio/dcloud/p/a4;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    invoke-direct {p1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 304
    invoke-virtual {v0, p1, v1}, Lio/dcloud/p/g0;->a(Landroid/view/View;Landroid/widget/TextView;)V

    .line 305
    invoke-virtual {v0, v2}, Lio/dcloud/p/g0;->setDuration(I)V

    .line 306
    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    const/16 v4, 0x50

    invoke-virtual {v0, v4, v2, v3}, Lio/dcloud/p/g0;->setGravity(III)V

    .line 307
    iget-object v2, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 308
    iget-object v3, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 309
    invoke-virtual {p1, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 310
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float v3, v3

    .line 311
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x0

    .line 312
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, -0x4e000000

    .line 313
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 314
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x11

    .line 315
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 316
    const-string p1, "#ffffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    invoke-virtual {v0}, Lio/dcloud/p/g0;->show()V

    return-void
.end method

.method static synthetic a(Lio/dcloud/p/b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/p/b;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    .line 261
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1f

    const/4 v1, 0x0

    .line 262
    :goto_a
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 263
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1f
    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1f

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p1

    .line 9
    :catch_1f
    :cond_1f
    const-string p1, ""

    return-object p1
.end method

.method private b()V
    .registers 7

    const-string v0, "ada"

    const-string v1, "1"

    .line 10
    iget-object v2, p0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_d

    goto :goto_4c

    .line 13
    :cond_d
    :try_start_d
    iget-object v2, p0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    const-string v3, "r"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v2, "kge&jial}&egjil{&{lc&ixa&Il[m||afo{"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 15
    const-string v3, "om|[LC^mz{agf"

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_36

    .line 20
    :catch_36
    :try_start_36
    const-string v2, "ag&lkdg}l&{lc&xgdq&ilix|mz&jl&JLIlIlix|mz"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    iget-object v2, p0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 24
    :catch_45
    :try_start_45
    iget-object v1, p0, Lio/dcloud/p/b;->c:Lorg/json/JSONObject;

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4c

    :catch_4c
    :goto_4c
    return-void
.end method

.method private c()V
    .registers 7

    const-string v0, "ada"

    const-string v1, "1"

    .line 1
    iget-object v2, p0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_d

    goto :goto_4c

    .line 4
    :cond_d
    :try_start_d
    iget-object v2, p0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    const-string v3, "r"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v2, "kge&jmara&n}{agf&JmaRa{"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "om|[lc^mz{agf"

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_36

    .line 11
    :catch_36
    :try_start_36
    const-string v2, "ag&lkdg}l&{lc&xgdq&ilix|mz&k}{|ge&jr&K}{|geJRIlix|mz"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    iget-object v2, p0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 15
    :catch_45
    :try_start_45
    iget-object v1, p0, Lio/dcloud/p/b;->d:Lorg/json/JSONObject;

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4c

    :catch_4c
    :goto_4c
    return-void
.end method

.method private d()Ljava/util/Map;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, ""

    const-string v2, "app_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 5
    :try_start_d
    invoke-static {v1}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x4

    if-nez v1, :cond_1c

    .line 7
    invoke-direct {p0, v3}, Lio/dcloud/p/b;->a(I)V

    return-object v0

    .line 10
    :cond_1c
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 12
    invoke-direct {p0, v3}, Lio/dcloud/p/b;->a(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2d} :catch_7e

    return-object v0

    :cond_2e
    const/4 v3, 0x0

    .line 16
    :try_start_2f
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_44

    .line 31
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 32
    const-string v4, "NM_getCustomInfo"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_43} :catch_7e

    return-object v1

    .line 34
    :catch_44
    :try_start_44
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    invoke-static {v5}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v1, v4, v5}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5e} :catch_5e

    .line 37
    :catch_5e
    :try_start_5e
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v1, v4, v5}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    if-nez v3, :cond_7e

    .line 39
    const-string v1, "unknow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_7e} :catch_7e

    :catch_7e
    :cond_7e
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 6

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    if-nez v0, :cond_13

    .line 3
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 6
    :cond_13
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 8
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 12
    :cond_25
    :try_start_25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 13
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3a} :catch_3b

    return-object v0

    :catch_3b
    return-object v2
.end method

.method private f()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, ""

    if-nez v1, :cond_12

    .line 3
    invoke-direct {p0, v2}, Lio/dcloud/p/b;->a(I)V

    return-object v3

    .line 6
    :cond_12
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    .line 8
    invoke-direct {p0, v2}, Lio/dcloud/p/b;->a(I)V

    return-object v3

    .line 11
    :cond_24
    invoke-static {}, Lio/dcloud/p/r4;->b()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 14
    :try_start_3a
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    .line 15
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 16
    invoke-virtual {v7, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 17
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_6f} :catch_70

    return-object v4

    :catch_70
    nop

    goto :goto_2c

    .line 22
    :cond_72
    :try_start_72
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    const-string v1, "getInstance"

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    const-string v2, "getAppStatus"

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAPPID"

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9c} :catch_9d

    return-object v0

    :catch_9d
    :cond_9d
    return-object v3
.end method

.method private g()V
    .registers 7

    const-string v0, "ada"

    const-string v1, "1"

    .line 1
    iget-object v2, p0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_d

    goto :goto_4c

    .line 4
    :cond_d
    :try_start_d
    iget-object v2, p0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    const-string v3, "r"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v2, "kge&iddaifkm&{{x&il&ixa&[IIddaifkmIl[lc"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "om|Qg}\\}aILF[LC^mz{agf"

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_36

    .line 11
    :catch_36
    :try_start_36
    const-string v2, "ag&lkdg}l&{lc&xgdq&ilix|mz&k}{|ge&q|&K}{|geQ\\Ilix|mz"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    iget-object v2, p0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 15
    :catch_45
    :try_start_45
    iget-object v1, p0, Lio/dcloud/p/b;->f:Lorg/json/JSONObject;

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4c

    :catch_4c
    :goto_4c
    return-void
.end method

.method private h()V
    .registers 7

    const-string v0, "ada"

    const-string v1, "1"

    .line 1
    iget-object v2, p0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_d

    goto :goto_4c

    .line 4
    :cond_d
    :try_start_d
    iget-object v2, p0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    const-string v3, "r"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v2, "kge&baiil{&il~a{|i&{lc&Il~a{|i[lc"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "om^mz{agf"

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_36

    .line 11
    :catch_36
    :try_start_36
    const-string v2, "kge&baiil{&}fail&Il~a{|iK}{|geIlix|mz"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    iget-object v2, p0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 15
    :catch_45
    :try_start_45
    iget-object v1, p0, Lio/dcloud/p/b;->e:Lorg/json/JSONObject;

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4c

    :catch_4c
    :goto_4c
    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 6

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    if-nez v0, :cond_13

    .line 3
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 6
    :cond_13
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 8
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 12
    :cond_25
    :try_start_25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 13
    const-string v1, "getAppId"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_36} :catch_37

    return-object v0

    :catch_37
    return-object v2
.end method

.method private j()Ljava/lang/String;
    .registers 7

    .line 1
    :try_start_0
    invoke-static {}, Lio/dcloud/p/r4;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_50

    const/4 v2, 0x0

    .line 4
    :try_start_15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7
    invoke-virtual {v4, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4f} :catch_8

    return-object v1

    .line 14
    :catch_50
    :cond_50
    const-string v0, ""

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 6

    const/16 v0, 0xb

    .line 1
    invoke-static {v0}, Lio/dcloud/p/r4;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/Base64;->decode2bytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    if-nez v0, :cond_13

    .line 3
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 6
    :cond_13
    invoke-static {}, Lio/dcloud/p/e1;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/p/e1;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 8
    invoke-direct {p0, v1}, Lio/dcloud/p/b;->a(I)V

    return-object v2

    .line 12
    :cond_25
    :try_start_25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 13
    const-string v1, "sharedAds"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    const-string v4, "getAppId"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 17
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_44} :catch_45

    return-object v0

    :catch_45
    return-object v2
.end method

.method private l()V
    .registers 7

    const-string v0, "ada"

    const-string v1, "1"

    .line 1
    iget-object v2, p0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_d

    goto :goto_4c

    .line 4
    :cond_d
    :try_start_d
    iget-object v2, p0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    const-string v3, "r"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v2, "kge&\u007fifoeia&ixx{lclmp&_EIl[lc"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "om|[lc^mz{agf"

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_36

    .line 11
    :catch_36
    :try_start_36
    const-string v2, "kge&\u007fe&\u007feilix|mz}fail&_E[lcAfa|"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    iget-object v2, p0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 15
    :catch_45
    :try_start_45
    iget-object v1, p0, Lio/dcloud/p/b;->h:Lorg/json/JSONObject;

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4c

    :catch_4c
    :goto_4c
    return-void
.end method

.method private m()V
    .registers 7

    const-string v0, "ada"

    const-string v1, "1"

    .line 1
    iget-object v2, p0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_d

    goto :goto_4c

    .line 4
    :cond_d
    :try_start_d
    iget-object v2, p0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    const-string v3, "r"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v2, "kge&gk|gx}{&il&Gk|gx}{"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-string v3, "om|[lc^mz{agf"

    invoke-static {v3}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_36

    .line 11
    :catch_36
    :try_start_36
    const-string v2, "ag&lkdg}l&{lc&xgdq&ilix|mz&rq&RQILIlix|mz"

    invoke-static {v2}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    iget-object v2, p0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_4c

    .line 15
    :catch_45
    :try_start_45
    iget-object v1, p0, Lio/dcloud/p/b;->g:Lorg/json/JSONObject;

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4c

    :catch_4c
    :goto_4c
    return-void
.end method

.method public static o()Lio/dcloud/p/b;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/p/b;->j:Lio/dcloud/p/b;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/p/b;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/p/b;->j:Lio/dcloud/p/b;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/p/b;

    invoke-direct {v1}, Lio/dcloud/p/b;-><init>()V

    sput-object v1, Lio/dcloud/p/b;->j:Lio/dcloud/p/b;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/p/b;->j:Lio/dcloud/p/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 7

    .line 2
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KF"

    invoke-static {v1}, Lio/dcloud/p/e1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_52

    .line 6
    :cond_17
    iput-object p1, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    .line 8
    :try_start_19
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result p1

    if-nez p1, :cond_52

    .line 9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const/4 p1, 0x1

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3a

    iget-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    .line 13
    :cond_3a
    iget-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    if-nez v0, :cond_45

    .line 14
    new-instance v0, Lio/dcloud/p/b$b;

    invoke-direct {v0, p0}, Lio/dcloud/p/b$b;-><init>(Lio/dcloud/p/b;)V

    iput-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    .line 27
    :cond_45
    iget-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_52

    .line 28
    iget-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_52} :catch_53

    :cond_52
    :goto_52
    return-void

    :catch_53
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public n()Ljava/util/List;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_5
    iget-object v1, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/p/b;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_28

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 9
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_28

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catch_28
    :cond_28
    return-object v0
.end method

.method public p()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lio/dcloud/p/b;->b:Z

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/p/b;->i:Landroid/os/Handler;

    :cond_e
    return-void
.end method

###### Class io.dcloud.p.b.a (io.dcloud.p.b$a)
.class Lio/dcloud/p/b$a;
.super Landroid/os/Handler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/b;


# direct methods
.method constructor <init>(Lio/dcloud/p/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/b$a;->a:Lio/dcloud/p/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/p/b$a;->a:Lio/dcloud/p/b;

    invoke-static {p1}, Lio/dcloud/p/b;->a(Lio/dcloud/p/b;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5

    .line 3
    :catch_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

###### Class io.dcloud.p.b.HandlerC0069b (io.dcloud.p.b$b)
.class Lio/dcloud/p/b$b;
.super Landroid/os/Handler;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/b;


# direct methods
.method constructor <init>(Lio/dcloud/p/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/p/b$b;->a:Lio/dcloud/p/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/p/b$b;->a:Lio/dcloud/p/b;

    invoke-static {p1}, Lio/dcloud/p/b;->a(Lio/dcloud/p/b;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
