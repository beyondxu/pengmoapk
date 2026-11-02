###### Class io.dcloud.p.e (io.dcloud.p.e)
.class public Lio/dcloud/p/e;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# static fields
.field private static volatile d:Lio/dcloud/p/e;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/p/e;->a:Ljava/util/Map;

    .line 14
    new-instance v0, Lio/dcloud/p/e$a;

    invoke-direct {v0, p0}, Lio/dcloud/p/e$a;-><init>(Lio/dcloud/p/e;)V

    iput-object v0, p0, Lio/dcloud/p/e;->b:Ljava/util/Map;

    .line 18
    new-instance v0, Lio/dcloud/p/e$b;

    invoke-direct {v0, p0}, Lio/dcloud/p/e$b;-><init>(Lio/dcloud/p/e;)V

    iput-object v0, p0, Lio/dcloud/p/e;->c:Ljava/util/Map;

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lio/dcloud/p/e;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lio/dcloud/p/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 22
    iget-object v3, p0, Lio/dcloud/p/e;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_40
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;
    .registers 7

    const-string v0, "SDKVersion:"

    .line 3
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/sdk/core/adapter/IAdAdapter;

    .line 5
    invoke-interface {p1}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->getAdapterSDKVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.9.9.82650"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 6
    const-string v1, "uni-AD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adapter version not match"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2e
    invoke-interface {p1}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 9
    const-string v1, "uniAD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->getSDKVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lio/dcloud/p/c3;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_51} :catch_52

    :cond_51
    return-object p1

    :catch_52
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/p/e;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/p/e;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static b()Lio/dcloud/p/e;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/p/e;->d:Lio/dcloud/p/e;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/p/e;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/p/e;->d:Lio/dcloud/p/e;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/p/e;

    invoke-direct {v1}, Lio/dcloud/p/e;-><init>()V

    sput-object v1, Lio/dcloud/p/e;->d:Lio/dcloud/p/e;

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
    sget-object v0, Lio/dcloud/p/e;->d:Lio/dcloud/p/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/dcloud/p/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lio/dcloud/sdk/core/adapter/IAdAdapter;)V
    .registers 4

    .line 11
    iget-object v0, p0, Lio/dcloud/p/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 10
    iget-object v0, p0, Lio/dcloud/p/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;
    .registers 3

    .line 9
    iget-object v0, p0, Lio/dcloud/p/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/sdk/core/adapter/IAdAdapter;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/p/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "global"

    return-object p1

    :cond_b
    const-string p1, "china"

    return-object p1
.end method

.method public c()Ljava/util/List;
    .registers 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_5
    iget-object v1, p0, Lio/dcloud/p/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    nop

    .line 7
    :goto_10
    const-string v1, "dcloud"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-object v0
.end method

###### Class io.dcloud.p.e.a (io.dcloud.p.e$a)
.class Lio/dcloud/p/e$a;
.super Ljava/util/HashMap;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/e;


# direct methods
.method constructor <init>(Lio/dcloud/p/e;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/e$a;->a:Lio/dcloud/p/e;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string p1, "gg"

    const-string v0, "io.dcloud.sdk.poly.adapter.google.AdMobAdAdapter"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p1, "pg"

    const-string v0, "io.dcloud.sdk.poly.adapter.pg.PGADAdapter"

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.p.e.b (io.dcloud.p.e$b)
.class Lio/dcloud/p/e$b;
.super Ljava/util/HashMap;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/p/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/p/e;


# direct methods
.method constructor <init>(Lio/dcloud/p/e;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/p/e$b;->a:Lio/dcloud/p/e;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v0, "bd"

    const-string v1, "io.dcloud.sdk.poly.adapter.bd.BDAdAdapter"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v0, "csj"

    const-string v1, "io.dcloud.sdk.poly.adapter.csj.CSJAdAdapter"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v0, "gdt"

    const-string v1, "io.dcloud.sdk.poly.adapter.gdt.GDTADAdapter"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v0, "sgm"

    const-string v1, "io.dcloud.sdk.poly.adapter.sgm.SGMADAdapter"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v0, "ks"

    const-string v1, "io.dcloud.sdk.poly.adapter.ks.KSADAdapter"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v0, "hw"

    const-string v1, "io.dcloud.sdk.poly.adapter.hw.HWAdAdapter"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v0, "gm"

    const-string v1, "io.dcloud.sdk.poly.adapter.gm.DGMAdAdapter"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lio/dcloud/p/e;->a(Lio/dcloud/p/e;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 10
    const-class p1, Lio/dcloud/p/c5;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wm"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
