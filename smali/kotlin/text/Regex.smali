###### Class kotlin.text.Regex (kotlin.text.Regex)
.class public final Lkotlin/text/Regex;
.super Ljava/lang/Object;
.source "Regex.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/Regex$Companion;,
        Lkotlin/text/Regex$Serialized;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n+ 2 Regex.kt\nkotlin/text/RegexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,404:1\n24#2,3:405\n1#3:408\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/Regex\n*L\n105#1:405,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 52\u00060\u0001j\u0002`\u0002:\u000245B\u0011\u0008\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0005\u0010\u000cB\u001f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u0011\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0086\u0004J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dJ\u001e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001f2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010 \u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u0018J\u001a\u0010!\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001dH\u0007J\u0018\u0010#\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001dH\u0007J\u0016\u0010$\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u0008J\"\u0010$\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00180\'J\u0016\u0010(\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u0008J\u001e\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00080*2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010+\u001a\u00020\u001dJ \u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001f2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010+\u001a\u00020\u001dH\u0007J\u0008\u0010-\u001a\u00020\u0008H\u0016J\u0006\u0010.\u001a\u00020\u0004J\u0008\u0010/\u001a\u000200H\u0002J\u0010\u00101\u001a\u0002022\u0006\u0010\u0017\u001a\u000203H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u00066"
    }
    d2 = {
        "Lkotlin/text/Regex;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "nativePattern",
        "Ljava/util/regex/Pattern;",
        "<init>",
        "(Ljava/util/regex/Pattern;)V",
        "pattern",
        "",
        "(Ljava/lang/String;)V",
        "option",
        "Lkotlin/text/RegexOption;",
        "(Ljava/lang/String;Lkotlin/text/RegexOption;)V",
        "options",
        "",
        "(Ljava/lang/String;Ljava/util/Set;)V",
        "getPattern",
        "()Ljava/lang/String;",
        "_options",
        "getOptions",
        "()Ljava/util/Set;",
        "matches",
        "",
        "input",
        "",
        "containsMatchIn",
        "find",
        "Lkotlin/text/MatchResult;",
        "startIndex",
        "",
        "findAll",
        "Lkotlin/sequences/Sequence;",
        "matchEntire",
        "matchAt",
        "index",
        "matchesAt",
        "replace",
        "replacement",
        "transform",
        "Lkotlin/Function1;",
        "replaceFirst",
        "split",
        "",
        "limit",
        "splitToSequence",
        "toString",
        "toPattern",
        "writeReplace",
        "",
        "readObject",
        "",
        "Ljava/io/ObjectInputStream;",
        "Serialized",
        "Companion",
        "kotlin-stdlib"
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
.field public static final Companion:Lkotlin/text/Regex$Companion;


# instance fields
.field private _options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lkotlin/text/RegexOption;",
            ">;"
        }
    .end annotation
.end field

