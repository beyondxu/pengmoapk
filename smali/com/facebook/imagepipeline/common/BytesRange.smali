###### Class com.facebook.imagepipeline.common.BytesRange (com.facebook.imagepipeline.common.BytesRange)
.class public final Lcom/facebook/imagepipeline/common/BytesRange;
.super Ljava/lang/Object;
.source "BytesRange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/common/BytesRange$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0000H\u0086\u0002J\u0008\u0010\u000c\u001a\u00020\u0008H\u0016J\u0013\u0010\r\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/common/BytesRange;",
        "",
        "from",
        "",
        "to",
        "<init>",
        "(II)V",
        "toHttpRangeHeaderValue",
        "",
        "contains",
        "",
        "compare",
        "toString",
        "equals",
        "other",
        "hashCode",
        "component1",
        "component2",
        "copy",
        "Companion",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/common/BytesRange$Companion;

.field public static final TO_END_OF_CONTENT:I = 0x7fffffff

.field private static final headerParsingRegEx$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final from:I

.field public final to:I


# direct methods
.method public static synthetic $r8$lambda$TFVx8pnBr-ydkdRjLSRzrxsQ4bQ()Ljava/util/regex/Pattern;
    .registers 1

    invoke-static {}, Lcom/facebook/imagepipeline/common/BytesRange;->headerParsingRegEx_delegate$lambda$0()Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/imagepipeline/common/BytesRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/common/BytesRange;->Companion:Lcom/facebook/imagepipeline/common/BytesRange$Companion;

    .line 86
    new-instance v0, Lcom/facebook/imagepipeline/common/BytesRange$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/BytesRange$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/common/BytesRange;->headerParsingRegEx$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    .line 39
    iput p2, p0, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    return-void
.end method

.method public static final synthetic access$getHeaderParsingRegEx$delegate$cp()Lkotlin/Lazy;
    .registers 1

    .line 33
    sget-object v0, Lcom/facebook/imagepipeline/common/BytesRange;->headerParsingRegEx$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/facebook/imagepipeline/common/BytesRange;IIILjava/lang/Object;)Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/common/BytesRange;->copy(II)Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object p0

    return-object p0
.end method

.method public static final from(I)Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/common/BytesRange;->Companion:Lcom/facebook/imagepipeline/common/BytesRange$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->from(I)Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object p0

    return-object p0
.end method

.method public static final fromContentRangeHeader(Ljava/lang/String;)Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/common/BytesRange;->Companion:Lcom/facebook/imagepipeline/common/BytesRange$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->fromContentRangeHeader(Ljava/lang/String;)Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object p0

    return-object p0
.end method

.method private static final headerParsingRegEx_delegate$lambda$0()Ljava/util/regex/Pattern;
    .registers 1

    .line 86
    const-string v0, "[-/ ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static final toMax(I)Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/imagepipeline/common/BytesRange;->Companion:Lcom/facebook/imagepipeline/common/BytesRange$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->toMax(I)Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    return v0
.end method

