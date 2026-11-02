###### Class io.dcloud.p.h3 (io.dcloud.p.h3)
.class public Lio/dcloud/p/h3;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/t1;


# direct methods
.method public static synthetic $r8$lambda$uidZtiX7LsjpA_0IlhhnLTOd97M(Lio/dcloud/p/h3;Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/p/h3;->b(Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b(Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V
    .registers 13

    .line 1
    new-instance v0, Lio/dcloud/p/p0;

    invoke-static {p1}, Lio/dcloud/p/x3;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/p/p0;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/dcloud/p/g5;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 3
    invoke-static {}, Lio/dcloud/p/f1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/dcloud/p/f1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/p/d;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "uniAd-msg"

    invoke-static {v1, v0}, Lio/dcloud/p/c3;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_27
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    const/4 v0, 0x0

    .line 11
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edata="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 13
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded;charset=utf-8"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lio/dcloud/p/q1;->a()Lio/dcloud/p/q1;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/h3$a;

    invoke-direct {v1, p0, p2}, Lio/dcloud/p/h3$a;-><init>(Lio/dcloud/p/h3;I)V

    const/4 v2, 0x1

    if-eq p2, v2, :cond_58

    const-string p2, "ThirdConfig"

    goto :goto_5a

    :cond_58
    const-string p2, "Splash"

    :goto_5a
    new-instance v3, Lio/dcloud/p/h3$b;

    move-object v4, p0

    move-object v8, p1

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lio/dcloud/p/h3$b;-><init>(Lio/dcloud/p/h3;[Lio/dcloud/p/t1$a;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v0, v8, v1, p2, v3}, Lio/dcloud/p/q1;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/p/q1$b;)V

    return-void
.end method


# virtual methods
.method public varargs a(Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V
    .registers 7

    .line 1
    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/r0;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/r0;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {}, Lio/dcloud/p/r0;->d()Lio/dcloud/p/r0;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/p/r0;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_3c

    .line 7
    :cond_2f
    invoke-static {}, Lio/dcloud/p/x4;->a()Lio/dcloud/p/x4;

    move-result-object v0

    new-instance v1, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/p/h3;Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V

    invoke-virtual {v0, v1}, Lio/dcloud/p/x4;->a(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_3c
    :goto_3c
    array-length p1, p3

    const/4 p2, 0x0

    :goto_3e
    if-ge p2, p1, :cond_4e

    aget-object v0, p3, p2

    const/16 v1, -0x1398

    .line 9
    invoke-static {v1}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/dcloud/p/t1$a;->a(ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3e

    :cond_4e
    return-void
.end method

.method protected a(Lio/dcloud/p/p0;Landroid/content/Context;)V
    .registers 10

    .line 10
    invoke-static {p2}, Lio/dcloud/p/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 13
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    nop

    move-wide v3, v1

    .line 16
    :goto_d
    const-string v0, "7C61656D"

    invoke-virtual {p1, v0}, Lio/dcloud/p/p0;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long p1, v3, v1

    if-lez p1, :cond_2a

    cmp-long p1, v5, v1

    if-lez p1, :cond_2a

    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    mul-long v0, v0, v5

    .line 17
    invoke-static {v3, v4, v0, v1}, Lio/dcloud/p/m;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 18
    invoke-static {p2}, Lio/dcloud/p/m;->a(Landroid/content/Context;)V

    .line 21
    :cond_2a
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/dcloud/p/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.p.h3.a (io.dcloud.p.h3$a)
.class Lio/dcloud/p/h3$a;
.super Ljava/util/ArrayList;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/h3;->a(Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/dcloud/p/h3;


# direct methods
.method constructor <init>(Lio/dcloud/p/h3;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/p/h3$a;->b:Lio/dcloud/p/h3;

    iput p2, p0, Lio/dcloud/p/h3$a;->a:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_d

    sget-object p1, Lio/dcloud/p/r1;->e:Ljava/util/List;

    goto :goto_f

    :cond_d
    sget-object p1, Lio/dcloud/p/r1;->d:Ljava/util/List;

    :goto_f
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

###### Class io.dcloud.p.h3.b (io.dcloud.p.h3$b)
.class Lio/dcloud/p/h3$b;
.super Ljava/lang/Object;
.source "r8-map-id-605b2a5c8742184084f62a640225086eefcd9237ae25847375566b7136421843"

# interfaces
.implements Lio/dcloud/p/q1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/p/h3;->a(Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:[Lio/dcloud/p/t1$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lio/dcloud/p/h3;


# direct methods
.method constructor <init>(Lio/dcloud/p/h3;[Lio/dcloud/p/t1$a;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/p/h3$b;->f:Lio/dcloud/p/h3;

    iput-object p2, p0, Lio/dcloud/p/h3$b;->b:[Lio/dcloud/p/t1$a;

    iput-object p3, p0, Lio/dcloud/p/h3$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/p/h3$b;->d:Ljava/util/HashMap;

    iput-object p5, p0, Lio/dcloud/p/h3$b;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lio/dcloud/p/h3$b;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/p/q1$a;)V
    .registers 2

    return-void
.end method

.method public b(Lio/dcloud/p/q1$a;)Z
    .registers 9

    const-string v0, "6C697C69"

    .line 1
    invoke-virtual {p1}, Lio/dcloud/p/q1$a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/p/h3$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/p/h3$b;->d:Ljava/util/HashMap;

    iget-object v3, p0, Lio/dcloud/p/h3$b;->a:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lio/dcloud/p/l3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_8e

    .line 3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    const/4 p1, -0x1

    const/16 v3, -0x138f

    .line 5
    :try_start_1b
    new-instance v4, Lio/dcloud/p/p0;

    invoke-direct {v4, v2}, Lio/dcloud/p/p0;-><init>(Ljava/lang/String;)V

    .line 7
    const-string v2, "7C61656D"

    invoke-virtual {v4, v2}, Lio/dcloud/p/p0;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 8
    iget-object v2, p0, Lio/dcloud/p/h3$b;->f:Lio/dcloud/p/h3;

    iget-object v5, p0, Lio/dcloud/p/h3$b;->e:Landroid/content/Context;

    invoke-virtual {v2, v4, v5}, Lio/dcloud/p/h3;->a(Lio/dcloud/p/p0;Landroid/content/Context;)V

    .line 10
    :cond_2f
    invoke-virtual {v4, v0}, Lio/dcloud/p/p0;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 11
    invoke-virtual {v4, v0}, Lio/dcloud/p/p0;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    .line 12
    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {}, Lio/dcloud/p/f1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lio/dcloud/p/f1;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lio/dcloud/p/d;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 13
    new-instance v5, Lio/dcloud/p/p0;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Lio/dcloud/p/p0;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, v0, v5}, Lio/dcloud/p/p0;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v0, p0, Lio/dcloud/p/h3$b;->b:[Lio/dcloud/p/t1$a;

    array-length v2, v0

    const/4 v5, 0x0

    :goto_5b
    if-ge v5, v2, :cond_8c

    aget-object v6, v0, v5

    .line 16
    invoke-interface {v6, v4}, Lio/dcloud/p/t1$a;->a(Lio/dcloud/p/p0;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    .line 19
    :cond_65
    iget-object v0, p0, Lio/dcloud/p/h3$b;->b:[Lio/dcloud/p/t1$a;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_69
    if-ge v4, v2, :cond_8c

    aget-object v5, v0, v4

    .line 20
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lio/dcloud/p/t1$a;->a(ILjava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_74} :catch_77

    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :catch_77
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    iget-object v0, p0, Lio/dcloud/p/h3$b;->b:[Lio/dcloud/p/t1$a;

    array-length v2, v0

    :goto_7e
    if-ge v1, v2, :cond_8c

    aget-object v4, v0, v1

    .line 26
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AOLErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lio/dcloud/p/t1$a;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_8c
    const/4 p1, 0x1

    return p1

    :cond_8e
    return v1
.end method

.method public onNoOnePicked()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/p/h3$b;->b:[Lio/dcloud/p/t1$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 2
    iget-object v5, p0, Lio/dcloud/p/h3$b;->a:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, -0x1

    invoke-interface {v4, v6, v5}, Lio/dcloud/p/t1$a;->a(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

###### Class io.dcloud.p.h3$$ExternalSyntheticLambda0 (io.dcloud.p.h3$$ExternalSyntheticLambda0)
.class public final synthetic Lio/dcloud/p/h3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/p/h3;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:[Lio/dcloud/p/t1$a;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/p/h3;Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/h3;

    iput-object p2, p0, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput p3, p0, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;->f$3:[Lio/dcloud/p/t1$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/p/h3;

    iget-object v1, p0, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget v2, p0, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lio/dcloud/p/h3$$ExternalSyntheticLambda0;->f$3:[Lio/dcloud/p/t1$a;

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/p/h3;->$r8$lambda$uidZtiX7LsjpA_0IlhhnLTOd97M(Lio/dcloud/p/h3;Landroid/content/Context;I[Lio/dcloud/p/t1$a;)V

    return-void
.end method
