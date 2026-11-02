###### Class io.dcloud.p.f0 (io.dcloud.p.f0)
.class public abstract Lio/dcloud/p/f0;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 20

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    :try_start_f
    invoke-static/range {v0 .. v10}, Lio/dcloud/p/c0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method
