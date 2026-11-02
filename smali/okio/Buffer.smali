###### Class okio.Buffer (okio.Buffer)
.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 55
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .registers 7

    .line 1704
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 1705
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_2f

    .line 1706
    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->limit:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1707
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1c
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v1, :cond_2f

    .line 1708
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1c

    .line 1711
    :cond_2f
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_37} :catch_38

    return-object p1

    .line 1713
    :catch_38
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .registers 7

    .line 1734
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 1735
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1736
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz p1, :cond_3c

    .line 1737
    iget-object p1, p1, Lokio/Segment;->data:[B

    iget-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget p2, p2, Lokio/Segment;->pos:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Mac;->update([BII)V

    .line 1738
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_39

    :goto_29
    iget-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq p1, p2, :cond_3c

    .line 1739
    iget-object p2, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    iget v2, p1, Lokio/Segment;->limit:I

    iget v3, p1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p2, v1, v2}, Ljavax/crypto/Mac;->update([BII)V

    .line 1738
    :goto_39
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_29

    .line 1742
    :cond_3c
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_44} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_44} :catch_45

    return-object p1

    :catch_45
    move-exception p1

    .line 1746
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1744
    :catch_4c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .registers 11

    .line 1635
    iget v0, p1, Lokio/Segment;->limit:I

    .line 1636
    iget-object v1, p1, Lokio/Segment;->data:[B

    :goto_4
    if-ge p4, p5, :cond_23

    if-ne p2, v0, :cond_14

    .line 1640
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 1641
    iget-object p2, p1, Lokio/Segment;->data:[B

    .line 1642
    iget v0, p1, Lokio/Segment;->pos:I

    .line 1643
    iget v1, p1, Lokio/Segment;->limit:I

    move v4, v1

    move-object v1, p2

    move p2, v0

    move v0, v4

    .line 1646
    :cond_14
    aget-byte v2, v1, p2

    invoke-virtual {p3, p4}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1e

    const/4 p1, 0x0

    return p1

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_23
    const/4 p1, 0x1

    return p1
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3a

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_a

    if-eqz p4, :cond_26

    :cond_a
    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 249
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 250
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    if-eqz p4, :cond_27

    :cond_26
    return-void

    .line 253
    :cond_27
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 255
    :cond_2d
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    .line 256
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v0

    goto :goto_2

    .line 246
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "in == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public final clear()V
    .registers 3

    .line 922
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 924
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .registers 7

    .line 1806
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1807
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    .line 1809
    :cond_e
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1810
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1811
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1c
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_2e

    .line 1812
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_1c

    .line 1814
    :cond_2e
    iget-wide v1, p0, Lokio/Buffer;->size:J

    iput-wide v1, v0, Lokio/Buffer;->size:J

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public final completeSegmentByteCount()J
    .registers 6

    .line 267
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 271
    :cond_9
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 272
    iget v3, v2, Lokio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1e

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_1e

    .line 273
    iget v3, v2, Lokio/Segment;->limit:I

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1e
    return-wide v0
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 142
    iget-wide v4, p0, Lokio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_46

    .line 151
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 p2, 0x0

    cmp-long p4, v4, p2

    if-nez p4, :cond_10

    goto :goto_45

    .line 155
    :cond_10
    iget-object p4, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 156
    :goto_12
    iget p5, p4, Lokio/Segment;->limit:I

    iget v0, p4, Lokio/Segment;->pos:I

    sub-int/2addr p5, v0

    int-to-long v0, p5

    cmp-long p5, v2, v0

    if-ltz p5, :cond_26

    .line 157
    iget p5, p4, Lokio/Segment;->limit:I

    iget v0, p4, Lokio/Segment;->pos:I

    sub-int/2addr p5, v0

    int-to-long v0, p5

    sub-long/2addr v2, v0

    .line 156
    iget-object p4, p4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_12

    :cond_26
    move-object v0, p4

    move-wide p4, v4

    :goto_28
    cmp-long v1, p4, p2

    if-lez v1, :cond_45

    .line 162
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v4, v1

    add-long/2addr v4, v2

    long-to-int v1, v4

    .line 163
    iget v2, v0, Lokio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 164
    iget-object v2, v0, Lokio/Segment;->data:[B

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v1, v3

    sub-long/2addr p4, v1

    .line 161
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, p2

    goto :goto_28

    :cond_45
    :goto_45
    return-object p0

    .line 150
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 12

    if-eqz p1, :cond_64

    .line 175
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 p2, 0x0

    cmp-long p4, v4, p2

    if-nez p4, :cond_10

    goto :goto_63

    .line 178
    :cond_10
    iget-wide p4, p1, Lokio/Buffer;->size:J

    add-long/2addr p4, v4

    iput-wide p4, p1, Lokio/Buffer;->size:J

    .line 181
    iget-object p4, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 182
    :goto_17
    iget p5, p4, Lokio/Segment;->limit:I

    iget v0, p4, Lokio/Segment;->pos:I

    sub-int/2addr p5, v0

    int-to-long v0, p5

    cmp-long p5, v2, v0

    if-ltz p5, :cond_2b

    .line 183
    iget p5, p4, Lokio/Segment;->limit:I

    iget v0, p4, Lokio/Segment;->pos:I

    sub-int/2addr p5, v0

    int-to-long v0, p5

    sub-long/2addr v2, v0

    .line 182
    iget-object p4, p4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_17

    :cond_2b
    move-object v0, p4

    move-wide p4, v4

    :goto_2d
    cmp-long v1, p4, p2

    if-lez v1, :cond_63

    .line 188
    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v1

    .line 189
    iget v4, v1, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v2, v4

    iput v2, v1, Lokio/Segment;->pos:I

    .line 190
    iget v2, v1, Lokio/Segment;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lokio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lokio/Segment;->limit:I

    .line 191
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_53

    .line 192
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_58

    .line 194
    :cond_53
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 196
    :goto_58
    iget v2, v1, Lokio/Segment;->limit:I

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    sub-long/2addr p4, v1

    .line 187
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, p2

    goto :goto_2d

    :cond_63
    :goto_63
    return-object p0

    .line 174
    :cond_64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public emit()Lokio/BufferedSink;
    .registers 1

    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1752
    :cond_4
    instance-of v1, p1, Lokio/Buffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1753
    :cond_a
    check-cast p1, Lokio/Buffer;

    .line 1754
    iget-wide v3, p0, Lokio/Buffer;->size:J

    iget-wide v5, p1, Lokio/Buffer;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    .line 1757
    :cond_1c
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1758
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1759
    iget v3, v1, Lokio/Segment;->pos:I

    .line 1760
    iget v4, p1, Lokio/Segment;->pos:I

    .line 1762
    :goto_24
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_61

    .line 1763
    iget v7, v1, Lokio/Segment;->limit:I

    sub-int/2addr v7, v3

    iget v8, p1, Lokio/Segment;->limit:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x0

    :goto_36
    int-to-long v10, v9

    cmp-long v12, v10, v7

    if-gez v12, :cond_4f

    .line 1766
    iget-object v10, v1, Lokio/Segment;->data:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lokio/Segment;->data:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_36

    .line 1769
    :cond_4f
    iget v9, v1, Lokio/Segment;->limit:I

    if-ne v3, v9, :cond_57

    .line 1770
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1771
    iget v3, v1, Lokio/Segment;->pos:I

    .line 1774
    :cond_57
    iget v9, p1, Lokio/Segment;->limit:I

    if-ne v4, v9, :cond_5f

    .line 1775
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 1776
    iget v4, p1, Lokio/Segment;->pos:I

    :cond_5f
    add-long/2addr v5, v7

    goto :goto_24

    :cond_61
    return v0
.end method

.method public exhausted()Z
    .registers 6

    .line 105
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public final getByte(J)B
    .registers 9

    .line 302
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 303
    iget-wide p1, p0, Lokio/Buffer;->size:J

    sub-long v0, p1, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_29

    .line 304
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 305
    :goto_12
    iget p2, p1, Lokio/Segment;->limit:I

    iget v0, p1, Lokio/Segment;->pos:I

    sub-int/2addr p2, v0

    int-to-long v0, p2

    cmp-long p2, v2, v0

    if-gez p2, :cond_25

    .line 306
    iget-object p2, p1, Lokio/Segment;->data:[B

    iget p1, p1, Lokio/Segment;->pos:I

    long-to-int v0, v2

    add-int/2addr p1, v0

    aget-byte p1, p2, p1

    return p1

    :cond_25
    sub-long/2addr v2, v0

    .line 304
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_12

    :cond_29
    sub-long p1, v2, p1

    .line 311
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :cond_2d
    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 312
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_2d

    .line 313
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v0, v0, Lokio/Segment;->pos:I

    long-to-int p2, p1

    add-int/2addr v0, p2

    aget-byte p1, v1, v0

    return p1
.end method

.method public hashCode()I
    .registers 6

    .line 1784
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    .line 1788
    :cond_7
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    .line 1789
    iget-object v4, v0, Lokio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1791
    :cond_17
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1792
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1719
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1724
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1729
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 1405
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public indexOf(BJ)J
    .registers 10

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1413
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public indexOf(BJJ)J
    .registers 20

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7a

    cmp-long v2, p4, p2

    if-ltz v2, :cond_7a

    .line 1422
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, p4, v2

    if-lez v4, :cond_12

    move-wide v4, v2

    goto :goto_14

    :cond_12
    move-wide/from16 v4, p4

    :goto_14
    const-wide/16 v6, -0x1

    cmp-long v8, p2, v4

    if-nez v8, :cond_1b

    return-wide v6

    .line 1431
    :cond_1b
    iget-object v8, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_20

    return-wide v6

    :cond_20
    sub-long v9, v2, p2

    cmp-long v11, v9, p2

    if-gez v11, :cond_34

    :goto_26
    cmp-long v0, v2, p2

    if-lez v0, :cond_44

    .line 1439
    iget-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 1440
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_26

    .line 1445
    :cond_34
    :goto_34
    iget v2, v8, Lokio/Segment;->limit:I

    iget v3, v8, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v9, v2, p2

    if-gez v9, :cond_43

    .line 1446
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, v2

    goto :goto_34

    :cond_43
    move-wide v2, v0

    :cond_44
    move-wide/from16 v0, p2

    :goto_46
    cmp-long v9, v2, v4

    if-gez v9, :cond_79

    .line 1454
    iget-object v9, v8, Lokio/Segment;->data:[B

    .line 1455
    iget v10, v8, Lokio/Segment;->limit:I

    int-to-long v10, v10

    iget v12, v8, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, v4

    sub-long/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v11, v10

    .line 1456
    iget v10, v8, Lokio/Segment;->pos:I

    int-to-long v12, v10

    add-long/2addr v12, v0

    sub-long/2addr v12, v2

    long-to-int v0, v12

    :goto_5f
    if-ge v0, v11, :cond_6e

    .line 1458
    aget-byte v1, v9, v0

    if-ne v1, p1, :cond_6b

    .line 1459
    iget p1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, p1

    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 1464
    :cond_6e
    iget v0, v8, Lokio/Segment;->limit:I

    iget v1, v8, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 1466
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, v2

    goto :goto_46

    :cond_79
    return-wide v6

    .line 1418
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 1419
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "size=%s fromIndex=%s toIndex=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lokio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1473
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1477
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v1

    if-eqz v1, :cond_a7

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_9f

    .line 1486
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v6, -0x1

    if-nez v3, :cond_15

    return-wide v6

    .line 1490
    :cond_15
    iget-wide v4, v0, Lokio/Buffer;->size:J

    sub-long v8, v4, p2

    cmp-long v10, v8, p2

    if-gez v10, :cond_2b

    :goto_1d
    cmp-long v1, v4, p2

    if-lez v1, :cond_3b

    .line 1494
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1495
    iget v1, v3, Lokio/Segment;->limit:I

    iget v2, v3, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v4, v1

    goto :goto_1d

    .line 1500
    :cond_2b
    :goto_2b
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v1

    cmp-long v8, v4, p2

    if-gez v8, :cond_3a

    .line 1501
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    move-wide v1, v4

    goto :goto_2b

    :cond_3a
    move-wide v4, v1

    :cond_3b
    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 1509
    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    move-result v8

    move-wide v9, v4

    .line 1510
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v5

    .line 1511
    iget-wide v11, v0, Lokio/Buffer;->size:J

    int-to-long v13, v5

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    move-object v1, v3

    move-wide/from16 v3, p2

    :goto_51
    cmp-long v13, v9, v11

    if-gez v13, :cond_9c

    .line 1514
    iget-object v13, v1, Lokio/Segment;->data:[B

    .line 1515
    iget v14, v1, Lokio/Segment;->limit:I

    int-to-long v14, v14

    move-wide/from16 v16, v6

    iget v6, v1, Lokio/Segment;->pos:I

    int-to-long v6, v6

    add-long/2addr v6, v11

    sub-long/2addr v6, v9

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 1516
    iget v6, v1, Lokio/Segment;->pos:I

    int-to-long v14, v6

    add-long/2addr v14, v3

    sub-long/2addr v14, v9

    long-to-int v3, v14

    move v6, v3

    :goto_6d
    if-ge v6, v7, :cond_8b

    .line 1517
    aget-byte v3, v13, v6

    if-ne v3, v8, :cond_84

    add-int/lit8 v2, v6, 0x1

    const/4 v4, 0x1

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 1518
    iget v0, v1, Lokio/Segment;->pos:I

    sub-int/2addr v6, v0

    int-to-long v0, v6

    add-long/2addr v0, v9

    return-wide v0

    :cond_84
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    goto :goto_6d

    .line 1523
    :cond_8b
    iget v0, v1, Lokio/Segment;->limit:I

    iget v2, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v9, v2

    .line 1525
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide v3, v9

    move-wide/from16 v6, v16

    goto :goto_51

    :cond_9c
    move-wide/from16 v16, v6

    return-wide v16

    .line 1478
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1477
    :cond_a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 1532
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a6

    .line 1544
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_d

    return-wide v3

    .line 1548
    :cond_d
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long v7, v5, p2

    cmp-long v9, v7, p2

    if-gez v9, :cond_23

    :goto_15
    cmp-long v0, v5, p2

    if-lez v0, :cond_33

    .line 1552
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1553
    iget v0, v2, Lokio/Segment;->limit:I

    iget v1, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_15

    .line 1558
    :cond_23
    :goto_23
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gez v7, :cond_32

    .line 1559
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, v5

    goto :goto_23

    :cond_32
    move-wide v5, v0

    .line 1568
    :cond_33
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v7, 0x0

    if-ne v0, v1, :cond_71

    .line 1570
    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    move-result v0

    const/4 v1, 0x1

    .line 1571
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 1572
    :goto_44
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_a5

    .line 1573
    iget-object v1, v2, Lokio/Segment;->data:[B

    .line 1574
    iget v7, v2, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v5

    long-to-int p2, v7

    iget p3, v2, Lokio/Segment;->limit:I

    :goto_54
    if-ge p2, p3, :cond_66

    .line 1575
    aget-byte v7, v1, p2

    if-eq v7, v0, :cond_60

    if-ne v7, p1, :cond_5d

    goto :goto_60

    :cond_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_54

    .line 1577
    :cond_60
    :goto_60
    iget p1, v2, Lokio/Segment;->pos:I

    :goto_62
    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v5

    return-wide p1

    .line 1582
    :cond_66
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 1584
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v5

    goto :goto_44

    .line 1588
    :cond_71
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    .line 1589
    :goto_75
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v8, v5, v0

    if-gez v8, :cond_a5

    .line 1590
    iget-object v0, v2, Lokio/Segment;->data:[B

    .line 1591
    iget v1, v2, Lokio/Segment;->pos:I

    int-to-long v8, v1

    add-long/2addr v8, p2

    sub-long/2addr v8, v5

    long-to-int p2, v8

    iget p3, v2, Lokio/Segment;->limit:I

    :goto_85
    if-ge p2, p3, :cond_9a

    .line 1592
    aget-byte v1, v0, p2

    .line 1593
    array-length v8, p1

    const/4 v9, 0x0

    :goto_8b
    if-ge v9, v8, :cond_97

    aget-byte v10, p1, v9

    if-ne v1, v10, :cond_94

    .line 1594
    iget p1, v2, Lokio/Segment;->pos:I

    goto :goto_62

    :cond_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    :cond_97
    add-int/lit8 p2, p2, 0x1

    goto :goto_85

    .line 1599
    :cond_9a
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    .line 1601
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v5

    goto :goto_75

    :cond_a5
    return-wide v3

    .line 1536
    :cond_a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .line 117
    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .registers 2

    .line 1684
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 75
    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .registers 10

    const/4 v4, 0x0

    .line 1609
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_32

    if-ltz p4, :cond_32

    if-ltz p5, :cond_32

    .line 1614
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, p1

    int-to-long v3, p5

    cmp-long v5, v0, v3

    if-ltz v5, :cond_32

    .line 1618
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p5, :cond_30

    int-to-long v3, v0

    add-long/2addr v3, p1

    .line 1622
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v1

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v1, v3, :cond_2d

    return v2

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_30
    const/4 p1, 0x1

    return p1

    :cond_32
    :goto_32
    return v2
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 902
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 903
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 905
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/Segment;->pos:I

    .line 906
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 908
    iget p1, v0, Lokio/Segment;->pos:I

    iget v2, v0, Lokio/Segment;->limit:I

    if-ne p1, v2, :cond_34

    .line 909
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 910
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_34
    return v1
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    .line 867
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 11

    .line 880
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 882
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    .line 884
    :cond_d
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 885
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/Segment;->pos:I

    .line 888
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lokio/Buffer;->size:J

    .line 890
    iget p1, v0, Lokio/Segment;->pos:I

    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_37

    .line 891
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 892
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_37
    return p3
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9

    if-eqz p1, :cond_2e

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    .line 1398
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    .line 1400
    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-wide p2

    .line 1397
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1396
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAll(Lokio/Sink;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_b

    .line 677
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_b
    return-wide v0
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .registers 2

    .line 1849
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .registers 3

    .line 1853
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_a

    .line 1857
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v0, 0x1

    .line 1858
    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    .line 1854
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 10

    .line 280
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2a

    .line 282
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 283
    iget v1, v0, Lokio/Segment;->pos:I

    .line 284
    iget v2, v0, Lokio/Segment;->limit:I

    .line 286
    iget-object v3, v0, Lokio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    .line 287
    aget-byte v1, v3, v1

    .line 288
    iget-wide v5, p0, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->size:J

    if-ne v4, v2, :cond_27

    .line 291
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 292
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return v1

    .line 294
    :cond_27
    iput v4, v0, Lokio/Segment;->pos:I

    return v1

    .line 280
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteArray()[B
    .registers 3

    .line 849
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 851
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 856
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 p1, 0x7fffffff

    cmp-long v0, v4, p1

    if-gtz v0, :cond_16

    long-to-int p1, v4

    .line 861
    new-array p1, p1, [B

    .line 862
    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-object p1

    .line 858
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByteString()Lokio/ByteString;
    .registers 3

    .line 540
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 544
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 18

    move-object/from16 v0, p0

    .line 426
    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b4

    const/4 v1, 0x0

    const-wide/16 v5, -0x7

    move-wide v6, v5

    const/4 v2, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    .line 438
    :cond_11
    iget-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 440
    iget-object v9, v8, Lokio/Segment;->data:[B

    .line 441
    iget v10, v8, Lokio/Segment;->pos:I

    .line 442
    iget v11, v8, Lokio/Segment;->limit:I

    :goto_19
    if-ge v10, v11, :cond_95

    .line 445
    aget-byte v12, v9, v10

    const/16 v13, 0x30

    if-lt v12, v13, :cond_69

    const/16 v13, 0x39

    if-gt v12, v13, :cond_69

    rsub-int/lit8 v13, v12, 0x30

    const-wide v14, -0xcccccccccccccccL

    cmp-long v16, v4, v14

    if-ltz v16, :cond_3f

    if-nez v16, :cond_38

    int-to-long v14, v13

    cmp-long v16, v14, v6

    if-gez v16, :cond_38

    goto :goto_3f

    :cond_38
    const-wide/16 v14, 0xa

    mul-long v4, v4, v14

    int-to-long v12, v13

    add-long/2addr v4, v12

    goto :goto_74

    .line 451
    :cond_3f
    :goto_3f
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, v4, v5}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v1

    if-nez v2, :cond_51

    .line 452
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 453
    :cond_51
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number too large: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_69
    const/16 v13, 0x2d

    const/4 v14, 0x1

    if-ne v12, v13, :cond_79

    if-nez v1, :cond_79

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    const/4 v2, 0x1

    :goto_74
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_79
    if-eqz v1, :cond_7d

    const/4 v3, 0x1

    goto :goto_95

    .line 462
    :cond_7d
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_95
    :goto_95
    if-ne v10, v11, :cond_a1

    .line 472
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v9

    iput-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 473
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_a3

    .line 475
    :cond_a1
    iput v10, v8, Lokio/Segment;->pos:I

    :goto_a3
    if-nez v3, :cond_a9

    .line 477
    iget-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v8, :cond_11

    .line 479
    :cond_a9
    iget-wide v6, v0, Lokio/Buffer;->size:J

    int-to-long v8, v1

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lokio/Buffer;->size:J

    if-eqz v2, :cond_b2

    return-wide v4

    :cond_b2
    neg-long v1, v4

    return-wide v1

    .line 426
    :cond_b4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    .line 234
    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0

    .line 240
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully(Lokio/Buffer;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 667
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_a

    .line 671
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-void

    .line 668
    :cond_a
    invoke-virtual {p1, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 669
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 872
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 873
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    .line 874
    :cond_f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 16

    .line 484
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a3

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 491
    :cond_b
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 493
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 494
    iget v8, v6, Lokio/Segment;->pos:I

    .line 495
    iget v9, v6, Lokio/Segment;->limit:I

    :goto_13
    if-ge v8, v9, :cond_88

    .line 500
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_22

    const/16 v11, 0x39

    if-gt v10, v11, :cond_22

    add-int/lit8 v11, v10, -0x30

    goto :goto_37

    :cond_22
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2d

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2d

    add-int/lit8 v11, v10, -0x57

    goto :goto_37

    :cond_2d
    const/16 v11, 0x41

    if-lt v10, v11, :cond_6c

    const/16 v11, 0x46

    if-gt v10, v11, :cond_6c

    add-int/lit8 v11, v10, -0x37

    :goto_37
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_47

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 519
    :cond_47
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 520
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number too large: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6c
    if-eqz v0, :cond_70

    const/4 v1, 0x1

    goto :goto_88

    .line 509
    :cond_70
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    :goto_88
    if-ne v8, v9, :cond_94

    .line 528
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 529
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_96

    .line 531
    :cond_94
    iput v8, v6, Lokio/Segment;->pos:I

    :goto_96
    if-nez v1, :cond_9c

    .line 533
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_b

    .line 535
    :cond_9c
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lokio/Buffer;->size:J

    return-wide v4

    .line 484
    :cond_a3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt()I
    .registers 11

    .line 348
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6b

    .line 350
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 351
    iget v1, v0, Lokio/Segment;->pos:I

    .line 352
    iget v4, v0, Lokio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_35

    .line 356
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 357
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 358
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 359
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 362
    :cond_35
    iget-object v5, v0, Lokio/Segment;->data:[B

    add-int/lit8 v7, v1, 0x1

    .line 363
    aget-byte v8, v5, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v1, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x3

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    add-int/2addr v1, v6

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v7

    .line 367
    iget-wide v6, p0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lokio/Buffer;->size:J

    if-ne v1, v4, :cond_68

    .line 370
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 371
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return v5

    .line 373
    :cond_68
    iput v1, v0, Lokio/Segment;->pos:I

    return v5

    .line 348
    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readIntLe()I
    .registers 2

    .line 418
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 18

    move-object/from16 v0, p0

    .line 380
    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_90

    .line 382
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 383
    iget v2, v1, Lokio/Segment;->pos:I

    .line 384
    iget v5, v1, Lokio/Segment;->limit:I

    sub-int v6, v5, v2

    const/16 v7, 0x20

    const/16 v8, 0x8

    if-ge v6, v8, :cond_2c

    .line 388
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    shl-long/2addr v1, v7

    .line 389
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1

    .line 392
    :cond_2c
    iget-object v6, v1, Lokio/Segment;->data:[B

    add-int/lit8 v9, v2, 0x1

    .line 393
    aget-byte v10, v6, v2

    int-to-long v10, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v14, 0x38

    shl-long/2addr v10, v14

    add-int/lit8 v14, v2, 0x2

    aget-byte v9, v6, v9

    move-wide v15, v3

    int-to-long v3, v9

    and-long/2addr v3, v12

    const/16 v9, 0x30

    shl-long/2addr v3, v9

    or-long/2addr v3, v10

    add-int/lit8 v9, v2, 0x3

    aget-byte v10, v6, v14

    int-to-long v10, v10

    and-long/2addr v10, v12

    const/16 v14, 0x28

    shl-long/2addr v10, v14

    or-long/2addr v3, v10

    add-int/lit8 v10, v2, 0x4

    aget-byte v9, v6, v9

    const/16 v11, 0x8

    const/16 v14, 0x20

    int-to-long v7, v9

    and-long/2addr v7, v12

    shl-long/2addr v7, v14

    or-long/2addr v3, v7

    add-int/lit8 v7, v2, 0x5

    aget-byte v8, v6, v10

    int-to-long v8, v8

    and-long/2addr v8, v12

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v2, 0x6

    aget-byte v7, v6, v7

    int-to-long v9, v7

    and-long/2addr v9, v12

    const/16 v7, 0x10

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/lit8 v7, v2, 0x7

    aget-byte v8, v6, v8

    int-to-long v8, v8

    and-long/2addr v8, v12

    shl-long/2addr v8, v11

    or-long/2addr v3, v8

    add-int/2addr v2, v11

    aget-byte v6, v6, v7

    int-to-long v6, v6

    and-long/2addr v6, v12

    or-long/2addr v3, v6

    .line 401
    iget-wide v6, v0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v15

    iput-wide v6, v0, Lokio/Buffer;->size:J

    if-ne v2, v5, :cond_8d

    .line 404
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 405
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return-wide v3

    .line 407
    :cond_8d
    iput v2, v1, Lokio/Segment;->pos:I

    return-wide v3

    .line 380
    :cond_90
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size < 8: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLongLe()J
    .registers 3

    .line 422
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 10

    .line 319
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_49

    .line 321
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 322
    iget v1, v0, Lokio/Segment;->pos:I

    .line 323
    iget v4, v0, Lokio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_24

    .line 327
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 328
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 332
    :cond_24
    iget-object v5, v0, Lokio/Segment;->data:[B

    add-int/lit8 v7, v1, 0x1

    .line 333
    aget-byte v8, v5, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v6

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    .line 335
    iget-wide v6, p0, Lokio/Buffer;->size:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lokio/Buffer;->size:J

    if-ne v1, v4, :cond_45

    .line 338
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 339
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_47

    .line 341
    :cond_45
    iput v1, v0, Lokio/Segment;->pos:I

    :goto_47
    int-to-short v0, v5

    return v0

    .line 319
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShortLe()S
    .registers 2

    .line 414
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 703
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    if-eqz p3, :cond_6b

    const-wide/32 p1, 0x7fffffff

    cmp-long v0, v4, p1

    if-gtz v0, :cond_57

    const-wide/16 p1, 0x0

    cmp-long v0, v4, p1

    if-nez v0, :cond_1a

    .line 708
    const-string p1, ""

    return-object p1

    .line 710
    :cond_1a
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 711
    iget p2, p1, Lokio/Segment;->pos:I

    int-to-long v0, p2

    add-long/2addr v0, v4

    iget p2, p1, Lokio/Segment;->limit:I

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-lez p2, :cond_31

    .line 713
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p2

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 716
    :cond_31
    new-instance p2, Ljava/lang/String;

    iget-object v0, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    long-to-int v2, v4

    invoke-direct {p2, v0, v1, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 717
    iget p3, p1, Lokio/Segment;->pos:I

    int-to-long v0, p3

    add-long/2addr v0, v4

    long-to-int p3, v0

    iput p3, p1, Lokio/Segment;->pos:I

    .line 718
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->size:J

    .line 720
    iget p3, p1, Lokio/Segment;->pos:I

    iget v0, p1, Lokio/Segment;->limit:I

    if-ne p3, v0, :cond_56

    .line 721
    invoke-virtual {p1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p3

    iput-object p3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 722
    invoke-static {p1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_56
    return-object p2

    .line 706
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 704
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 696
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 698
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .registers 2

    .line 1835
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .registers 3

    .line 1839
    iget-object v0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-nez v0, :cond_a

    .line 1843
    iput-object p0, p1, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v0, 0x0

    .line 1844
    iput-boolean v0, p1, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    return-object p1

    .line 1840
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    .line 684
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 686
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 691
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 773
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_aa

    .line 775
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1c

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_3f

    :cond_1c
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_28

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    const/16 v6, 0x80

    goto :goto_3f

    :cond_28
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_34

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_3f

    :cond_34
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a4

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 810
    :goto_3f
    iget-wide v7, p0, Lokio/Buffer;->size:J

    int-to-long v9, v5

    cmp-long v11, v7, v9

    if-ltz v11, :cond_75

    :goto_46
    if-ge v2, v5, :cond_5d

    int-to-long v7, v2

    .line 819
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_59

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 825
    :cond_59
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    return v4

    .line 830
    :cond_5d
    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_66

    return v4

    :cond_66
    const v0, 0xd800

    if-lt v1, v0, :cond_71

    const v0, 0xdfff

    if-gt v1, v0, :cond_71

    return v4

    :cond_71
    if-ge v1, v6, :cond_74

    return v4

    :cond_74
    return v1

    .line 811
    :cond_75
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size < "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a4
    const-wide/16 v0, 0x1

    .line 806
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return v4

    .line 773
    :cond_aa
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0xa

    .line 729
    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 732
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0

    .line 735
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v0

    if-lez v4, :cond_1c

    sub-long v0, p1, v2

    .line 758
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1c

    .line 760
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 761
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-object p1

    .line 766
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 767
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 739
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8e

    const-wide/16 v6, 0x1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_12

    goto :goto_14

    :cond_12
    add-long v0, p1, v6

    :goto_14
    move-wide v4, v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    .line 745
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v1

    const-wide/16 v8, -0x1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_29

    .line 746
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 747
    :cond_29
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-gez v3, :cond_48

    sub-long v1, v4, v6

    .line 748
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_48

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_48

    .line 749
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 751
    :cond_48
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x20

    .line 752
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 753
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "limit < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .registers 6

    .line 113
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public require(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1673
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_7

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1674
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1676
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1e
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_31

    .line 1677
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_31
    return-object v0
.end method

.method public select(Lokio/Options;)I
    .registers 5

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0, p1, v0}, Lokio/Buffer;->selectPrefix(Lokio/Options;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    return v1

    .line 552
    :cond_9
    iget-object p1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    .line 554
    :try_start_12
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_15} :catch_16

    return v0

    .line 556
    :catch_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method selectPrefix(Lokio/Options;Z)I
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 574
    iget-object v2, v1, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v3, -0x2

    if-nez v2, :cond_13

    if-eqz p2, :cond_c

    return v3

    .line 577
    :cond_c
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0, v2}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 581
    :cond_13
    iget-object v4, v2, Lokio/Segment;->data:[B

    .line 582
    iget v5, v2, Lokio/Segment;->pos:I

    .line 583
    iget v6, v2, Lokio/Segment;->limit:I

    .line 585
    iget-object v0, v0, Lokio/Options;->trie:[I

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v10, v2

    const/4 v9, 0x0

    const/4 v11, -0x1

    :goto_20
    add-int/lit8 v12, v9, 0x1

    .line 592
    aget v13, v0, v9

    add-int/lit8 v9, v9, 0x2

    .line 594
    aget v12, v0, v12

    if-eq v12, v8, :cond_2b

    move v11, v12

    :cond_2b
    if-nez v10, :cond_2e

    goto :goto_55

    :cond_2e
    const/4 v12, 0x0

    if-gez v13, :cond_71

    mul-int/lit8 v13, v13, -0x1

    add-int v14, v9, v13

    :goto_35
    add-int/lit8 v13, v5, 0x1

    .line 608
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v15, v9, 0x1

    .line 609
    aget v9, v0, v9

    if-eq v5, v9, :cond_42

    goto :goto_7b

    :cond_42
    if-ne v15, v14, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    if-ne v13, v6, :cond_61

    .line 614
    iget-object v4, v10, Lokio/Segment;->next:Lokio/Segment;

    .line 615
    iget v6, v4, Lokio/Segment;->pos:I

    .line 616
    iget-object v9, v4, Lokio/Segment;->data:[B

    .line 617
    iget v10, v4, Lokio/Segment;->limit:I

    if-ne v4, v2, :cond_5b

    if-nez v5, :cond_58

    :goto_55
    if-eqz p2, :cond_7b

    return v3

    :cond_58
    move-object v4, v9

    move-object v9, v12

    goto :goto_64

    :cond_5b
    move-object/from16 v16, v9

    move-object v9, v4

    move-object/from16 v4, v16

    goto :goto_64

    :cond_61
    move-object v9, v10

    move v10, v6

    move v6, v13

    :goto_64
    if-eqz v5, :cond_6c

    .line 625
    aget v5, v0, v15

    move v3, v6

    move v6, v10

    move-object v10, v9

    goto :goto_92

    :cond_6c
    move v5, v6

    move v6, v10

    move-object v10, v9

    move v9, v15

    goto :goto_35

    :cond_71
    add-int/lit8 v14, v5, 0x1

    .line 632
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int v15, v9, v13

    :goto_79
    if-ne v9, v15, :cond_7c

    :cond_7b
    :goto_7b
    return v11

    .line 637
    :cond_7c
    aget v3, v0, v9

    if-ne v5, v3, :cond_99

    add-int/2addr v9, v13

    .line 638
    aget v5, v0, v9

    if-ne v14, v6, :cond_91

    .line 647
    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    .line 648
    iget v3, v10, Lokio/Segment;->pos:I

    .line 649
    iget-object v4, v10, Lokio/Segment;->data:[B

    .line 650
    iget v6, v10, Lokio/Segment;->limit:I

    if-ne v10, v2, :cond_92

    move-object v10, v12

    goto :goto_92

    :cond_91
    move v3, v14

    :cond_92
    :goto_92
    if-ltz v5, :cond_95

    return v5

    :cond_95
    neg-int v9, v5

    move v5, v3

    const/4 v3, -0x2

    goto :goto_20

    :cond_99
    add-int/lit8 v9, v9, 0x1

    const/4 v3, -0x2

    goto :goto_79
.end method

.method public final sha1()Lokio/ByteString;
    .registers 2

    .line 1689
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .registers 2

    .line 1694
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .registers 2

    .line 1699
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_41

    .line 931
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3b

    .line 933
    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 934
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr p1, v4

    .line 936
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 938
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 939
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 940
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 941
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 931
    :cond_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_41
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .registers 6

    .line 1820
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    long-to-int v1, v0

    .line 1823
    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 1821
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final snapshot(I)Lokio/ByteString;
    .registers 3

    if-nez p1, :cond_5

    .line 1830
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object p1

    .line 1831
    :cond_5
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 1668
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1801
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lokio/Segment;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2c

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2c

    .line 1292
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_16

    .line 1293
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1294
    iput-object p1, p1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    return-object p1

    .line 1297
    :cond_16
    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1298
    iget v2, v1, Lokio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_23

    iget-boolean p1, v1, Lokio/Segment;->owner:Z

    if-nez p1, :cond_22

    goto :goto_23

    :cond_22
    return-object v1

    .line 1299
    :cond_23
    :goto_23
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object p1

    return-object p1

    .line 1290
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2b

    .line 1116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_7
    if-lez v1, :cond_24

    const/4 v2, 0x1

    .line 1119
    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1121
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1122
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 1125
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    goto :goto_7

    .line 1128
    :cond_24
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    return v0

    .line 1114
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .registers 3

    if-eqz p1, :cond_6

    .line 948
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    return-object p0

    .line 947
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lokio/Buffer;
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 1091
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 1090
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lokio/Buffer;
    .registers 11

    if-eqz p1, :cond_2f

    .line 1096
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_a
    if-ge p2, p3, :cond_29

    const/4 v0, 0x1

    .line 1100
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    .line 1102
    iget v2, v0, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1103
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 1106
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    goto :goto_a

    .line 1109
    :cond_29
    iget-wide p1, p0, Lokio/Buffer;->size:J

    add-long/2addr p1, v5

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0

    .line 1095
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_18

    .line 1143
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    sub-long/2addr p2, v0

    goto :goto_0

    .line 1144
    :cond_12
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_18
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lokio/Buffer;J)V
    .registers 10

    if-eqz p1, :cond_93

    if-eq p1, p0, :cond_8b

    .line 1357
    iget-wide v0, p1, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8a

    .line 1361
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_5c

    .line 1362
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_53

    .line 1363
    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-eqz v1, :cond_53

    iget v1, v0, Lokio/Segment;->limit:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_38

    const/4 v3, 0x0

    goto :goto_3a

    .line 1364
    :cond_38
    iget v3, v0, Lokio/Segment;->pos:I

    :goto_3a
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v5, v1, v3

    if-gtz v5, :cond_53

    .line 1366
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1367
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1368
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-void

    .line 1373
    :cond_53
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1378
    :cond_5c
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1379
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1380
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1381
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_75

    .line 1382
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1383
    iput-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_7e

    .line 1385
    :cond_75
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1386
    invoke-virtual {v3, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    .line 1387
    invoke-virtual {v0}, Lokio/Segment;->compact()V

    .line 1389
    :goto_7e
    iget-wide v3, p1, Lokio/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lokio/Buffer;->size:J

    .line 1390
    iget-wide v3, p0, Lokio/Buffer;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v1

    goto :goto_c

    :cond_8a
    return-void

    .line 1356
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1355
    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Lokio/Source;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x2000

    .line 1135
    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    .line 1133
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lokio/Buffer;
    .registers 6

    const/4 v0, 0x1

    .line 1151
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1152
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1153
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 1213
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v3, 0x1

    if-gez v2, :cond_1e

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1c

    .line 1220
    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v6, 0xa

    cmp-long v8, p1, v4

    if-gez v8, :cond_6b

    const-wide/16 v4, 0x2710

    cmp-long v8, p1, v4

    if-gez v8, :cond_49

    const-wide/16 v4, 0x64

    cmp-long v8, p1, v4

    if-gez v8, :cond_3d

    cmp-long v4, p1, v6

    if-gez v4, :cond_3a

    goto/16 :goto_e3

    :cond_3a
    const/4 v3, 0x2

    goto/16 :goto_e3

    :cond_3d
    const-wide/16 v3, 0x3e8

    cmp-long v5, p1, v3

    if-gez v5, :cond_46

    const/4 v3, 0x3

    goto/16 :goto_e3

    :cond_46
    const/4 v3, 0x4

    goto/16 :goto_e3

    :cond_49
    const-wide/32 v3, 0xf4240

    cmp-long v5, p1, v3

    if-gez v5, :cond_5d

    const-wide/32 v3, 0x186a0

    cmp-long v5, p1, v3

    if-gez v5, :cond_5a

    const/4 v3, 0x5

    goto/16 :goto_e3

    :cond_5a
    const/4 v3, 0x6

    goto/16 :goto_e3

    :cond_5d
    const-wide/32 v3, 0x989680

    cmp-long v5, p1, v3

    if-gez v5, :cond_67

    const/4 v3, 0x7

    goto/16 :goto_e3

    :cond_67
    const/16 v3, 0x8

    goto/16 :goto_e3

    :cond_6b
    const-wide v3, 0xe8d4a51000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_99

    const-wide v3, 0x2540be400L

    cmp-long v5, p1, v3

    if-gez v5, :cond_8a

    const-wide/32 v3, 0x3b9aca00

    cmp-long v5, p1, v3

    if-gez v5, :cond_87

    const/16 v3, 0x9

    goto :goto_e3

    :cond_87
    const/16 v3, 0xa

    goto :goto_e3

    :cond_8a
    const-wide v3, 0x174876e800L

    cmp-long v5, p1, v3

    if-gez v5, :cond_96

    const/16 v3, 0xb

    goto :goto_e3

    :cond_96
    const/16 v3, 0xc

    goto :goto_e3

    :cond_99
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_bd

    const-wide v3, 0x9184e72a000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_ae

    const/16 v3, 0xd

    goto :goto_e3

    :cond_ae
    const-wide v3, 0x5af3107a4000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_ba

    const/16 v3, 0xe

    goto :goto_e3

    :cond_ba
    const/16 v3, 0xf

    goto :goto_e3

    :cond_bd
    const-wide v3, 0x16345785d8a0000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d5

    const-wide v3, 0x2386f26fc10000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_d2

    const/16 v3, 0x10

    goto :goto_e3

    :cond_d2
    const/16 v3, 0x11

    goto :goto_e3

    :cond_d5
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v5, p1, v3

    if-gez v5, :cond_e1

    const/16 v3, 0x12

    goto :goto_e3

    :cond_e1
    const/16 v3, 0x13

    :goto_e3
    if-eqz v2, :cond_e7

    add-int/lit8 v3, v3, 0x1

    .line 1249
    :cond_e7
    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v4

    .line 1250
    iget-object v5, v4, Lokio/Segment;->data:[B

    .line 1251
    iget v8, v4, Lokio/Segment;->limit:I

    add-int/2addr v8, v3

    :goto_f0
    cmp-long v9, p1, v0

    if-eqz v9, :cond_101

    .line 1253
    rem-long v9, p1, v6

    long-to-int v10, v9

    add-int/lit8 v8, v8, -0x1

    .line 1254
    sget-object v9, Lokio/Buffer;->DIGITS:[B

    aget-byte v9, v9, v10

    aput-byte v9, v5, v8

    .line 1255
    div-long/2addr p1, v6

    goto :goto_f0

    :cond_101
    if-eqz v2, :cond_109

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 1258
    aput-byte p1, v5, v8

    .line 1261
    :cond_109
    iget p1, v4, Lokio/Segment;->limit:I

    add-int/2addr p1, v3

    iput p1, v4, Lokio/Segment;->limit:I

    .line 1262
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 1269
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 1272
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1274
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1275
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1276
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lokio/Segment;->limit:I

    :goto_26
    if-lt v4, v5, :cond_36

    .line 1277
    sget-object v6, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 1280
    :cond_36
    iget p1, v2, Lokio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Lokio/Segment;->limit:I

    .line 1281
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lokio/Buffer;
    .registers 9

    const/4 v0, 0x4

    .line 1173
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1174
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1175
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1176
    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 1177
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 1178
    aput-byte v6, v2, v5

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1179
    aput-byte p1, v2, v4

    .line 1180
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1181
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .registers 2

    .line 1186
    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lokio/Buffer;
    .registers 14

    const/16 v0, 0x8

    .line 1190
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1191
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1192
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1193
    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    const/16 v6, 0x30

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1194
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    const/16 v6, 0x28

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1195
    aput-byte v6, v2, v5

    add-int/lit8 v5, v3, 0x4

    const/16 v6, 0x20

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1196
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x5

    const/16 v6, 0x18

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1197
    aput-byte v6, v2, v5

    add-int/lit8 v5, v3, 0x6

    const/16 v6, 0x10

    ushr-long v9, p1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1198
    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x7

    ushr-long v9, p1, v0

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 1199
    aput-byte v6, v2, v5

    add-int/2addr v3, v0

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 1200
    aput-byte p1, v2, v4

    .line 1201
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1202
    iget-wide p1, p0, Lokio/Buffer;->size:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .registers 3

    .line 1207
    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lokio/Buffer;
    .registers 8

    const/4 v0, 0x2

    .line 1158
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1159
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1160
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 1161
    aput-byte v5, v2, v3

    add-int/2addr v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1162
    aput-byte p1, v2, v4

    .line 1163
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1164
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .registers 2

    int-to-short p1, p1

    .line 1169
    invoke-static {p1}, Lokio/Util;->reverseBytesShort(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .registers 6

    if-eqz p1, :cond_82

    if-ltz p2, :cond_6e

    if-lt p3, p2, :cond_52

    .line 1079
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    if-eqz p4, :cond_2a

    .line 1084
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 1085
    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 1086
    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1

    .line 1083
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1080
    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > string.length: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1077
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "endIndex < beginIndex: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1075
    :cond_6e
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "beginIndex < 0: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1074
    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .registers 5

    const/4 v0, 0x0

    .line 1069
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_44

    .line 211
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 213
    iget-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;

    move-object v0, p2

    move-wide p2, v4

    :cond_e
    :goto_e
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_43

    .line 215
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 216
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/Segment;->pos:I

    .line 219
    iget-wide v3, p0, Lokio/Buffer;->size:J

    int-to-long v1, v2

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v1

    .line 222
    iget v1, v0, Lokio/Segment;->pos:I

    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_e

    .line 224
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 225
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    move-object v0, v1

    goto :goto_e

    :cond_43
    return-object p0

    .line 210
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .registers 4

    const/4 v0, 0x0

    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .registers 11

    if-eqz p1, :cond_11e

    if-ltz p2, :cond_10a

    if-lt p3, p2, :cond_ee

    .line 962
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_ce

    :goto_c
    if-ge p2, p3, :cond_cd

    .line 969
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4e

    const/4 v2, 0x1

    .line 972
    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 973
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 974
    iget v4, v2, Lokio/Segment;->limit:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 975
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 978
    aput-byte v0, v3, p2

    :goto_2c
    if-ge v6, v5, :cond_3d

    .line 983
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_35

    goto :goto_3d

    :cond_35
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 985
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, v6

    .line 988
    iget p2, v2, Lokio/Segment;->limit:I

    sub-int/2addr v4, p2

    .line 989
    iget p2, v2, Lokio/Segment;->limit:I

    add-int/2addr p2, v4

    iput p2, v2, Lokio/Segment;->limit:I

    .line 990
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    move p2, v6

    goto :goto_c

    :cond_4e
    const/16 v2, 0x800

    if-ge v0, v2, :cond_62

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 994
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 995
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :goto_5f
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_62
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b8

    const v2, 0xdfff

    if-le v0, v2, :cond_6f

    goto :goto_b8

    :cond_6f
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_78

    .line 1008
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_79

    :cond_78
    const/4 v5, 0x0

    :goto_79
    const v6, 0xdbff

    if-gt v0, v6, :cond_b2

    const v6, 0xdc00

    if-lt v5, v6, :cond_b2

    if-le v5, v2, :cond_86

    goto :goto_b2

    :cond_86
    const v2, -0xd801

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0xa

    const v2, -0xdc01

    and-int/2addr v2, v5

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 1021
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 1022
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 1023
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 1024
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    .line 1010
    :cond_b2
    :goto_b2
    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move p2, v4

    goto/16 :goto_c

    :cond_b8
    :goto_b8
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 1000
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 1001
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 1002
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_5f

    :cond_cd
    return-object p0

    .line 963
    :cond_ce
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex > string.length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 960
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex < beginIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 958
    :cond_10a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "beginIndex < 0: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 957
    :cond_11e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 1035
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-object p0

    :cond_8
    const/16 v1, 0x800

    const/16 v2, 0x3f

    if-ge p1, v1, :cond_1b

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 1039
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 1040
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-object p0

    :cond_1b
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_41

    const v1, 0xd800

    if-lt p1, v1, :cond_2d

    const v1, 0xdfff

    if-gt p1, v1, :cond_2d

    .line 1045
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-object p0

    :cond_2d
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 1048
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 1049
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 1050
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-object p0

    :cond_41
    const v1, 0x10ffff

    if-gt p1, v1, :cond_61

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 1055
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v1, p1, 0xc

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 1056
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    .line 1057
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/2addr p1, v2

    or-int/2addr p1, v0

    .line 1058
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-object p0

    .line 1061
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1062
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

###### Class okio.Buffer.AnonymousClass1 (okio.Buffer$1)
.class Lokio/Buffer$1;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Buffer;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lokio/Buffer$1;->this$0:Lokio/Buffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokio/Buffer$1;->this$0:Lokio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    .line 77
    iget-object v0, p0, Lokio/Buffer$1;->this$0:Lokio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 81
    iget-object v0, p0, Lokio/Buffer$1;->this$0:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

###### Class okio.Buffer.AnonymousClass2 (okio.Buffer$2)
.class Lokio/Buffer$2;
.super Ljava/io/InputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Buffer;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 128
    iget-object v0, p0, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public read()I
    .registers 6

    .line 119
    iget-object v0, p0, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    iget-object v0, p0, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5

    .line 124
    iget-object v0, p0, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokio/Buffer$2;->this$0:Lokio/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okio.Buffer.UnsafeCursor (okio.Buffer$UnsafeCursor)
.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 2062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2067
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    .line 2069
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2070
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 2290
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 2294
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 2295
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v1, -0x1

    .line 2296
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2297
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 2298
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2299
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void

    .line 2291
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final expandBuffer(I)J
    .registers 11

    if-lez p1, :cond_56

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_42

    .line 2265
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v1, :cond_3a

    .line 2268
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_32

    .line 2272
    iget-wide v1, v1, Lokio/Buffer;->size:J

    .line 2273
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v3, p1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object p1

    .line 2274
    iget v3, p1, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    .line 2275
    iput v0, p1, Lokio/Segment;->limit:I

    .line 2276
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    int-to-long v5, v3

    add-long v7, v1, v5

    iput-wide v7, v4, Lokio/Buffer;->size:J

    .line 2279
    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2280
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2281
    iget-object p1, p1, Lokio/Segment;->data:[B

    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v3, 0x2000

    .line 2282
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2283
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-wide v5

    .line 2269
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2266
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2263
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2260
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "minByteCount <= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()I
    .registers 6

    .line 2078
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->size:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_25

    .line 2079
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 2080
    :cond_19
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 2078
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final resizeBuffer(J)J
    .registers 16

    .line 2178
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_a2

    .line 2181
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_9a

    .line 2185
    iget-wide v0, v0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_5f

    cmp-long v4, p1, v2

    if-ltz v4, :cond_4b

    sub-long v4, v0, p1

    :goto_16
    cmp-long v6, v4, v2

    if-lez v6, :cond_3e

    .line 2192
    iget-object v6, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    .line 2193
    iget v7, v6, Lokio/Segment;->limit:I

    iget v8, v6, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v9, v7, v4

    if-gtz v9, :cond_37

    .line 2195
    iget-object v9, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v10

    iput-object v10, v9, Lokio/Buffer;->head:Lokio/Segment;

    .line 2196
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    sub-long/2addr v4, v7

    goto :goto_16

    .line 2199
    :cond_37
    iget v2, v6, Lokio/Segment;->limit:I

    int-to-long v2, v2

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, v6, Lokio/Segment;->limit:I

    :cond_3e
    const/4 v2, 0x0

    .line 2204
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2205
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2206
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v2, -0x1

    .line 2207
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2208
    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    goto :goto_95

    .line 2188
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newSize < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    if-lez v4, :cond_95

    sub-long v4, p1, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :cond_65
    :goto_65
    cmp-long v8, v4, v2

    if-lez v8, :cond_95

    .line 2213
    iget-object v8, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-virtual {v8, v6}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v8

    .line 2214
    iget v9, v8, Lokio/Segment;->limit:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    .line 2215
    iget v9, v8, Lokio/Segment;->limit:I

    add-int/2addr v9, v10

    iput v9, v8, Lokio/Segment;->limit:I

    int-to-long v11, v10

    sub-long/2addr v4, v11

    if-eqz v7, :cond_65

    .line 2220
    iput-object v8, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2221
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2222
    iget-object v7, v8, Lokio/Segment;->data:[B

    iput-object v7, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2223
    iget v7, v8, Lokio/Segment;->limit:I

    sub-int/2addr v7, v10

    iput v7, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2224
    iget v7, v8, Lokio/Segment;->limit:I

    iput v7, p0, Lokio/Buffer$UnsafeCursor;->end:I

    const/4 v7, 0x0

    goto :goto_65

    .line 2230
    :cond_95
    :goto_95
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-wide p1, v2, Lokio/Buffer;->size:J

    return-wide v0

    .line 2182
    :cond_9a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2179
    :cond_a2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final seek(J)I
    .registers 14

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b0

    .line 2089
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v3, p1, v0

    if-gtz v3, :cond_b0

    if-eqz v2, :cond_a3

    .line 2094
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_1a

    goto/16 :goto_a3

    .line 2105
    :cond_1a
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->size:J

    .line 2106
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v2, v2, Lokio/Buffer;->head:Lokio/Segment;

    .line 2107
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v3, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 2108
    iget-object v4, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_40

    .line 2109
    iget-wide v7, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v9, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v4, v4, Lokio/Segment;->pos:I

    sub-int/2addr v9, v4

    int-to-long v9, v9

    sub-long/2addr v7, v9

    cmp-long v4, v7, p1

    if-lez v4, :cond_3d

    .line 2113
    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v0, v7

    goto :goto_40

    .line 2117
    :cond_3d
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    move-wide v5, v7

    :cond_40
    :goto_40
    sub-long v7, v0, p1

    sub-long v9, p1, v5

    cmp-long v4, v7, v9

    if-lez v4, :cond_5d

    .line 2127
    :goto_48
    iget v0, v2, Lokio/Segment;->limit:I

    iget v1, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v5

    cmp-long v3, p1, v0

    if-ltz v3, :cond_6d

    .line 2128
    iget v0, v2, Lokio/Segment;->limit:I

    iget v1, v2, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v5, v0

    .line 2129
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_48

    :cond_5d
    :goto_5d
    cmp-long v2, v0, p1

    if-lez v2, :cond_6b

    .line 2136
    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 2137
    iget v2, v3, Lokio/Segment;->limit:I

    iget v4, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    sub-long/2addr v0, v4

    goto :goto_5d

    :cond_6b
    move-wide v5, v0

    move-object v2, v3

    .line 2142
    :cond_6d
    iget-boolean v0, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v0, :cond_8c

    iget-boolean v0, v2, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_8c

    .line 2143
    invoke-virtual {v2}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v0

    .line 2144
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v1, v2, :cond_83

    .line 2145
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 2147
    :cond_83
    invoke-virtual {v2, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    .line 2148
    iget-object v0, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 2152
    :cond_8c
    iput-object v2, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2153
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2154
    iget-object v0, v2, Lokio/Segment;->data:[B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 2155
    iget v0, v2, Lokio/Segment;->pos:I

    sub-long/2addr p1, v5

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2156
    iget p1, v2, Lokio/Segment;->limit:I

    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 2157
    iget p2, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr p1, p2

    return p1

    :cond_a3
    :goto_a3
    const/4 v0, 0x0

    .line 2095
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    .line 2096
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 2097
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 p1, -0x1

    .line 2098
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 2099
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return p1

    .line 2090
    :cond_b0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2091
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    iget-wide v1, p2, Lokio/Buffer;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "offset=%s > size=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