.field private final nativePattern:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$zweQVC-WzxRML0p-0UTzjA1J6is(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/text/Regex;->findAll$lambda$1(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/text/Regex$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/Regex$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/text/RegexOption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/text/RegexKt;->access$toInt(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {v0, p2}, Lkotlin/text/Regex$Companion;->access$ensureUnicodeCase(Lkotlin/text/Regex$Companion;I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "compile(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V
    .registers 4

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {p2}, Lkotlin/text/RegexOption;->getValue()I

    move-result p2

    invoke-static {v0, p2}, Lkotlin/text/Regex$Companion;->access$ensureUnicodeCase(Lkotlin/text/Regex$Companion;I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string p2, "compile(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 3

    const-string v0, "nativePattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static final synthetic access$getNativePattern$p(Lkotlin/text/Regex;)Ljava/util/regex/Pattern;
    .registers 1

    .line 83
    iget-object p0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public static synthetic find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 121
    :cond_5
    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 132
    :cond_5
    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex;->findAll(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method private static final findAll$lambda$1(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;
    .registers 3

    .line 137
    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 313
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic split$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Ljava/util/List;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 243
    :cond_5
    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic splitToSequence$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 272
    :cond_5
    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex;->splitToSequence(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 4

    .line 311
    new-instance v0, Lkotlin/text/Regex$Serialized;

    iget-object v1, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pattern(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->flags()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkotlin/text/Regex$Serialized;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final containsMatchIn(Ljava/lang/CharSequence;)Z
    .registers 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method public final find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, p1}, Lkotlin/text/RegexKt;->access$findNext(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p1

    return-object p1
.end method

.method public final findAll(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lkotlin/sequences/Sequence<",
            "Lkotlin/text/MatchResult;",
            ">;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_1b

    .line 134
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1b

    .line 137
    new-instance v0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V

    sget-object p1, Lkotlin/text/Regex$findAll$2;->INSTANCE:Lkotlin/text/Regex$findAll$2;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt;->generateSequence(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1

    .line 135
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start index out of bounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", input length: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOptions()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/text/RegexOption;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lkotlin/text/Regex;->_options:Ljava/util/Set;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->flags()I

    move-result v0

    .line 405
    const-class v1, Lkotlin/text/RegexOption;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 406
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Lkotlin/text/Regex$special$$inlined$fromInt$1;

    invoke-direct {v3, v0}, Lkotlin/text/Regex$special$$inlined$fromInt$1;-><init>(I)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->retainAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 405
    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "unmodifiableSet(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object v0, p0, Lkotlin/text/Regex;->_options:Ljava/util/Set;

    :cond_2d
    return-object v0
.end method

.method public final getPattern()Ljava/lang/String;
    .registers 3

    .line 101
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pattern(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final matchAt(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 151
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lkotlin/text/MatcherMatchResult;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p2, p1}, Lkotlin/text/MatcherMatchResult;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 150
    :goto_2d
    check-cast v0, Lkotlin/text/MatchResult;

    return-object v0
.end method

.method public final matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;
    .registers 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/text/RegexKt;->access$matchEntire(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p1

    return-object p1
.end method

.method public final matches(Ljava/lang/CharSequence;)Z
    .registers 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public final matchesAt(Ljava/lang/CharSequence;I)Z
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    return p1
.end method

.method public final replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replacement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "replaceAll(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/text/MatchResult;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 190
    invoke-static {p0, p1, v2, v0, v1}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 193
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    :cond_21
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntRange;->getStart()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 198
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 199
    invoke-interface {v0}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getEndInclusive()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 200
    invoke-interface {v0}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    move-result-object v0

    if-ge v2, v1, :cond_4f

    if-nez v0, :cond_21

    :cond_4f
    if-ge v2, v1, :cond_54

    .line 204
    invoke-virtual {v3, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 207
    :cond_54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final replaceFirst(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replacement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "replaceFirst(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final split(Ljava/lang/CharSequence;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {p2}, Lkotlin/text/StringsKt;->requireNonNegativeLimit(I)V

    .line 247
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_5a

    .line 248
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_5a

    .line 250
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    if-lez p2, :cond_22

    invoke-static {p2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    :cond_22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    .line 255
    :cond_27
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    if-ltz p2, :cond_42

    .line 257
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, p2, :cond_48

    .line 258
    :cond_42
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_27

    .line 260
    :cond_48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p1, v1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    check-cast v2, Ljava/util/List;

    return-object v2

    .line 248
    :cond_5a
    :goto_5a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final splitToSequence(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-static {p2}, Lkotlin/text/StringsKt;->requireNonNegativeLimit(I)V

    .line 277
    new-instance v0, Lkotlin/text/Regex$splitToSequence$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlin/text/Regex$splitToSequence$1;-><init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public final toPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 309
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 302
    iget-object v0, p0, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class kotlin.text.Regex.Companion (kotlin.text.Regex$Companion)
.class public final Lkotlin/text/Regex$Companion;
.super Ljava/lang/Object;
.source "Regex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/text/Regex$Companion;",
        "",
        "<init>",
        "()V",
        "fromLiteral",
        "Lkotlin/text/Regex;",
        "literal",
        "",
        "escape",
        "escapeReplacement",
        "ensureUnicodeCase",
        "",
        "flags",
        "kotlin-stdlib"
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

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/text/Regex$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$ensureUnicodeCase(Lkotlin/text/Regex$Companion;I)I
    .registers 2

    .line 323
    invoke-direct {p0, p1}, Lkotlin/text/Regex$Companion;->ensureUnicodeCase(I)I

    move-result p0

    return p0
.end method

.method private final ensureUnicodeCase(I)I
    .registers 3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    or-int/lit8 p1, p1, 0x40

    :cond_6
    return p1
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "literal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "quote(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final escapeReplacement(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "literal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-static {p1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "quoteReplacement(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final fromLiteral(Ljava/lang/String;)Lkotlin/text/Regex;
    .registers 4

    const-string v0, "literal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    .line 328
    sget-object v1, Lkotlin/text/RegexOption;->LITERAL:Lkotlin/text/RegexOption;

    invoke-direct {v0, p1, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    return-object v0
.end method

###### Class kotlin.text.Regex.Serialized (kotlin.text.Regex$Serialized)
.class final Lkotlin/text/Regex$Serialized;
.super Ljava/lang/Object;
.source "Regex.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Serialized"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/Regex$Serialized$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \u000f2\u00060\u0001j\u0002`\u0002:\u0001\u000fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/text/Regex$Serialized;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "pattern",
        "",
        "flags",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "getPattern",
        "()Ljava/lang/String;",
        "getFlags",
        "()I",
        "readResolve",
        "",
        "Companion",
        "kotlin-stdlib"
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
.field public static final Companion:Lkotlin/text/Regex$Serialized$Companion;

.field private static final serialVersionUID:J


# instance fields
.field private final flags:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/text/Regex$Serialized$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/Regex$Serialized$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/Regex$Serialized;->Companion:Lkotlin/text/Regex$Serialized$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/Regex$Serialized;->pattern:Ljava/lang/String;

    iput p2, p0, Lkotlin/text/Regex$Serialized;->flags:I

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .registers 4

    .line 320
    new-instance v0, Lkotlin/text/Regex;

    iget-object v1, p0, Lkotlin/text/Regex$Serialized;->pattern:Ljava/lang/String;

    iget v2, p0, Lkotlin/text/Regex$Serialized;->flags:I

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public final getFlags()I
    .registers 2

    .line 315
    iget v0, p0, Lkotlin/text/Regex$Serialized;->flags:I

    return v0
.end method

.method public final getPattern()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lkotlin/text/Regex$Serialized;->pattern:Ljava/lang/String;

    return-object v0
.end method

###### Class kotlin.text.Regex.Serialized.Companion (kotlin.text.Regex$Serialized$Companion)
.class public final Lkotlin/text/Regex$Serialized$Companion;
.super Ljava/lang/Object;
.source "Regex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/Regex$Serialized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/text/Regex$Serialized$Companion;",
        "",
        "<init>",
        "()V",
        "serialVersionUID",
        "",
        "kotlin-stdlib"
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

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/text/Regex$Serialized$Companion;-><init>()V

    return-void
.end method

###### Class kotlin.text.Regex.AnonymousClass2 (kotlin.text.Regex$findAll$2)
.class final synthetic Lkotlin/text/Regex$findAll$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "Regex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/Regex;->findAll(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/text/MatchResult;",
        "Lkotlin/text/MatchResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/text/Regex$findAll$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/text/Regex$findAll$2;

    invoke-direct {v0}, Lkotlin/text/Regex$findAll$2;-><init>()V

    sput-object v0, Lkotlin/text/Regex$findAll$2;->INSTANCE:Lkotlin/text/Regex$findAll$2;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    const-class v2, Lkotlin/text/MatchResult;

    const-string v4, "next()Lkotlin/text/MatchResult;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v3, "next"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 137
    check-cast p1, Lkotlin/text/MatchResult;

    invoke-virtual {p0, p1}, Lkotlin/text/Regex$findAll$2;->invoke(Lkotlin/text/MatchResult;)Lkotlin/text/MatchResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/text/MatchResult;)Lkotlin/text/MatchResult;
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-interface {p1}, Lkotlin/text/MatchResult;->next()Lkotlin/text/MatchResult;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.text.Regex.AnonymousClass1 (kotlin.text.Regex$splitToSequence$1)
.class final Lkotlin/text/Regex$splitToSequence$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Regex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/Regex;->splitToSequence(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.text.Regex$splitToSequence$1"
    f = "Regex.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x118,
        0x120,
        0x124
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "matcher",
        "$this$sequence",
        "matcher",
        "nextStart",
        "splitCount",
        "$this$sequence",
        "matcher",
        "nextStart",
        "splitCount"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $input:Ljava/lang/CharSequence;

.field final synthetic $limit:I

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlin/text/Regex;


# direct methods
.method constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;ILkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/text/Regex;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/text/Regex$splitToSequence$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/text/Regex$splitToSequence$1;->this$0:Lkotlin/text/Regex;

    iput-object p2, p0, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/Regex$splitToSequence$1;->$limit:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/text/Regex$splitToSequence$1;

    iget-object v1, p0, Lkotlin/text/Regex$splitToSequence$1;->this$0:Lkotlin/text/Regex;

    iget-object v2, p0, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    iget v3, p0, Lkotlin/text/Regex$splitToSequence$1;->$limit:I

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlin/text/Regex$splitToSequence$1;-><init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex$splitToSequence$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/text/Regex$splitToSequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/text/Regex$splitToSequence$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/text/Regex$splitToSequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 277
    iget v2, p0, Lkotlin/text/Regex$splitToSequence$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_39

    if-eq v2, v5, :cond_30

    if-eq v2, v4, :cond_26

    if-ne v2, v3, :cond_1e

    iget-object v0, p0, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/regex/Matcher;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b9

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    iget v2, p0, Lkotlin/text/Regex$splitToSequence$1;->I$1:I

    iget-object v6, p0, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/regex/Matcher;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7a

    :cond_30
    iget-object v0, p0, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/regex/Matcher;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_da

    :cond_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lkotlin/text/Regex$splitToSequence$1;->this$0:Lkotlin/text/Regex;

    invoke-static {p1}, Lkotlin/text/Regex;->access$getNativePattern$p(Lkotlin/text/Regex;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v2, p0, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 279
    iget v2, p0, Lkotlin/text/Regex$splitToSequence$1;->$limit:I

    if-eq v2, v5, :cond_bc

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_54

    goto/16 :goto_bc

    :cond_54
    const/4 v2, 0x0

    move-object v6, p1

    const/4 p1, 0x0

    .line 288
    :goto_57
    iget-object v7, p0, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-interface {v7, v2, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lkotlin/text/Regex$splitToSequence$1;->I$0:I

    iput p1, p0, Lkotlin/text/Regex$splitToSequence$1;->I$1:I

    iput v4, p0, Lkotlin/text/Regex$splitToSequence$1;->label:I

    invoke-virtual {v0, v7, v8}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_79

    goto :goto_d9

    :cond_79
    move v2, p1

    .line 289
    :goto_7a
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    add-int/2addr v2, v5

    .line 290
    iget v7, p0, Lkotlin/text/Regex$splitToSequence$1;->$limit:I

    sub-int/2addr v7, v5

    if-eq v2, v7, :cond_8f

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_8b

    goto :goto_8f

    :cond_8b
    move v9, v2

    move v2, p1

    move p1, v9

    goto :goto_57

    .line 292
    :cond_8f
    :goto_8f
    iget-object v4, p0, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v4, p1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    iput p1, p0, Lkotlin/text/Regex$splitToSequence$1;->I$0:I

    iput v2, p0, Lkotlin/text/Regex$splitToSequence$1;->I$1:I

    iput v3, p0, Lkotlin/text/Regex$splitToSequence$1;->label:I

    invoke-virtual {v0, v4, v5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b9

    goto :goto_d9

    .line 293
    :cond_b9
    :goto_b9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 280
    :cond_bc
    :goto_bc
    iget-object v2, p0, Lkotlin/text/Regex$splitToSequence$1;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lkotlin/text/Regex$splitToSequence$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/text/Regex$splitToSequence$1;->L$1:Ljava/lang/Object;

    iput v5, p0, Lkotlin/text/Regex$splitToSequence$1;->label:I

    invoke-virtual {v0, v2, v3}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_da

    :goto_d9
    return-object v1

    .line 281
    :cond_da
    :goto_da
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class kotlin.text.Regex$$ExternalSyntheticLambda0 (kotlin.text.Regex$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlin/text/Regex$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/text/Regex;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Lkotlin/text/Regex;

    iput-object p2, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$0:Lkotlin/text/Regex;

    iget-object v1, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iget v2, p0, Lkotlin/text/Regex$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lkotlin/text/Regex;->$r8$lambda$zweQVC-WzxRML0p-0UTzjA1J6is(Lkotlin/text/Regex;Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.text.Regex$special$$inlined$fromInt$1 (kotlin.text.Regex$special$$inlined$fromInt$1)
.class public final Lkotlin/text/Regex$special$$inlined$fromInt$1;
.super Ljava/lang/Object;
.source "Regex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/Regex;->getOptions()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/text/RegexOption;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt$fromInt$1$1\n*L\n1#1,404:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $value:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lkotlin/text/Regex$special$$inlined$fromInt$1;->$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Enum;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/text/RegexOption;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 25
    iget v0, p0, Lkotlin/text/Regex$special$$inlined$fromInt$1;->$value:I

    check-cast p1, Lkotlin/text/FlagEnum;

    invoke-interface {p1}, Lkotlin/text/FlagEnum;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    invoke-interface {p1}, Lkotlin/text/FlagEnum;->getValue()I

    move-result p1

    if-ne v0, p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 25
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lkotlin/text/Regex$special$$inlined$fromInt$1;->invoke(Ljava/lang/Enum;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
