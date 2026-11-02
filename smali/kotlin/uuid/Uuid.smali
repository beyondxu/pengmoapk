###### Class kotlin.uuid.Uuid (kotlin.uuid.Uuid)
.class public final Lkotlin/uuid/Uuid;
.super Ljava/lang/Object;
.source "Uuid.kt"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/uuid/Uuid$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/uuid/Uuid;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 02\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u00010B\u0019\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\\\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u001026\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u0002H\u00100\u0012H\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u0015J\\\u0010\u0016\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u001026\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u0002H\u00100\u0012H\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H\u0007J\u0006\u0010\u001b\u001a\u00020\u0019J\u0006\u0010\u001c\u001a\u00020\u001dJ\u000f\u0010\u001e\u001a\u00020\u001fH\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\u0011\u0010&\u001a\u00020\'2\u0006\u0010$\u001a\u00020\u0000H\u0097\u0002J\u0008\u0010(\u001a\u00020\'H\u0016J\u0008\u0010)\u001a\u00020%H\u0002J\u0019\u0010*\u001a\u00020+2\n\u0010,\u001a\u00060-j\u0002`.H\u0002\u00a2\u0006\u0002\u0010/R\u001c\u0010\u0004\u001a\u00020\u00058\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0006\u001a\u00020\u00058\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000c\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u00061"
    }
    d2 = {
        "Lkotlin/uuid/Uuid;",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "mostSignificantBits",
        "",
        "leastSignificantBits",
        "<init>",
        "(JJ)V",
        "getMostSignificantBits$annotations",
        "()V",
        "getMostSignificantBits",
        "()J",
        "getLeastSignificantBits$annotations",
        "getLeastSignificantBits",
        "toLongs",
        "T",
        "action",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toULongs",
        "Lkotlin/ULong;",
        "toString",
        "",
        "toHexDashString",
        "toHexString",
        "toByteArray",
        "",
        "toUByteArray",
        "Lkotlin/UByteArray;",
        "toUByteArray-TcUX1vc",
        "()[B",
        "equals",
        "",
        "other",
        "",
        "compareTo",
        "",
        "hashCode",
        "writeReplace",
        "readObject",
        "",
        "input",
        "Ljava/io/ObjectInputStream;",
        "Lkotlin/internal/ReadObjectParameterType;",
        "(Ljava/io/ObjectInputStream;)V",
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
.field public static final Companion:Lkotlin/uuid/Uuid$Companion;

.field private static final NIL:Lkotlin/uuid/Uuid;

.field public static final SIZE_BITS:I = 0x80

.field public static final SIZE_BYTES:I = 0x10


# instance fields
.field private final leastSignificantBits:J

.field private final mostSignificantBits:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/uuid/Uuid$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/uuid/Uuid$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 284
    new-instance v0, Lkotlin/uuid/Uuid;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    sput-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    return-void
.end method

.method private constructor <init>(JJ)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    .line 44
    iput-wide p3, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic access$getNIL$cp()Lkotlin/uuid/Uuid;
    .registers 1

    .line 40
    sget-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    return-object v0
.end method

.method public static synthetic getLeastSignificantBits$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getMostSignificantBits$annotations()V
    .registers 0

    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 275
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final toLongs(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final toULongs(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/ULong;",
            "-",
            "Lkotlin/ULong;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 273
    invoke-static {p0}, Lkotlin/uuid/UuidKt;->serializedUuid(Lkotlin/uuid/Uuid;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 40
    check-cast p1, Lkotlin/uuid/Uuid;

    invoke-virtual {p0, p1}, Lkotlin/uuid/Uuid;->compareTo(Lkotlin/uuid/Uuid;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlin/uuid/Uuid;)I
    .registers 7

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    iget-wide v2, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    .line 264
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget-wide v2, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(JJ)I

    move-result p1

    return p1

    .line 266
    :cond_1c
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget-wide v2, p1, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 235
    :cond_4
    instance-of v1, p1, Lkotlin/uuid/Uuid;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 236
    :cond_a
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    check-cast p1, Lkotlin/uuid/Uuid;

    iget-wide v5, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1d

    .line 237
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    iget-wide v5, p1, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public final getLeastSignificantBits()J
    .registers 3

    .line 44
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    return-wide v0
.end method

.method public final getMostSignificantBits()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 270
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    iget-wide v2, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

.method public final toByteArray()[B
    .registers 5

    const/16 v0, 0x10

    .line 202
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 203
    iget-wide v2, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/uuid/UuidKt;->setLongAt([BIJ)V

    const/16 v1, 0x8

    .line 204
    iget-wide v2, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/uuid/UuidKt;->setLongAt([BIJ)V

    return-object v0
.end method

.method public final toHexDashString()Ljava/lang/String;
    .registers 9

    const/16 v0, 0x24

    .line 156
    new-array v3, v0, [B

    .line 157
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/uuid/UuidKt;->formatBytesInto(J[BIII)V

    const/16 v0, 0x8

    const/16 v7, 0x2d

    .line 158
    aput-byte v7, v3, v0

    .line 159
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v4, 0x9

    invoke-static/range {v1 .. v6}, Lkotlin/uuid/UuidKt;->formatBytesInto(J[BIII)V

    const/16 v0, 0xd

    .line 160
    aput-byte v7, v3, v0

    .line 161
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/4 v5, 0x6

    const/16 v6, 0x8

    const/16 v4, 0xe

    invoke-static/range {v1 .. v6}, Lkotlin/uuid/UuidKt;->formatBytesInto(J[BIII)V

    const/16 v0, 0x12

    .line 162
    aput-byte v7, v3, v0

    .line 163
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v4, 0x13

    invoke-static/range {v1 .. v6}, Lkotlin/uuid/UuidKt;->formatBytesInto(J[BIII)V

    const/16 v0, 0x17

    .line 164
    aput-byte v7, v3, v0

    .line 165
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/16 v4, 0x18

    invoke-static/range {v1 .. v6}, Lkotlin/uuid/UuidKt;->formatBytesInto(J[BIII)V

    .line 166
    invoke-static {v3}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toHexString()Ljava/lang/String;
    .registers 8

    const/16 v0, 0x20

    .line 185
    new-array v3, v0, [B

    .line 186
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/uuid/UuidKt;->formatBytesInto(J[BIII)V

    .line 187
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v4, 0x10

    invoke-static/range {v1 .. v6}, Lkotlin/uuid/UuidKt;->formatBytesInto(J[BIII)V

    .line 188
    invoke-static {v3}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 135
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->toHexDashString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUByteArray-TcUX1vc()[B
    .registers 2

    .line 221
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lkotlin/UByteArray;->constructor-impl([B)[B

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.uuid.Uuid.Companion (kotlin.uuid.Uuid$Companion)
.class public final Lkotlin/uuid/Uuid$Companion;
.super Ljava/lang/Object;
.source "Uuid.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/uuid/Uuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u001d\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018H\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001dH\u0007J\u000e\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001dJ\u0006\u0010\"\u001a\u00020\u0005R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R*\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00050$j\u0008\u0012\u0004\u0012\u00020\u0005`%8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008&\u0010\u0003\u001a\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lkotlin/uuid/Uuid$Companion;",
        "",
        "<init>",
        "()V",
        "NIL",
        "Lkotlin/uuid/Uuid;",
        "getNIL",
        "()Lkotlin/uuid/Uuid;",
        "SIZE_BYTES",
        "",
        "SIZE_BITS",
        "fromLongs",
        "mostSignificantBits",
        "",
        "leastSignificantBits",
        "fromULongs",
        "Lkotlin/ULong;",
        "fromULongs-eb3DHEI",
        "(JJ)Lkotlin/uuid/Uuid;",
        "fromByteArray",
        "byteArray",
        "",
        "fromUByteArray",
        "ubyteArray",
        "Lkotlin/UByteArray;",
        "fromUByteArray-GBYM_sE",
        "([B)Lkotlin/uuid/Uuid;",
        "parse",
        "uuidString",
        "",
        "parseHexDash",
        "hexDashString",
        "parseHex",
        "hexString",
        "random",
        "LEXICAL_ORDER",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "getLEXICAL_ORDER$annotations",
        "getLEXICAL_ORDER",
        "()Ljava/util/Comparator;",
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

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/uuid/Uuid$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getLEXICAL_ORDER$annotations()V
    .registers 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use naturalOrder<Uuid>() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "naturalOrder<Uuid>()"
            imports = {
                "kotlin.comparisons.naturalOrder"
            }
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/DeprecatedSinceKotlin;
        warningSince = "2.1"
    .end annotation

    return-void
.end method


# virtual methods
.method public final fromByteArray([B)Lkotlin/uuid/Uuid;
    .registers 6

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x0

    .line 345
    invoke-static {p1, v0}, Lkotlin/uuid/UuidKt;->getLongAt([BI)J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lkotlin/uuid/UuidKt;->getLongAt([BI)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 342
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected exactly 16 bytes, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-static {p1, v1}, Lkotlin/uuid/UuidKt__UuidKt;->access$truncateForErrorMessage([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fromLongs(JJ)Lkotlin/uuid/Uuid;
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_f

    cmp-long v2, p3, v0

    if-nez v2, :cond_f

    .line 306
    invoke-virtual {p0}, Lkotlin/uuid/Uuid$Companion;->getNIL()Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 308
    :cond_f
    new-instance v0, Lkotlin/uuid/Uuid;

    const/4 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lkotlin/uuid/Uuid;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final fromUByteArray-GBYM_sE([B)Lkotlin/uuid/Uuid;
    .registers 3

    const-string v0, "ubyteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p1}, Lkotlin/uuid/Uuid$Companion;->fromByteArray([B)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1
.end method

.method public final fromULongs-eb3DHEI(JJ)Lkotlin/uuid/Uuid;
    .registers 5

    .line 324
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1
.end method

.method public final getLEXICAL_ORDER()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lkotlin/uuid/Uuid;",
            ">;"
        }
    .end annotation

    .line 519
    invoke-static {}, Lkotlin/comparisons/ComparisonsKt;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final getNIL()Lkotlin/uuid/Uuid;
    .registers 2

    .line 284
    invoke-static {}, Lkotlin/uuid/Uuid;->access$getNIL$cp()Lkotlin/uuid/Uuid;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .registers 5

    const-string v0, "uuidString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x24

    if-ne v0, v1, :cond_16

    .line 392
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->uuidParseHexDash(Ljava/lang/String;)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 394
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x40

    .line 396
    invoke-static {p1, v2}, Lkotlin/uuid/UuidKt__UuidKt;->access$truncateForErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v2, "\" of length "

    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 395
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_3c
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->uuidParseHex(Ljava/lang/String;)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1
.end method

.method public final parseHex(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .registers 4

    const-string v0, "hexString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 452
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->uuidParseHex(Ljava/lang/String;)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 449
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a 32-char hexadecimal string, but was \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    .line 450
    invoke-static {p1, v1}, Lkotlin/uuid/UuidKt__UuidKt;->access$truncateForErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, "\" of length "

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 449
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final parseHexDash(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .registers 4

    const-string v0, "hexDashString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_12

    .line 428
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->uuidParseHexDash(Ljava/lang/String;)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 425
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a 36-char string in the standard hex-and-dash UUID format, but was \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    .line 426
    invoke-static {p1, v1}, Lkotlin/uuid/UuidKt__UuidKt;->access$truncateForErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v1, "\" of length "

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final random()Lkotlin/uuid/Uuid;
    .registers 2

    .line 490
    invoke-static {}, Lkotlin/uuid/UuidKt;->secureRandomUuid()Lkotlin/uuid/Uuid;

    move-result-object v0

    return-object v0
.end method
