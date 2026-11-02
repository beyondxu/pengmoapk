###### Class kotlin.ranges.LongProgression (kotlin.ranges.LongProgression)
.class public Lkotlin/ranges/LongProgression;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/LongProgression$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0013\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/ranges/LongProgression;",
        "",
        "",
        "start",
        "endInclusive",
        "step",
        "<init>",
        "(JJJ)V",
        "first",
        "getFirst",
        "()J",
        "last",
        "getLast",
        "getStep",
        "iterator",
        "Lkotlin/collections/LongIterator;",
        "isEmpty",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "",
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
.field public static final Companion:Lkotlin/ranges/LongProgression$Companion;


# instance fields
.field private final first:J

.field private final last:J

.field private final step:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/ranges/LongProgression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/LongProgression$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .registers 10

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-eqz v2, :cond_22

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1a

    .line 156
    iput-wide p1, p0, Lkotlin/ranges/LongProgression;->first:J

    .line 161
    invoke-static/range {p1 .. p6}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lkotlin/ranges/LongProgression;->last:J

    .line 166
    iput-wide p5, p0, Lkotlin/ranges/LongProgression;->step:J

    return-void

    .line 150
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 179
    instance-of v0, p1, Lkotlin/ranges/LongProgression;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/LongProgression;

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 180
    :cond_13
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    check-cast p1, Lkotlin/ranges/LongProgression;

    iget-wide v2, p1, Lkotlin/ranges/LongProgression;->first:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2f

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->last:J

    iget-wide v2, p1, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2f

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->step:J

    iget-wide v2, p1, Lkotlin/ranges/LongProgression;->step:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2f

    :cond_2d
    const/4 p1, 0x1

    return p1

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method public final getFirst()J
    .registers 3

    .line 156
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    return-wide v0
.end method

.method public final getLast()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->last:J

    return-wide v0
.end method

.method public final getStep()J
    .registers 3

    .line 166
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->step:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 10

    .line 183
    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    const/16 v0, 0x1f

    int-to-long v0, v0

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->first:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    mul-long v2, v2, v0

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->last:J

    ushr-long v7, v5, v4

    xor-long/2addr v5, v7

    add-long/2addr v2, v5

    mul-long v0, v0, v2

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->step:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isEmpty()Z
    .registers 8

    .line 176
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->step:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->last:J

    if-lez v6, :cond_14

    cmp-long v6, v0, v2

    if-lez v6, :cond_13

    return v4

    :cond_13
    return v5

    :cond_14
    cmp-long v6, v0, v2

    if-gez v6, :cond_19

    return v4

    :cond_19
    return v5
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 141
    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->iterator()Lkotlin/collections/LongIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public iterator()Lkotlin/collections/LongIterator;
    .registers 8

    .line 168
    new-instance v0, Lkotlin/ranges/LongProgressionIterator;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v3, p0, Lkotlin/ranges/LongProgression;->last:J

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->step:J

    invoke-direct/range {v0 .. v6}, Lkotlin/ranges/LongProgressionIterator;-><init>(JJJ)V

    check-cast v0, Lkotlin/collections/LongIterator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 185
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->step:J

    const-wide/16 v2, 0x0

    const-string v4, " step "

    cmp-long v5, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    if-lez v5, :cond_2b

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->last:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->step:J

    :goto_23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " downTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->last:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->step:J

    neg-long v1, v1

    goto :goto_23
.end method

###### Class kotlin.ranges.LongProgression.Companion (kotlin.ranges.LongProgression$Companion)
.class public final Lkotlin/ranges/LongProgression$Companion;
.super Ljava/lang/Object;
.source "Progressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/ranges/LongProgression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlin/ranges/LongProgression$Companion;",
        "",
        "<init>",
        "()V",
        "fromClosedRange",
        "Lkotlin/ranges/LongProgression;",
        "rangeStart",
        "",
        "rangeEnd",
        "step",
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

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/ranges/LongProgression$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromClosedRange(JJJ)Lkotlin/ranges/LongProgression;
    .registers 14

    .line 196
    new-instance v0, Lkotlin/ranges/LongProgression;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lkotlin/ranges/LongProgression;-><init>(JJJ)V

    return-object v0
.end method
