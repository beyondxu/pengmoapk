###### Class io.dcloud.p.c0 (io.dcloud.p.c0)
.class public abstract Lio/dcloud/p/c0;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .registers 6

    .line 56
    invoke-static/range {p0 .. p5}, Lio/dcloud/p/c0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object p1

    .line 57
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/p/g5;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 58
    invoke-static {}, Lio/dcloud/p/f1;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/dcloud/p/f1;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lio/dcloud/p/d;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 59
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 62
    :try_start_22
    const-string p2, "utf-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    const/4 p1, 0x0

    .line 65
    :goto_2a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "edata="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string p3, "Content-Type"

    const-string p4, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Lio/dcloud/p/q1;->a()Lio/dcloud/p/q1;

    move-result-object p3

    new-instance p4, Lio/dcloud/p/c0$c;

    invoke-direct {p4}, Lio/dcloud/p/c0$c;-><init>()V

    new-instance p5, Lio/dcloud/p/c0$d;

    invoke-direct {p5, p1, p2}, Lio/dcloud/p/c0$d;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string p1, "RSP"

    invoke-virtual {p3, p0, p4, p1, p5}, Lio/dcloud/p/q1;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/p/q1$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    .line 1
    invoke-static/range {v0 .. v10}, Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 30

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move-object/from16 v12, p16

    .line 4
    invoke-static/range {v0 .. v5}, Lio/dcloud/p/c0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object p1

    if-eqz v9, :cond_23

    .line 6
    const-string v1, "rid"

    invoke-interface {p1, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    if-eqz v10, :cond_2a

    .line 9
    const-string v1, "cpm"

    invoke-interface {p1, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    if-eqz v7, :cond_31

    .line 12
    const-string v1, "mediaId"

    invoke-interface {p1, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    if-eqz v11, :cond_38

    .line 15
    const-string v1, "csv"

    invoke-interface {p1, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    if-eqz v12, :cond_3f

    .line 18
    const-string v1, "cav"

    invoke-interface {p1, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    if-eqz v8, :cond_46

    .line 20
    const-string v1, "slotId"

    invoke-interface {p1, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    const/16 v1, 0x20

    if-ne v3, v1, :cond_58

    .line 23
    const-string v1, "dec"

    move-object/from16 v2, p5

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "dem"

    move-object/from16 v2, p6

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    const/16 v1, 0x29

    if-ne v3, v1, :cond_ac

    if-eqz v6, :cond_ac

    if-nez v7, :cond_ac

    .line 27
    const-string v1, "img"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 28
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/p/d3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_79
    const-string v1, "dw"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 31
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_88
    const-string v1, "dh"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 34
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_97
    const-string v1, "click_coord"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 37
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_ac

    .line 39
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_ac
    const-string v1, "tid"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 44
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/p/g5;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 46
    invoke-static {}, Lio/dcloud/p/f1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/dcloud/p/f1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lio/dcloud/p/d;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x2

    .line 47
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 50
    :try_start_db
    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_db .. :try_end_e1} :catch_e2

    goto :goto_e3

    :catch_e2
    const/4 p1, 0x0

    .line 53
    :goto_e3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edata="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 54
    new-array v1, v1, [Ljava/lang/String;

    .line 55
    invoke-static {}, Lio/dcloud/p/q1;->a()Lio/dcloud/p/q1;

    move-result-object v2

    new-instance v4, Lio/dcloud/p/c0$a;

    invoke-direct {v4}, Lio/dcloud/p/c0$a;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CAA_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lio/dcloud/p/c0$b;

    invoke-direct {v5, p1, p2, v1}, Lio/dcloud/p/c0$b;-><init>(Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V

    invoke-virtual {v2, p0, v4, v3, v5}, Lio/dcloud/p/q1;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/p/q1$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 28

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v2, p3

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    .line 2
    invoke-static/range {v0 .. v16}, Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 30

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v2, p3

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    .line 3
    invoke-static/range {v0 .. v16}, Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16

    .line 69
    const-string v0, "utf-8"

    const-string v1, ""

    .line 71
    :try_start_4
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-object v2, v1

    .line 77
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    nop

    .line 80
    :goto_1d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v4, "p"

    const-string v5, "a"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v4, "appid"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string p1, "v"

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {}, Lio/dcloud/p/l0;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "psdk"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "os"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string p1, "adpid"

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string p1, "md"

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p2, "vd"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lio/dcloud/p/l0;->a()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "vb"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "t"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p0}, Lio/dcloud/p/l0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mc"

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string p0, "paid"

    invoke-interface {v3, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_87

    .line 94
    const-string p0, "mediaId"

    invoke-interface {v3, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_87
    if-eqz p5, :cond_8e

    .line 97
    const-string p0, "slotId"

    invoke-interface {v3, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    if-eqz p9, :cond_9a

    .line 100
    const-string p0, "rid"

    invoke-interface {v3, p0, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string p0, "uniad"

    invoke-static {p0, p9}, Lio/dcloud/p/c3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_9a
    const-string p0, "gcpm"

    invoke-interface {v3, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string p0, "currency"

    invoke-interface {v3, p0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "pt"

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/p/g5;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 107
    invoke-static {}, Lio/dcloud/p/f1;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lio/dcloud/p/f1;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/dcloud/p/d;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 108
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 111
    :try_start_cb
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_cf
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cb .. :try_end_cf} :catch_d0

    goto :goto_d1

    :catch_d0
    const/4 p0, 0x0

    .line 114
    :goto_d1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "edata="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string p2, "Content-Type"

    const-string p3, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object p2, Lio/dcloud/p/r1;->g:Lio/dcloud/p/q1$a;

    invoke-virtual {p2}, Lio/dcloud/p/q1$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p0

    if-eqz p0, :cond_109

    .line 119
    new-instance p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_109

    .line 121
    const-string p0, "uniAD-Commit_P"

    invoke-static {p0, p1}, Lio/dcloud/p/c3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_109
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)Ljava/util/Map;
    .registers 15

    .line 1
    const-string v0, ""

    .line 3
    :try_start_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-object v1, v0

    :goto_c
    const/4 v2, 0x0

    .line 9
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1c

    goto :goto_1e

    :catch_1c
    nop

    move-object v3, v0

    :goto_1e
    const/4 v4, 0x1

    .line 12
    invoke-static {p0, v4, v4}, Lio/dcloud/p/u4;->a(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 14
    const-string v7, "p"

    const-string v8, "a"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v7, "appid"

    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "v"

    invoke-interface {v6, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "at"

    invoke-interface {v6, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lio/dcloud/p/l0;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "psdk"

    invoke-interface {v6, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "os"

    invoke-interface {v6, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p1, "adpid"

    invoke-interface {v6, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p1, "&ie=1"

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    const-string p4, "ie"

    if-eqz p3, :cond_75

    .line 22
    invoke-virtual {v5, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v6, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 24
    :cond_75
    const-string p1, "&ie=0"

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_88

    .line 25
    invoke-virtual {v5, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v6, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_88
    :goto_88
    const-string p1, "imei"

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p1, "md"

    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p3, "vd"

    invoke-interface {v6, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {p0}, Lio/dcloud/p/n4;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "net"

    invoke-interface {v6, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lio/dcloud/p/l0;->a()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "vb"

    invoke-interface {v6, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "t"

    invoke-interface {v6, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p0}, Lio/dcloud/p/l0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "mc"

    invoke-interface {v6, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string p1, "paid"

    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lio/dcloud/p/m3;->a()Lio/dcloud/p/m3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/dcloud/p/m3;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "oaid"

    invoke-interface {v6, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_d8

    .line 38
    invoke-interface {v6, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_d8
    return-object v6
.end method

###### Class io.dcloud.p.c0.a (io.dcloud.p.c0$a)
.class Lio/dcloud/p/c0$a;
.super Ljava/util/ArrayList;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v0, Lio/dcloud/p/r1;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

###### Class io.dcloud.p.c0.b (io.dcloud.p.c0$b)
.class Lio/dcloud/p/c0$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/q1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/p/c0$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/p/c0$b;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lio/dcloud/p/c0$b;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/p/q1$a;)V
    .registers 2

    return-void
.end method

.method public b(Lio/dcloud/p/q1$a;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/dcloud/p/q1$a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/p/c0$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/p/c0$b;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lio/dcloud/p/c0$b;->c:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_24

    .line 3
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 5
    const-string p1, "uniAD-Commit_A"

    invoke-static {p1, v0}, Lio/dcloud/p/c3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public onNoOnePicked()V
    .registers 1

    return-void
.end method

###### Class io.dcloud.p.c0.c (io.dcloud.p.c0$c)
.class Lio/dcloud/p/c0$c;
.super Ljava/util/ArrayList;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v0, Lio/dcloud/p/r1;->f:Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

###### Class io.dcloud.p.c0.d (io.dcloud.p.c0$d)
.class Lio/dcloud/p/c0$d;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/q1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lio/dcloud/p/c0$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/p/c0$d;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/p/q1$a;)V
    .registers 2

    return-void
.end method

.method public b(Lio/dcloud/p/q1$a;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lio/dcloud/p/q1$a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/p/c0$d;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/p/c0$d;->b:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p1

    if-eqz p1, :cond_22

    .line 3
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 5
    const-string p1, "uniAD-Commit_F"

    invoke-static {p1, v0}, Lio/dcloud/p/c3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public onNoOnePicked()V
    .registers 1

    return-void
.end method
