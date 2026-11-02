###### Class io.dcloud.js.geolocation.system.LocalGeoManager (io.dcloud.js.geolocation.system.LocalGeoManager)
.class public Lio/dcloud/js/geolocation/system/LocalGeoManager;
.super Lio/dcloud/js/geolocation/GeoManagerBase;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field public static final TAG:Ljava/lang/String; = "LocalGeoManager"


# instance fields
.field private a:Lio/dcloud/js/geolocation/system/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/GeoManagerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/geolocation/system/LocalGeoManager;)Lio/dcloud/js/geolocation/system/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-object p0
.end method


# virtual methods
.method a()Lio/dcloud/js/geolocation/system/a;
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-nez v0, :cond_f

    .line 3
    new-instance v0, Lio/dcloud/js/geolocation/system/a;

    iget-object v1, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lio/dcloud/js/geolocation/system/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    .line 5
    :cond_f
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-object v0
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 25

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1
    const-string v7, ""

    .line 3
    :try_start_6
    const-string v2, "getCurrentPosition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_11e

    const-string v3, "only support wgs84"

    const/16 v4, 0x11

    const-string v5, "{code:%d,message:\'%s\'}"

    const-string v6, "wgs84"

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x2

    const-string v12, "null"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_7c

    .line 5
    :try_start_1e
    aget-object v0, v1, v13

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6
    aget-object v2, v1, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 14
    array-length v15, v1

    if-le v15, v9, :cond_30

    aget-object v8, v1, v8

    goto :goto_31

    :cond_30
    move-object v8, v12

    .line 16
    :goto_31
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3c

    .line 17
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_3e

    :cond_3c
    const/16 v8, 0x7530

    .line 19
    :goto_3e
    aget-object v9, v1, v10

    invoke-static {v9, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6b

    aget-object v6, v1, v10

    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    goto :goto_6b

    .line 23
    :cond_4f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v14

    aput-object v3, v2, v13

    invoke-static {v5, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 24
    aget-object v16, v1, v14

    sget v18, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v15, p1

    invoke-static/range {v15 .. v20}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v7

    :cond_6b
    :goto_6b
    move v4, v2

    .line 25
    aget-object v2, v1, v14
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6e} :catch_11e

    move-object/from16 v1, p1

    move v3, v0

    move v5, v8

    move-object/from16 v0, p0

    :try_start_74
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->getCurrentLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ZII)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_79

    move-object v2, v0

    return-object v7

    :catch_79
    move-object v6, v0

    goto/16 :goto_120

    :cond_7c
    move-object/from16 v2, p0

    .line 31
    :try_start_7e
    const-string v15, "watchPosition"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10d

    .line 32
    aget-object v0, v1, v11

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 33
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v15

    const/16 v16, 0x11

    new-instance v4, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;

    invoke-direct {v4, v2}, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;-><init>(Lio/dcloud/js/geolocation/system/LocalGeoManager;)V

    invoke-interface {v15, v4}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 43
    aget-object v4, v1, v10

    invoke-static {v4, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ad

    aget-object v4, v1, v10

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    goto :goto_ad

    :cond_ab
    const/4 v4, 0x0

    goto :goto_ae

    :cond_ad
    :goto_ad
    const/4 v4, 0x1

    .line 44
    :goto_ae
    array-length v6, v1

    if-le v6, v9, :cond_b4

    aget-object v6, v1, v8

    goto :goto_b5

    :cond_b4
    move-object v6, v12

    .line 47
    :goto_b5
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c0

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_c3

    :cond_c0
    const v6, 0x7fffffff

    .line 50
    :goto_c3
    array-length v8, v1

    const/16 v10, 0x8

    if-le v8, v10, :cond_cb

    aget-object v8, v1, v9

    goto :goto_cd

    .line 51
    :cond_cb
    const-string v8, "5000"

    .line 53
    :goto_cd
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d8

    .line 54
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_d7} :catch_11c

    goto :goto_da

    :cond_d8
    const/16 v8, 0x1388

    :goto_da
    const/16 v9, 0x3e8

    if-ge v8, v9, :cond_e0

    const/16 v8, 0x3e8

    :cond_e0
    if-eqz v4, :cond_f2

    .line 60
    :try_start_e2
    aget-object v2, v1, v14

    aget-object v3, v1, v13
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e6} :catch_11e

    move-object/from16 v1, p1

    move v4, v0

    move v5, v6

    move v6, v8

    move-object/from16 v0, p0

    :try_start_ed
    invoke-virtual/range {v0 .. v6}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->start(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZII)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_79

    move-object v6, v0

    return-object v7

    :cond_f2
    move-object v6, v2

    .line 62
    :try_start_f3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v0, v2, v14

    aput-object v3, v2, v13

    invoke-static {v5, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 63
    aget-object v1, v1, v14

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v7

    :cond_10d
    move-object v6, v2

    .line 66
    const-string v2, "clearWatch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 67
    aget-object v0, v1, v14

    invoke-virtual {v6, v0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->stop(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_11b} :catch_120

    return-object v7

    :catch_11c
    move-object v6, v2

    goto :goto_120

    :catch_11e
    move-object/from16 v6, p0

    :catch_120
    :cond_120
    :goto_120
    return-object v7
.end method

.method public getCurrentLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ZII)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a()Lio/dcloud/js/geolocation/system/a;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p2, p5}, Lio/dcloud/js/geolocation/system/a;->a(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/js/geolocation/system/a;->a()V

    :cond_7
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-void
.end method

.method public start(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a()Lio/dcloud/js/geolocation/system/a;

    move-result-object p4

    invoke-virtual {p4, p1, p6, p2, p5}, Lio/dcloud/js/geolocation/system/a;->b(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    sget v0, Lio/dcloud/js/geolocation/system/a;->u:I

    invoke-virtual {p1, v0}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    :cond_18
    return-void
.end method

###### Class io.dcloud.js.geolocation.system.LocalGeoManager.a (io.dcloud.js.geolocation.system.LocalGeoManager$a)
.class Lio/dcloud/js/geolocation/system/LocalGeoManager$a;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/geolocation/system/LocalGeoManager;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/geolocation/system/LocalGeoManager;


# direct methods
.method constructor <init>(Lio/dcloud/js/geolocation/system/LocalGeoManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;->a:Lio/dcloud/js/geolocation/system/LocalGeoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    const-string v0, "window_close"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "close"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    :cond_10
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_32

    .line 2
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;->a:Lio/dcloud/js/geolocation/system/LocalGeoManager;

    invoke-static {p1}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a(Lio/dcloud/js/geolocation/system/LocalGeoManager;)Lio/dcloud/js/geolocation/system/a;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;->a:Lio/dcloud/js/geolocation/system/LocalGeoManager;

    invoke-static {p1}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a(Lio/dcloud/js/geolocation/system/LocalGeoManager;)Lio/dcloud/js/geolocation/system/a;

    move-result-object p1

    sget v0, Lio/dcloud/js/geolocation/system/a;->u:I

    invoke-virtual {p1, v0}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    .line 3
    :cond_27
    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method
