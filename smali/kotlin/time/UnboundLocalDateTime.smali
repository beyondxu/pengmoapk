###### Class kotlin.time.UnboundLocalDateTime (kotlin.time.UnboundLocalDateTime)
.class final Lkotlin/time/UnboundLocalDateTime;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/UnboundLocalDateTime$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0003\u0018\u0000 !2\u00020\u0001:\u0001!B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJW\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152\u0006\u0010\u0016\u001a\u00020\u000326\u0010\u0017\u001a2\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u0002H\u00150\u0018H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0008\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime;",
        "",
        "year",
        "",
        "month",
        "day",
        "hour",
        "minute",
        "second",
        "nanosecond",
        "<init>",
        "(IIIIIII)V",
        "getYear",
        "()I",
        "getMonth",
        "getDay",
        "getHour",
        "getMinute",
        "getSecond",
        "getNanosecond",
        "toInstant",
        "T",
        "offsetSeconds",
        "buildInstant",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "epochSeconds",
        "nanosecondOfSecond",
        "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toString",
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
.field public static final Companion:Lkotlin/time/UnboundLocalDateTime$Companion;


# instance fields
.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final nanosecond:I

.field private final second:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/time/UnboundLocalDateTime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/UnboundLocalDateTime;->Companion:Lkotlin/time/UnboundLocalDateTime$Companion;

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 8

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput p1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 471
    iput p2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 472
    iput p3, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 473
    iput p4, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 474
    iput p5, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 475
    iput p6, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 476
    iput p7, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    return-void
.end method


# virtual methods
.method public final getDay()I
    .registers 2

    .line 472
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    return v0
.end method

.method public final getHour()I
    .registers 2

    .line 473
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    return v0
.end method

.method public final getMinute()I
    .registers 2

    .line 474
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    return v0
.end method

.method public final getMonth()I
    .registers 2

    .line 471
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    return v0
.end method

.method public final getNanosecond()I
    .registers 2

    .line 476
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    return v0
.end method

.method public final getSecond()I
    .registers 2

    .line 475
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    return v0
.end method

.method public final getYear()I
    .registers 2

    .line 470
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    return v0
.end method