.method public final contains(Lcom/facebook/imagepipeline/common/BytesRange;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 58
    :cond_4
    iget v1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    iget v2, p1, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    if-gt v1, v2, :cond_12

    iget p1, p1, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    iget v1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    if-gt p1, v1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    return v0
.end method

.method public final copy(II)Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 4

    new-instance v0, Lcom/facebook/imagepipeline/common/BytesRange;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/common/BytesRange;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 69
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

    .line 73
    :cond_18
    const-string v1, "null cannot be cast to non-null type com.facebook.imagepipeline.common.BytesRange"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/facebook/imagepipeline/common/BytesRange;

    .line 75
    iget v1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    if-ne v1, v3, :cond_2c

    iget v1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    iget p1, p1, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    if-ne v1, p1, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 79
    iget v0, p0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget v1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toHttpRangeHeaderValue()Ljava/lang/String;
    .registers 6

    .line 49
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Lcom/facebook/imagepipeline/common/BytesRange;->Companion:Lcom/facebook/imagepipeline/common/BytesRange$Companion;

    iget v1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->access$valueOrEmpty(Lcom/facebook/imagepipeline/common/BytesRange$Companion;I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    invoke-static {v0, v2}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->access$valueOrEmpty(Lcom/facebook/imagepipeline/common/BytesRange$Companion;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "bytes=%s-%s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 62
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Lcom/facebook/imagepipeline/common/BytesRange;->Companion:Lcom/facebook/imagepipeline/common/BytesRange$Companion;

    iget v1, p0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->access$valueOrEmpty(Lcom/facebook/imagepipeline/common/BytesRange$Companion;I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/facebook/imagepipeline/common/BytesRange;->to:I

    invoke-static {v0, v2}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->access$valueOrEmpty(Lcom/facebook/imagepipeline/common/BytesRange$Companion;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "%s-%s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.imagepipeline.common.BytesRange.Companion (com.facebook.imagepipeline.common.BytesRange$Companion)
.class public final Lcom/facebook/imagepipeline/common/BytesRange$Companion;
.super Ljava/lang/Object;
.source "BytesRange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/common/BytesRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0005H\u0007J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0005H\u0007J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\rH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/common/BytesRange$Companion;",
        "",
        "<init>",
        "()V",
        "TO_END_OF_CONTENT",
        "",
        "headerParsingRegEx",
        "Ljava/util/regex/Pattern;",
        "getHeaderParsingRegEx",
        "()Ljava/util/regex/Pattern;",
        "headerParsingRegEx$delegate",
        "Lkotlin/Lazy;",
        "valueOrEmpty",
        "",
        "n",
        "from",
        "Lcom/facebook/imagepipeline/common/BytesRange;",
        "toMax",
        "to",
        "fromContentRangeHeader",
        "header",
        "imagepipeline-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$valueOrEmpty(Lcom/facebook/imagepipeline/common/BytesRange$Companion;I)Ljava/lang/String;
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->valueOrEmpty(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getHeaderParsingRegEx()Ljava/util/regex/Pattern;
    .registers 3

    .line 86
    invoke-static {}, Lcom/facebook/imagepipeline/common/BytesRange;->access$getHeaderParsingRegEx$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private final valueOrEmpty(I)Ljava/lang/String;
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_8

    .line 89
    const-string p1, ""

    return-object p1

    :cond_8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final from(I)Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 100
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 101
    new-instance v0, Lcom/facebook/imagepipeline/common/BytesRange;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/common/BytesRange;-><init>(II)V

    return-object v0
.end method

.method public final fromContentRangeHeader(Ljava/lang/String;)Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 133
    const-string v0, "get(...)"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 137
    :try_start_8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/common/BytesRange$Companion;->getHeaderParsingRegEx()Ljava/util/regex/Pattern;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 138
    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_19

    const/4 v5, 0x1

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    :goto_1a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 139
    aget-object v5, v4, v2

    const-string v6, "bytes"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 140
    aget-object v5, v4, v3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    .line 141
    aget-object v6, v4, v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 142
    aget-object v4, v4, v7

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v6, v5, :cond_51

    const/4 v4, 0x1

    goto :goto_52

    :cond_51
    const/4 v4, 0x0

    .line 143
    :goto_52
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    if-le v0, v6, :cond_5d

    const/4 v4, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v4, 0x0

    .line 144
    :goto_5e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    sub-int/2addr v0, v3

    if-ge v6, v0, :cond_6e

    .line 146
    new-instance v0, Lcom/facebook/imagepipeline/common/BytesRange;

    invoke-direct {v0, v5, v6}, Lcom/facebook/imagepipeline/common/BytesRange;-><init>(II)V

    return-object v0

    .line 148
    :cond_6e
    new-instance v0, Lcom/facebook/imagepipeline/common/BytesRange;

    const v4, 0x7fffffff

    invoke-direct {v0, v5, v4}, Lcom/facebook/imagepipeline/common/BytesRange;-><init>(II)V
    :try_end_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_76} :catch_77

    return-object v0

    :catch_77
    move-exception v0

    .line 151
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 152
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Invalid Content-Range header value: \"%s\""

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 151
    invoke-direct {v4, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final toMax(I)Lcom/facebook/imagepipeline/common/BytesRange;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-lez p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 112
    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 113
    new-instance v1, Lcom/facebook/imagepipeline/common/BytesRange;

    invoke-direct {v1, v0, p1}, Lcom/facebook/imagepipeline/common/BytesRange;-><init>(II)V

    return-object v1
.end method

###### Class com.facebook.imagepipeline.common.BytesRange$$ExternalSyntheticLambda0 (com.facebook.imagepipeline.common.BytesRange$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/facebook/imagepipeline/common/BytesRange$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/facebook/imagepipeline/common/BytesRange;->$r8$lambda$TFVx8pnBr-ydkdRjLSRzrxsQ4bQ()Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
