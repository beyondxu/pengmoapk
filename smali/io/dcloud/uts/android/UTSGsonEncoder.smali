###### Class io.dcloud.uts.android.UTSGsonEncoder (io.dcloud.uts.android.UTSGsonEncoder)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/android/UTSGsonEncoder$Companion;,
        Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JX\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00012D\u0008\u0002\u0010\u0007\u001a>\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\r\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0008j\u0004\u0018\u0001`\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/dcloud/uts/android/UTSGsonEncoder;",
        "",
        "<init>",
        "()V",
        "encode",
        "Lio/dcloud/uts/gson/JsonElement;",
        "obj",
        "replacer",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "Companion",
        "EncodeType",
        "utsplugin_release"
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
.field public static final Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

.field private static allType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->allType:Ljava/util/List;

    .line 41
    new-instance v1, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$1;

    invoke-direct {v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->allType:Ljava/util/List;

    new-instance v1, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$2;

    invoke-direct {v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->allType:Ljava/util/List;

    new-instance v1, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$3;

    invoke-direct {v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->allType:Ljava/util/List;

    new-instance v1, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$4;

    invoke-direct {v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->allType:Ljava/util/List;

    new-instance v1, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$5;

    invoke-direct {v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->allType:Ljava/util/List;

    new-instance v1, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$6;

    invoke-direct {v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->allType:Ljava/util/List;

    new-instance v1, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$7;

    invoke-direct {v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion$7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAllType$cp()Ljava/util/List;
    .registers 1

    .line 26
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->allType:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic encode$default(Lio/dcloud/uts/android/UTSGsonEncoder;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/dcloud/uts/gson/JsonElement;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 498
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/android/UTSGsonEncoder;->encode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lio/dcloud/uts/gson/JsonElement;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    .line 499
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    invoke-static {v0, p1, p2, v1}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.Companion (io.dcloud.uts.android.UTSGsonEncoder$Companion)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder$Companion;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jf\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00012B\u0010\n\u001a>\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000bj\u0004\u0018\u0001`\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0013H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/dcloud/uts/android/UTSGsonEncoder$Companion;",
        "",
        "<init>",
        "()V",
        "allType",
        "",
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "getGsonElement",
        "Lio/dcloud/uts/gson/JsonElement;",
        "input",
        "replacer",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "inputStock",
        "",
        "utsplugin_release"
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->getGsonElement(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private final getGsonElement(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    .line 429
    instance-of v0, p1, Lkotlin/Function;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    if-nez p1, :cond_d

    .line 434
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 437
    :cond_d
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p2, 0x1

    .line 441
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "JSON stringify \u9519\u8bef : Converting circular structure to JSON "

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lio/dcloud/uts/console;->error([Ljava/lang/Object;)V

    .line 442
    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 445
    :cond_26
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-static {}, Lio/dcloud/uts/android/UTSGsonEncoder;->access$getAllType$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;

    .line 452
    invoke-interface {v2, p1}, Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;->isType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 456
    invoke-interface {v2, p1, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;->getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object v1

    .line 462
    :cond_47
    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4d

    return-object v1

    .line 471
    :cond_4d
    new-instance p1, Lio/dcloud/uts/gson/JsonObject;

    invoke-direct {p1}, Lio/dcloud/uts/gson/JsonObject;-><init>()V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.Companion.AnonymousClass1 (io.dcloud.uts.android.UTSGsonEncoder$Companion$1)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder$Companion$1;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"

# interfaces
.implements Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016Jf\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072B\u0010\n\u001a>\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u000bj\u0004\u0018\u0001`\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "io/dcloud/uts/android/UTSGsonEncoder$Companion$1",
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "typeName",
        "",
        "isType",
        "",
        "obj",
        "",
        "getTypeGsonInstance",
        "Lio/dcloud/uts/gson/JsonElement;",
        "replacer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "hostStock",
        "",
        "utsplugin_release"
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
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    const-string p2, "hostStock"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_c

    .line 63
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 66
    :cond_c
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_5d

    .line 68
    sget-object p2, Lio/dcloud/uts/UTSNumber;->INSTANCE:Lio/dcloud/uts/UTSNumber;

    invoke-virtual {p2, p1}, Lio/dcloud/uts/UTSNumber;->isNaN(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 69
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    :cond_1d
    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 71
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    const/high16 p2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    const-wide/high16 p2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    const/high16 p2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    goto :goto_58

    .line 75
    :cond_4e
    new-instance p2, Lio/dcloud/uts/gson/JsonPrimitive;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {p2, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast p2, Lio/dcloud/uts/gson/JsonElement;

    return-object p2

    .line 72
    :cond_58
    :goto_58
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 77
    :cond_5d
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_6b

    .line 78
    new-instance p2, Lio/dcloud/uts/gson/JsonPrimitive;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    check-cast p2, Lio/dcloud/uts/gson/JsonElement;

    return-object p2

    .line 80
    :cond_6b
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_79

    .line 81
    new-instance p2, Lio/dcloud/uts/gson/JsonPrimitive;

    check-cast p1, Ljava/lang/Character;

    invoke-direct {p2, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    check-cast p2, Lio/dcloud/uts/gson/JsonElement;

    return-object p2

    .line 83
    :cond_79
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_87

    .line 84
    new-instance p2, Lio/dcloud/uts/gson/JsonPrimitive;

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p2, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    check-cast p2, Lio/dcloud/uts/gson/JsonElement;

    return-object p2

    .line 91
    :cond_87
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public isType(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 55
    :cond_4
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_17

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_17

    instance-of v1, p1, Ljava/lang/Boolean;

    if-nez v1, :cond_17

    instance-of p1, p1, Ljava/lang/Number;

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    return v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, "json\u57fa\u7840\u6570\u636e\u7c7b\u578b"

    return-object v0
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.Companion.AnonymousClass2 (io.dcloud.uts.android.UTSGsonEncoder$Companion$2)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder$Companion$2;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"

# interfaces
.implements Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016Jf\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072B\u0010\n\u001a>\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u000bj\u0004\u0018\u0001`\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "io/dcloud/uts/android/UTSGsonEncoder$Companion$2",
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "typeName",
        "",
        "isType",
        "",
        "obj",
        "",
        "getTypeGsonInstance",
        "Lio/dcloud/uts/gson/JsonElement;",
        "replacer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "hostStock",
        "",
        "utsplugin_release"
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
.method constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    const-string v0, "hostStock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    instance-of v0, p1, Lio/dcloud/uts/json/IJsonStringify;

    if-eqz v0, :cond_16

    .line 114
    sget-object v0, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    check-cast p1, Lio/dcloud/uts/json/IJsonStringify;

    invoke-interface {p1}, Lio/dcloud/uts/json/IJsonStringify;->toJSON()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object p1

    return-object p1

    .line 121
    :cond_16
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public isType(Ljava/lang/Object;)Z
    .registers 2

    .line 107
    instance-of p1, p1, Lio/dcloud/uts/json/IJsonStringify;

    return p1
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "JsonSelf"

    return-object v0
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.Companion.AnonymousClass3 (io.dcloud.uts.android.UTSGsonEncoder$Companion$3)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder$Companion$3;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"

# interfaces
.implements Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016Jd\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072B\u0010\n\u001a>\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u000bj\u0004\u0018\u0001`\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "io/dcloud/uts/android/UTSGsonEncoder$Companion$3",
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "typeName",
        "",
        "isType",
        "",
        "obj",
        "",
        "getTypeGsonInstance",
        "Lio/dcloud/uts/gson/JsonElement;",
        "replacer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "hostStock",
        "",
        "utsplugin_release"
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
.method constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    const-string p2, "hostStock"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    instance-of p2, p1, Lio/dcloud/uts/gson/JsonElement;

    if-eqz p2, :cond_c

    .line 142
    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 148
    :cond_c
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    const-string p2, "INSTANCE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public isType(Ljava/lang/Object;)Z
    .registers 2

    .line 136
    instance-of p1, p1, Lio/dcloud/uts/gson/JsonElement;

    return p1
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 132
    const-string v0, "gson-\u5185\u7f6e\u5bf9\u8c61"

    return-object v0
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.Companion.AnonymousClass4 (io.dcloud.uts.android.UTSGsonEncoder$Companion$4)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder$Companion$4;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"

# interfaces
.implements Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSGsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSGsonEncoder.kt\nio/dcloud/uts/android/UTSGsonEncoder$Companion$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,504:1\n1878#2,3:505\n1878#2,3:511\n13537#3,3:508\n216#4,2:514\n*S KotlinDebug\n*F\n+ 1 UTSGsonEncoder.kt\nio/dcloud/uts/android/UTSGsonEncoder$Companion$4\n*L\n182#1:505,3\n213#1:511,3\n197#1:508,3\n247#1:514,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016Jd\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072B\u0010\n\u001a>\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u000bj\u0004\u0018\u0001`\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "io/dcloud/uts/android/UTSGsonEncoder$Companion$4",
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "typeName",
        "",
        "isType",
        "",
        "obj",
        "",
        "getTypeGsonInstance",
        "Lio/dcloud/uts/gson/JsonElement;",
        "replacer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "hostStock",
        "",
        "utsplugin_release"
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
.method constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    const-string v0, "hostStock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    instance-of v0, p1, Lio/dcloud/uts/UTSArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 181
    new-instance v0, Lio/dcloud/uts/gson/JsonArray;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonArray;-><init>()V

    .line 182
    check-cast p1, Ljava/lang/Iterable;

    .line 506
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_26

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_26
    if-eqz p2, :cond_39

    .line 185
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 186
    sget-object v1, Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;->INSTANCE:Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_42

    .line 191
    :cond_39
    sget-object v1, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    invoke-static {v1, v2, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/uts/gson/JsonArray;->add(Lio/dcloud/uts/gson/JsonElement;)V

    :goto_42
    move v1, v3

    goto :goto_15

    .line 193
    :cond_44
    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    return-object v0

    .line 195
    :cond_47
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_7d

    .line 196
    new-instance v0, Lio/dcloud/uts/gson/JsonArray;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonArray;-><init>()V

    .line 197
    check-cast p1, [Ljava/lang/Object;

    .line 509
    array-length v2, p1

    const/4 v3, 0x0

    :goto_54
    if-ge v1, v2, :cond_7a

    aget-object v4, p1, v1

    add-int/lit8 v5, v3, 0x1

    if-eqz p2, :cond_6d

    .line 200
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 201
    sget-object v3, Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;->INSTANCE:Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_76

    .line 206
    :cond_6d
    sget-object v3, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    invoke-static {v3, v4, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/dcloud/uts/gson/JsonArray;->add(Lio/dcloud/uts/gson/JsonElement;)V

    :goto_76
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_54

    .line 208
    :cond_7a
    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    return-object v0

    .line 211
    :cond_7d
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_be

    .line 212
    new-instance v0, Lio/dcloud/uts/gson/JsonArray;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonArray;-><init>()V

    .line 213
    check-cast p1, Ljava/lang/Iterable;

    .line 512
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_9d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_9d
    if-eqz p2, :cond_b0

    .line 216
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 217
    sget-object v1, Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;->INSTANCE:Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    goto :goto_b9

    .line 222
    :cond_b0
    sget-object v1, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    invoke-static {v1, v2, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/uts/gson/JsonArray;->add(Lio/dcloud/uts/gson/JsonElement;)V

    :goto_b9
    move v1, v3

    goto :goto_8c

    .line 224
    :cond_bb
    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    return-object v0

    .line 231
    :cond_be
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_ca

    .line 232
    new-instance p1, Lio/dcloud/uts/gson/JsonObject;

    invoke-direct {p1}, Lio/dcloud/uts/gson/JsonObject;-><init>()V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 234
    :cond_ca
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_d6

    .line 235
    new-instance p1, Lio/dcloud/uts/gson/JsonObject;

    invoke-direct {p1}, Lio/dcloud/uts/gson/JsonObject;-><init>()V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 241
    :cond_d6
    instance-of v0, p1, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v0, :cond_12b

    .line 243
    new-instance v0, Lio/dcloud/uts/gson/JsonObject;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonObject;-><init>()V

    .line 245
    check-cast p1, Lio/dcloud/uts/UTSJSONObject;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object p1

    .line 247
    check-cast p1, Ljava/util/Map;

    .line 514
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ef
    :goto_ef
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz p2, :cond_116

    .line 250
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 251
    sget-object v3, Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;->INSTANCE:Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    goto :goto_ef

    .line 256
    :cond_116
    sget-object v3, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    invoke-static {v3, v2, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_ef

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/gson/JsonObject;->add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V

    goto :goto_ef

    .line 264
    :cond_128
    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    return-object v0

    .line 271
    :cond_12b
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    const-string p2, "INSTANCE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public isType(Ljava/lang/Object;)Z
    .registers 4

    .line 168
    instance-of v0, p1, Lio/dcloud/uts/UTSArray;

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    instance-of v0, p1, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v0, :cond_a

    goto :goto_1d

    .line 171
    :cond_a
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_1d

    instance-of v0, p1, [Ljava/lang/Object;

    if-nez v0, :cond_1d

    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_1d

    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    return v1
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 159
    const-string v0, "json-\u5bb9\u5668\u6570\u636e\u7c7b\u578b"

    return-object v0
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.Companion.AnonymousClass5 (io.dcloud.uts.android.UTSGsonEncoder$Companion$5)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder$Companion$5;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"

# interfaces
.implements Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSGsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSGsonEncoder.kt\nio/dcloud/uts/android/UTSGsonEncoder$Companion$5\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,504:1\n32#2,2:505\n*S KotlinDebug\n*F\n+ 1 UTSGsonEncoder.kt\nio/dcloud/uts/android/UTSGsonEncoder$Companion$5\n*L\n298#1:505,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016Jd\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072B\u0010\n\u001a>\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u000bj\u0004\u0018\u0001`\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "io/dcloud/uts/android/UTSGsonEncoder$Companion$5",
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "typeName",
        "",
        "isType",
        "",
        "obj",
        "",
        "getTypeGsonInstance",
        "Lio/dcloud/uts/gson/JsonElement;",
        "replacer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "hostStock",
        "",
        "utsplugin_release"
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
.method constructor <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    const-string v0, "hostStock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    new-instance v0, Lio/dcloud/uts/gson/JsonObject;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonObject;-><init>()V

    .line 297
    instance-of v1, p1, Lio/dcloud/uts/UTSObject;

    if-eqz v1, :cond_46

    .line 298
    check-cast p1, Lio/dcloud/uts/UTSObject;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSObject;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 505
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 299
    invoke-virtual {p1, v2}, Lio/dcloud/uts/UTSObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p2, :cond_37

    .line 301
    invoke-virtual {p1, v2}, Lio/dcloud/uts/UTSObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 302
    sget-object v4, Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;->INSTANCE:Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_14

    .line 307
    :cond_37
    sget-object v4, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    invoke-static {v4, v3, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 309
    invoke-virtual {v0, v2, v3}, Lio/dcloud/uts/gson/JsonObject;->add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V

    goto :goto_14

    .line 313
    :cond_43
    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    return-object v0

    .line 320
    :cond_46
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    const-string p2, "INSTANCE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public isType(Ljava/lang/Object;)Z
    .registers 2

    .line 287
    instance-of p1, p1, Lio/dcloud/uts/UTSObject;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 283
    const-string v0, "json-\u5f00\u53d1\u8005\u81ea\u5b9a\u4e49\u7c7b\u578b"

    return-object v0
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.Companion.AnonymousClass6 (io.dcloud.uts.android.UTSGsonEncoder$Companion$6)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder$Companion$6;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"

# interfaces
.implements Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTSGsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTSGsonEncoder.kt\nio/dcloud/uts/android/UTSGsonEncoder$Companion$6\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,504:1\n32#2,2:505\n*S KotlinDebug\n*F\n+ 1 UTSGsonEncoder.kt\nio/dcloud/uts/android/UTSGsonEncoder$Companion$6\n*L\n348#1:505,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016Jd\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072B\u0010\n\u001a>\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u000bj\u0004\u0018\u0001`\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "io/dcloud/uts/android/UTSGsonEncoder$Companion$6",
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "typeName",
        "",
        "isType",
        "",
        "obj",
        "",
        "getTypeGsonInstance",
        "Lio/dcloud/uts/gson/JsonElement;",
        "replacer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "hostStock",
        "",
        "utsplugin_release"
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
.method constructor <init>()V
    .registers 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    const-string v0, "hostStock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lio/dcloud/uts/gson/JsonObject;

    invoke-direct {v0}, Lio/dcloud/uts/gson/JsonObject;-><init>()V

    .line 347
    instance-of v1, p1, Lio/dcloud/uts/UTSKeyIterable;

    if-eqz v1, :cond_44

    .line 348
    check-cast p1, Lio/dcloud/uts/UTSKeyIterable;

    invoke-interface {p1}, Lio/dcloud/uts/UTSKeyIterable;->keyIterator()Lio/dcloud/uts/UTSIterator;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 505
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 349
    invoke-interface {p1, v2}, Lio/dcloud/uts/UTSKeyIterable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p2, :cond_35

    .line 352
    invoke-interface {p2, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 353
    sget-object v4, Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;->INSTANCE:Lio/dcloud/uts/JSON$JSON_SKIP_OBJECT;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_16

    .line 358
    :cond_35
    sget-object v4, Lio/dcloud/uts/android/UTSGsonEncoder;->Companion:Lio/dcloud/uts/android/UTSGsonEncoder$Companion;

    invoke-static {v4, v3, p2, p3}, Lio/dcloud/uts/android/UTSGsonEncoder$Companion;->access$getGsonElement(Lio/dcloud/uts/android/UTSGsonEncoder$Companion;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 360
    invoke-virtual {v0, v2, v3}, Lio/dcloud/uts/gson/JsonObject;->add(Ljava/lang/String;Lio/dcloud/uts/gson/JsonElement;)V

    goto :goto_16

    .line 363
    :cond_41
    check-cast v0, Lio/dcloud/uts/gson/JsonElement;

    return-object v0

    .line 370
    :cond_44
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    const-string p2, "INSTANCE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public isType(Ljava/lang/Object;)Z
    .registers 2

    .line 340
    instance-of p1, p1, Lio/dcloud/uts/UTSKeyIterable;

    return p1
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 336
    const-string v0, "json-\u53ef\u679a\u4e3e\u63a5\u53e3"

    return-object v0
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.Companion.AnonymousClass7 (io.dcloud.uts.android.UTSGsonEncoder$Companion$7)
.class public final Lio/dcloud/uts/android/UTSGsonEncoder$Companion$7;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"

# interfaces
.implements Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016Jd\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072B\u0010\n\u001a>\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u000bj\u0004\u0018\u0001`\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "io/dcloud/uts/android/UTSGsonEncoder$Companion$7",
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "typeName",
        "",
        "isType",
        "",
        "obj",
        "",
        "getTypeGsonInstance",
        "Lio/dcloud/uts/gson/JsonElement;",
        "replacer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "hostStock",
        "",
        "utsplugin_release"
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
.method constructor <init>()V
    .registers 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation

    const-string p2, "hostStock"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    const-string p2, "INSTANCE"

    if-nez p1, :cond_11

    .line 398
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 401
    :cond_11
    instance-of p3, p1, Lio/dcloud/uts/Date;

    if-eqz p3, :cond_23

    .line 402
    new-instance p2, Lio/dcloud/uts/gson/JsonPrimitive;

    check-cast p1, Lio/dcloud/uts/Date;

    invoke-virtual {p1}, Lio/dcloud/uts/Date;->toISOString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    check-cast p2, Lio/dcloud/uts/gson/JsonElement;

    return-object p2

    .line 403
    :cond_23
    instance-of p3, p1, Lio/dcloud/uts/UTSCallback;

    if-eqz p3, :cond_35

    .line 404
    new-instance p2, Lio/dcloud/uts/gson/JsonPrimitive;

    check-cast p1, Lio/dcloud/uts/UTSCallback;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/dcloud/uts/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    check-cast p2, Lio/dcloud/uts/gson/JsonElement;

    return-object p2

    .line 405
    :cond_35
    instance-of p1, p1, Lio/dcloud/uts/UTSRegExp;

    if-eqz p1, :cond_41

    .line 409
    new-instance p1, Lio/dcloud/uts/gson/JsonObject;

    invoke-direct {p1}, Lio/dcloud/uts/gson/JsonObject;-><init>()V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1

    .line 415
    :cond_41
    sget-object p1, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/dcloud/uts/gson/JsonElement;

    return-object p1
.end method

.method public isType(Ljava/lang/Object;)Z
    .registers 3

    .line 390
    instance-of v0, p1, Lio/dcloud/uts/Date;

    if-nez v0, :cond_f

    instance-of v0, p1, Lio/dcloud/uts/UTSCallback;

    if-nez v0, :cond_f

    instance-of p1, p1, Lio/dcloud/uts/UTSRegExp;

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 386
    const-string v0, "UTS \u5185\u7f6e\u5bf9\u8c61"

    return-object v0
.end method

###### Class io.dcloud.uts.android.UTSGsonEncoder.EncodeType (io.dcloud.uts.android.UTSGsonEncoder$EncodeType)
.class public interface abstract Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;
.super Ljava/lang/Object;
.source "UTSGsonEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/android/UTSGsonEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncodeType"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001H&Jf\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00012B\u0010\t\u001a>\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\nj\u0004\u0018\u0001`\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0011H&\u00a8\u0006\u0012\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/dcloud/uts/android/UTSGsonEncoder$EncodeType;",
        "",
        "typeName",
        "",
        "isType",
        "",
        "obj",
        "getTypeGsonInstance",
        "Lio/dcloud/uts/gson/JsonElement;",
        "replacer",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "Lio/dcloud/uts/stringifyReplacer;",
        "hostStock",
        "",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getTypeGsonInstance(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/util/Set;)Lio/dcloud/uts/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/dcloud/uts/gson/JsonElement;"
        }
    .end annotation
.end method

.method public abstract isType(Ljava/lang/Object;)Z
.end method

.method public abstract typeName()Ljava/lang/String;
.end method
