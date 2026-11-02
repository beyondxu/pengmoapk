###### Class io.dcloud.uts.nativeregex.JSRegexp (io.dcloud.uts.nativeregex.JSRegexp)
.class public final Lio/dcloud/uts/nativeregex/JSRegexp;
.super Ljava/lang/Object;
.source "JSRegexp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/nativeregex/JSRegexp$Companion;,
        Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 (2\u00020\u0001:\u0002()B!\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u000fJ\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001e\u001a\u00020\u0005J\u0006\u0010\u001f\u001a\u00020\u0016J\u0006\u0010 \u001a\u00020\u0016J\u0006\u0010!\u001a\u00020\u0016J\u0006\u0010\"\u001a\u00020\u0016J\u0006\u0010#\u001a\u00020\u0016J\u0006\u0010$\u001a\u00020\u0016J\u0006\u0010%\u001a\u00020\u0016J\u0006\u0010&\u001a\u00020\u0016J\u0008\u0010\'\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR&\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006*"
    }
    d2 = {
        "Lio/dcloud/uts/nativeregex/JSRegexp;",
        "",
        "bytecode",
        "",
        "pattern",
        "",
        "flags",
        "<init>",
        "([BLjava/lang/String;Ljava/lang/String;)V",
        "getBytecode",
        "()[B",
        "getPattern",
        "()Ljava/lang/String;",
        "getFlags",
        "value",
        "",
        "lastIndex",
        "getLastIndex",
        "()I",
        "setLastIndex",
        "(I)V",
        "hasGlobalOrSticky",
        "",
        "getHasGlobalOrSticky",
        "()Z",
        "exec",
        "Lio/dcloud/uts/RegExpExecArray;",
        "input",
        "startIndex",
        "test",
        "getSource",
        "isGlobal",
        "isIgnoreCase",
        "isMultiline",
        "isDotAll",
        "isUnicode",
        "isUnicodeSets",
        "isSticky",
        "hasIndices",
        "toString",
        "Companion",
        "MatchResult",
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
.field public static final Companion:Lio/dcloud/uts/nativeregex/JSRegexp$Companion;


# instance fields
.field private final bytecode:[B

.field private final flags:Ljava/lang/String;

.field private lastIndex:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/dcloud/uts/nativeregex/JSRegexp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/uts/nativeregex/JSRegexp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/dcloud/uts/nativeregex/JSRegexp;->Companion:Lio/dcloud/uts/nativeregex/JSRegexp$Companion;

    return-void
.end method

.method private constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->bytecode:[B

    .line 9
    iput-object p2, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->pattern:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>([BLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/uts/nativeregex/JSRegexp;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic exec$default(Lio/dcloud/uts/nativeregex/JSRegexp;Ljava/lang/String;IILjava/lang/Object;)Lio/dcloud/uts/RegExpExecArray;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, -0x1

    .line 85
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/nativeregex/JSRegexp;->exec(Ljava/lang/String;I)Lio/dcloud/uts/RegExpExecArray;

    move-result-object p0

    return-object p0
.end method

.method private final getHasGlobalOrSticky()Z
    .registers 6

    .line 81
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x67

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x79

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    return v2

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final exec(Ljava/lang/String;I)Lio/dcloud/uts/RegExpExecArray;
    .registers 6

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p2, :cond_9

    goto :goto_15

    .line 89
    :cond_9
    invoke-direct {p0}, Lio/dcloud/uts/nativeregex/JSRegexp;->getHasGlobalOrSticky()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-virtual {p0}, Lio/dcloud/uts/nativeregex/JSRegexp;->getLastIndex()I

    move-result p2

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    .line 94
    :goto_15
    sget-object v1, Lio/dcloud/uts/nativeregex/RegexpBridge;->INSTANCE:Lio/dcloud/uts/nativeregex/RegexpBridge;

    iget-object v2, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->bytecode:[B

    invoke-virtual {v1, v2, p1, p2}, Lio/dcloud/uts/nativeregex/RegexpBridge;->execRegexp([BLjava/lang/String;I)Lio/dcloud/uts/RegExpExecArray;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2a

    .line 99
    invoke-direct {p0}, Lio/dcloud/uts/nativeregex/JSRegexp;->getHasGlobalOrSticky()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 100
    invoke-virtual {p0, v0}, Lio/dcloud/uts/nativeregex/JSRegexp;->setLastIndex(I)V

    :cond_29
    return-object p2

    .line 106
    :cond_2a
    invoke-direct {p0}, Lio/dcloud/uts/nativeregex/JSRegexp;->getHasGlobalOrSticky()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 108
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3e

    move-object p2, v1

    check-cast p2, Ljava/lang/String;

    .line 109
    :cond_3e
    invoke-virtual {p1}, Lio/dcloud/uts/RegExpExecArray;->getIndex()I

    move-result v1

    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_48
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lio/dcloud/uts/nativeregex/JSRegexp;->setLastIndex(I)V

    :cond_4c
    return-object p1
.end method

.method public final getBytecode()[B
    .registers 2

    .line 8
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->bytecode:[B

    return-object v0
.end method

.method public final getFlags()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastIndex()I
    .registers 2

    .line 71
    iget v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->lastIndex:I

    return v0
.end method

.method public final getPattern()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .registers 3

    .line 122
    sget-object v0, Lio/dcloud/uts/nativeregex/RegexpBridge;->INSTANCE:Lio/dcloud/uts/nativeregex/RegexpBridge;

    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/uts/nativeregex/RegexpBridge;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasIndices()Z
    .registers 6

    .line 163
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isDotAll()Z
    .registers 6

    .line 143
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isGlobal()Z
    .registers 6

    .line 128
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isIgnoreCase()Z
    .registers 6

    .line 133
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isMultiline()Z
    .registers 6

    .line 138
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSticky()Z
    .registers 6

    .line 158
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isUnicode()Z
    .registers 6

    .line 148
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isUnicodeSets()Z
    .registers 6

    .line 153
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setLastIndex(I)V
    .registers 2

    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->lastIndex:I

    return-void

    .line 76
    :cond_6
    iput p1, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->lastIndex:I

    return-void
.end method

.method public final test(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
    invoke-static {p0, p1, v2, v0, v1}, Lio/dcloud/uts/nativeregex/JSRegexp;->exec$default(Lio/dcloud/uts/nativeregex/JSRegexp;Ljava/lang/String;IILjava/lang/Object;)Lio/dcloud/uts/RegExpExecArray;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp;->flags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.nativeregex.JSRegexp.Companion (io.dcloud.uts.nativeregex.JSRegexp$Companion)
.class public final Lio/dcloud/uts/nativeregex/JSRegexp$Companion;
.super Ljava/lang/Object;
.source "JSRegexp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/nativeregex/JSRegexp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lio/dcloud/uts/nativeregex/JSRegexp$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lio/dcloud/uts/nativeregex/JSRegexp;",
        "pattern",
        "",
        "flags",
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/dcloud/uts/nativeregex/JSRegexp$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lio/dcloud/uts/nativeregex/JSRegexp$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/dcloud/uts/nativeregex/JSRegexp;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 14
    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/nativeregex/JSRegexp$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/nativeregex/JSRegexp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/nativeregex/JSRegexp;
    .registers 8

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_64

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_5f

    const/16 v4, 0x67

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x69

    if-eq v3, v4, :cond_59

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_56

    const/16 v4, 0x73

    if-eq v3, v4, :cond_53

    const/16 v4, 0x79

    if-eq v3, v4, :cond_50

    const/16 v4, 0x75

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x76

    if-ne v3, v4, :cond_39

    or-int/lit16 v2, v2, 0x80

    goto :goto_61

    .line 27
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u65e0\u6548\u7684\u6b63\u5219\u8868\u8fbe\u5f0f\u6807\u5fd7: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    or-int/lit8 v2, v2, 0x10

    goto :goto_61

    :cond_50
    or-int/lit8 v2, v2, 0x20

    goto :goto_61

    :cond_53
    or-int/lit8 v2, v2, 0x8

    goto :goto_61

    :cond_56
    or-int/lit8 v2, v2, 0x4

    goto :goto_61

    :cond_59
    or-int/lit8 v2, v2, 0x2

    goto :goto_61

    :cond_5c
    or-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_5f
    or-int/lit8 v2, v2, 0x40

    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 32
    :cond_64
    sget-object v0, Lio/dcloud/uts/nativeregex/RegexpBridge;->INSTANCE:Lio/dcloud/uts/nativeregex/RegexpBridge;

    invoke-virtual {v0, p1, v2}, Lio/dcloud/uts/nativeregex/RegexpBridge;->compileRegexp(Ljava/lang/String;I)[B

    move-result-object v0

    .line 33
    new-instance v1, Lio/dcloud/uts/nativeregex/JSRegexp;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lio/dcloud/uts/nativeregex/JSRegexp;-><init>([BLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

###### Class io.dcloud.uts.nativeregex.JSRegexp.MatchResult (io.dcloud.uts.nativeregex.JSRegexp$MatchResult)
.class public final Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;
.super Ljava/lang/Object;
.source "JSRegexp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/nativeregex/JSRegexp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0086\u0008\u0018\u00002\u00020\u0001BY\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0018\u0008\u0002\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\t\u0012\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001f\u001a\u00020\u0006H\u0016J\u0016\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\t\u0010!\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0004H\u00c6\u0003J\u0019\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\tH\u00c6\u0003J\u001c\u0010$\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017Jf\u0010%\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0018\u0008\u0002\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\t2\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010&J\t\u0010\'\u001a\u00020\u0004H\u00d6\u0001R\u001b\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R!\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R!\u0010\n\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0019\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0011\u00a8\u0006("
    }
    d2 = {
        "Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;",
        "",
        "matches",
        "",
        "",
        "index",
        "",
        "input",
        "namedGroups",
        "",
        "matchIndices",
        "<init>",
        "([Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;)V",
        "getMatches",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getIndex",
        "()I",
        "getInput",
        "()Ljava/lang/String;",
        "getNamedGroups",
        "()Ljava/util/Map;",
        "getMatchIndices",
        "()[[Ljava/lang/Integer;",
        "[[Ljava/lang/Integer;",
        "length",
        "getLength",
        "get",
        "equals",
        "",
        "other",
        "hashCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "([Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;)Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;",
        "toString",
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


# instance fields
.field private final index:I

.field private final input:Ljava/lang/String;

.field private final matchIndices:[[Ljava/lang/Integer;

.field private final matches:[Ljava/lang/String;

.field private final namedGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[[",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "matches"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    .line 40
    iput p2, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->index:I

    .line 41
    iput-object p3, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->input:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->namedGroups:Ljava/util/Map;

    .line 43
    iput-object p5, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matchIndices:[[Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_6

    move-object p4, v0

    :cond_6
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_c

    move-object p6, v0

    goto :goto_d

    :cond_c
    move-object p6, p5

    :goto_d
    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 38
    invoke-direct/range {p1 .. p6}, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;-><init>([Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;[Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;ILjava/lang/Object;)Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->index:I

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget-object p3, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->input:Ljava/lang/String;

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget-object p4, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->namedGroups:Ljava/util/Map;

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-object p5, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matchIndices:[[Ljava/lang/Integer;

    :cond_1e
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->copy([Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;)Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->index:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->input:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->namedGroups:Ljava/util/Map;

    return-object v0
.end method

.method public final component5()[[Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matchIndices:[[Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy([Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;)Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[[",
            "Ljava/lang/Integer;",
            ")",
            "Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;"
        }
    .end annotation

    const-string v0, "matches"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;-><init>([Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[[Ljava/lang/Integer;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 51
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    .line 53
    :cond_18
    const-string v1, "null cannot be cast to non-null type io.dcloud.uts.nativeregex.JSRegexp.MatchResult"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;

    .line 54
    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    iget-object v3, p1, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    .line 55
    :cond_2a
    iget v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->index:I

    iget v3, p1, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->index:I

    if-eq v1, v3, :cond_31

    return v2

    .line 56
    :cond_31
    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->input:Ljava/lang/String;

    iget-object p1, p1, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->input:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    return v2

    :cond_3c
    return v0
.end method

.method public final get(I)Ljava/lang/String;
    .registers 3

    .line 47
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getIndex()I
    .registers 2

    .line 40
    iget v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->index:I

    return v0
.end method

.method public final getInput()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->input:Ljava/lang/String;

    return-object v0
.end method

.method public final getLength()I
    .registers 2

    .line 45
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getMatchIndices()[[Ljava/lang/Integer;
    .registers 2

    .line 43
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matchIndices:[[Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMatches()[Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    return-object v0
.end method

.method public final getNamedGroups()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->namedGroups:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 62
    iget-object v0, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MatchResult(matches="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matches:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->input:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", namedGroups="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->namedGroups:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matchIndices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/uts/nativeregex/JSRegexp$MatchResult;->matchIndices:[[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