.method public final toInstant(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "buildInstant"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    move-object v0, p0

    check-cast v0, Lkotlin/time/UnboundLocalDateTime;

    .line 482
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x16d

    int-to-long v2, v2

    mul-long v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_32

    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v4, v0

    const/4 v6, 0x4

    int-to-long v6, v6

    .line 486
    div-long/2addr v4, v6

    const/16 v6, 0x63

    int-to-long v6, v6

    add-long/2addr v6, v0

    const/16 v8, 0x64

    int-to-long v8, v8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    const/16 v6, 0x18f

    int-to-long v6, v6

    add-long/2addr v0, v6

    const/16 v6, 0x190

    int-to-long v6, v6

    div-long/2addr v0, v6

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    goto :goto_42

    :cond_32
    const/4 v4, -0x4

    int-to-long v4, v4

    .line 489
    div-long v4, v0, v4

    const/16 v6, -0x64

    int-to-long v6, v6

    div-long v6, v0, v6

    sub-long/2addr v4, v6

    const/16 v6, -0x190

    int-to-long v6, v6

    div-long/2addr v0, v6

    add-long/2addr v4, v0

    sub-long/2addr v2, v4

    .line 493
    :goto_42
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x16f

    add-int/lit16 v0, v0, -0x16a

    div-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 494
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getDay()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 495
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_6f

    const-wide/16 v0, -0x1

    add-long/2addr v0, v2

    .line 497
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    move-result v4

    invoke-static {v4}, Lkotlin/time/InstantKt;->isLeapYear(I)Z

    move-result v4

    if-nez v4, :cond_6e

    const-wide/16 v0, -0x2

    add-long/2addr v2, v0

    goto :goto_6f

    :cond_6e
    move-wide v2, v0

    :cond_6f
    :goto_6f
    const v0, 0xafaa8

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 503
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getHour()I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMinute()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getSecond()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x15180

    int-to-long v4, v1

    mul-long v2, v2, v4

    int-to-long v0, v0

    add-long/2addr v2, v0

    int-to-long v0, p1

    sub-long/2addr v2, v0

    .line 506
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getNanosecond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnboundLocalDateTime("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.time.UnboundLocalDateTime.Companion (kotlin.time.UnboundLocalDateTime$Companion)
.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "fromInstant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "instant",
        "Lkotlin/time/Instant;",
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

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .registers 26

    const-string v0, "instant"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1}, Lkotlin/time/Instant;->getEpochSeconds()J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    .line 514
    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-gez v0, :cond_21

    mul-long v8, v6, v4

    cmp-long v0, v8, v2

    if-eqz v0, :cond_21

    add-long/2addr v6, v10

    .line 515
    :cond_21
    rem-long/2addr v2, v4

    xor-long v8, v2, v4

    neg-long v14, v2

    or-long/2addr v14, v2

    and-long/2addr v8, v14

    const/16 v0, 0x3f

    shr-long/2addr v8, v0

    and-long/2addr v4, v8

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 520
    move-object/from16 v2, p0

    check-cast v2, Lkotlin/time/UnboundLocalDateTime$Companion;

    const v2, 0xafaa8

    int-to-long v2, v2

    add-long/2addr v6, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    sub-long/2addr v6, v2

    const v2, 0x23ab1

    const/16 v3, 0x190

    cmp-long v4, v6, v12

    if-gez v4, :cond_52

    const-wide/16 v4, 0x1

    add-long v8, v6, v4

    int-to-long v14, v2

    .line 527
    div-long/2addr v8, v14

    sub-long/2addr v8, v4

    int-to-long v4, v3

    mul-long v4, v4, v8

    neg-long v8, v8

    mul-long v8, v8, v14

    add-long/2addr v6, v8

    goto :goto_53

    :cond_52
    move-wide v4, v12

    :goto_53
    int-to-long v8, v3

    mul-long v14, v8, v6

    const/16 v3, 0x24f

    move-wide/from16 v16, v10

    int-to-long v10, v3

    add-long/2addr v14, v10

    int-to-long v2, v2

    .line 531
    div-long/2addr v14, v2

    const/16 v2, 0x16d

    int-to-long v2, v2

    mul-long v10, v2, v14

    move-wide/from16 v18, v12

    const/4 v12, 0x4

    int-to-long v12, v12

    .line 532
    div-long v20, v14, v12

    add-long v10, v10, v20

    const/16 v1, 0x64

    move-wide/from16 v20, v2

    int-to-long v1, v1

    div-long v22, v14, v1

    sub-long v10, v10, v22

    div-long v22, v14, v8

    add-long v10, v10, v22

    sub-long v10, v6, v10

    cmp-long v3, v10, v18

    if-gez v3, :cond_8d

    add-long v14, v14, v16

    mul-long v10, v20, v14

    .line 535
    div-long v12, v14, v12

    add-long/2addr v10, v12

    div-long v1, v14, v1

    sub-long/2addr v10, v1

    div-long v1, v14, v8

    add-long/2addr v10, v1

    sub-long v10, v6, v10

    :cond_8d
    add-long/2addr v14, v4

    long-to-int v1, v10

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, 0x2

    .line 542
    div-int/lit16 v2, v2, 0x99

    add-int/lit8 v3, v2, 0x2

    .line 543
    rem-int/lit8 v3, v3, 0xc

    add-int/lit8 v6, v3, 0x1

    mul-int/lit16 v3, v2, 0x132

    add-int/lit8 v3, v3, 0x5

    .line 544
    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v3

    add-int/lit8 v7, v1, 0x1

    .line 545
    div-int/lit8 v2, v2, 0xa

    int-to-long v1, v2

    add-long/2addr v14, v1

    long-to-int v5, v14

    .line 547
    div-int/lit16 v8, v0, 0xe10

    mul-int/lit16 v1, v8, 0xe10

    sub-int/2addr v0, v1

    .line 549
    div-int/lit8 v9, v0, 0x3c

    mul-int/lit8 v1, v9, 0x3c

    sub-int v10, v0, v1

    .line 551
    new-instance v4, Lkotlin/time/UnboundLocalDateTime;

    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    move-result v11

    invoke-direct/range {v4 .. v11}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    return-object v4
.end method
