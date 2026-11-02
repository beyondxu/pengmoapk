###### Class uts.sdk.modules.DCloudUniNetwork.NetworkUtil (uts.sdk.modules.DCloudUniNetwork.NetworkUtil)
.class public Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;",
        "",
        "<init>",
        "()V",
        "Companion",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class uts.sdk.modules.DCloudUniNetwork.NetworkUtil.Companion (uts.sdk.modules.DCloudUniNetwork.NetworkUtil$Companion)
.class public final Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion\n+ 2 UTSArray.kt\nio/dcloud/uts/UTSArrayKt\n*L\n1#1,2842:1\n33#2:2843\n33#2:2844\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion\n*L\n551#1:2843\n558#1:2844\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\t0\u0007J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;",
        "",
        "<init>",
        "()V",
        "convertHeaders",
        "Lio/dcloud/uts/UTSJSONObject;",
        "headers",
        "",
        "",
        "",
        "parseCookie",
        "Lio/dcloud/uts/UTSArray;",
        "header",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertHeaders(Ljava/util/Map;)Lio/dcloud/uts/UTSJSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/dcloud/uts/UTSJSONObject;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Lkotlin/Pair;

    .line 527
    invoke-static {v1}, Lio/dcloud/uts/UTSJSONObjectKt;->_uO([Lkotlin/Pair;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    .line 529
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 530
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 531
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 532
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 533
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v3, :cond_30

    .line 536
    const-string v3, "_"

    .line 538
    :cond_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_37

    goto :goto_14

    .line 540
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_46

    .line 541
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_46
    const/16 v4, 0xa

    .line 543
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v2, v4}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_56
    return-object v1
.end method

.method public final parseCookie(Lio/dcloud/uts/UTSJSONObject;)Lio/dcloud/uts/UTSArray;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSJSONObject;",
            ")",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_8

    .line 2843
    new-instance p1, Lio/dcloud/uts/UTSArray;

    invoke-direct {p1}, Lio/dcloud/uts/UTSArray;-><init>()V

    return-object p1

    .line 553
    :cond_8
    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lio/dcloud/uts/UTSJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 555
    const-string v0, "set-cookie"

    invoke-virtual {p1, v0}, Lio/dcloud/uts/UTSJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    if-nez v0, :cond_1e

    .line 2844
    new-instance p1, Lio/dcloud/uts/UTSArray;

    invoke-direct {p1}, Lio/dcloud/uts/UTSArray;-><init>()V

    return-object p1

    .line 560
    :cond_1e
    new-instance p1, Lio/dcloud/uts/UTSArray;

    invoke-direct {p1}, Lio/dcloud/uts/UTSArray;-><init>()V

    const/4 v1, 0x0

    .line 561
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v0, v2}, Lio/dcloud/uts/StringKt;->charAt(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v0, v2}, Lio/dcloud/uts/StringKt;->charAt(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 562
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v0, v2, v5}, Lio/dcloud/uts/StringKt;->slice(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_5f
    const-string v2, ";"

    invoke-static {v0, v2}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    .line 565
    move-object v5, p0

    check-cast v5, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;

    .line 566
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 567
    :goto_6e
    invoke-virtual {v0}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v6

    invoke-static {v5, v6}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v6

    const-string v7, ","

    if-gez v6, :cond_cd

    .line 568
    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "Expires="

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v6, v8, v9, v10, v9}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "expires="

    invoke-static {v6, v8, v9, v10, v9}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a9

    goto :goto_b5

    .line 571
    :cond_a9
    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p1, v6}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    goto :goto_c8

    .line 569
    :cond_b5
    :goto_b5
    invoke-virtual {v0, v5}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    .line 573
    :goto_c8
    invoke-static {v5}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    goto :goto_6e

    .line 576
    :cond_cd
    invoke-virtual {p1, v2}, Lio/dcloud/uts/UTSArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    return-object p1
.end method
