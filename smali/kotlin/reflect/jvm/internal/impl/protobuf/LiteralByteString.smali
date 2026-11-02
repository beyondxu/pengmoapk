###### Class kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString (kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
.source "LiteralByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;
    }
.end annotation


# instance fields
.field protected final bytes:[B

.field private hash:I


# direct methods
.method constructor <init>([B)V
    .registers 3

    .line 62
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;-><init>()V

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    .line 63
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    return-void
.end method

.method static hashCode(I[BII)I
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    mul-int/lit8 p0, p0, 0x1f

    .line 276
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return p0
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3

    .line 71
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected copyToInternal([BIII)V
    .registers 6

    .line 117
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 181
    :cond_4
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 185
    :cond_a
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 188
    :cond_18
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 192
    :cond_1f
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    if-eqz v0, :cond_2e

    .line 193
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->equalsRange(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;II)Z

    move-result p1

    return p1

    .line 194
    :cond_2e
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    if-eqz v0, :cond_37

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 197
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method equalsRange(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;II)Z
    .registers 8

    .line 213
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v0

    if-gt p3, v0, :cond_5c

    add-int v0, p2, p3

    .line 217
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v1

    if-gt v0, v1, :cond_31

    .line 223
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    .line 224
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    .line 225
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    add-int/2addr v2, p3

    .line 226
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result p3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result p1

    add-int/2addr p1, p2

    :goto_20
    if-ge p3, v2, :cond_2f

    .line 229
    aget-byte p2, v0, p3

    aget-byte v3, v1, p1

    if-eq p2, v3, :cond_2a

    const/4 p1, 0x0

    return p1

    :cond_2a
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_2f
    const/4 p1, 0x1

    return p1

    .line 218
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getOffsetIntoBytes()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getTreeDepth()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 251
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    if-nez v0, :cond_12

    .line 254
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->partialHash(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 259
    :cond_10
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    :cond_12
    return v0
.end method

.method protected isBalanced()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isValidUtf8()Z
    .registers 4

    .line 163
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 164
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 52
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->iterator()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$ByteIterator;
    .registers 3

    .line 307
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$1;)V

    return-object v0
.end method

.method public newCodedInput()Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;
    .registers 2

    .line 299
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->newInstance(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected partialHash(III)I
    .registers 6

    .line 271
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hashCode(I[BII)I

    move-result p1

    return p1
.end method

.method protected partialIsValidUtf8(III)I
    .registers 5

    .line 169
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 170
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1
.end method

.method protected peekCachedHashCode()I
    .registers 2

    .line 266
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->hash:I

    return v0
.end method

.method public size()I
    .registers 2

    .line 76
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString$1)
.class synthetic Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$1;
.super Ljava/lang/Object;
.source "LiteralByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString.LiteralByteIterator (kotlin.reflect.jvm.internal.impl.protobuf.LiteralByteString$LiteralByteIterator)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;
.super Ljava/lang/Object;
.source "LiteralByteString.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralByteIterator"
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V
    .registers 3

    .line 314
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    .line 316
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->limit:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$1;)V
    .registers 3

    .line 310
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 320
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Byte;
    .registers 2

    .line 325
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 310
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .registers 4

    .line 330
    :try_start_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->bytes:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    aget-byte v0, v0, v1
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    .line 332
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .registers 2

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
