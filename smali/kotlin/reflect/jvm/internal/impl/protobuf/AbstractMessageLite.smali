###### Class kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite (kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite)
.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method


# virtual methods
.method newUninitializedMessageException()Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;
    .registers 2

    .line 102
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    return-object v0
.end method

.method public toByteArray()[B
    .registers 4

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 65
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->newInstance([B)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->writeTo(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 67
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    .line 87
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v1

    .line 89
    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 92
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;->writeTo(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 93
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->flush()V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder (kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite$Builder)
.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 329
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    if-eqz v0, :cond_14

    .line 332
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;->checkForNullValues(Ljava/lang/Iterable;)V

    .line 333
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 334
    :cond_14
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_21

    .line 335
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;->checkForNullValues(Ljava/lang/Iterable;)V

    .line 336
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 338
    :cond_21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_36
    return-void
.end method

.method private static checkForNullValues(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 348
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_12
    return-void
.end method

.method protected static newUninitializedMessageException(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;
    .registers 2

    .line 316
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;->clone()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder.LimitedInputStream (kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite$Builder$LimitedInputStream)
.class final Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "AbstractMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private limit:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    .line 245
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 259
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_12

    .line 261
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    :cond_12
    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 272
    :cond_6
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 273
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_15

    .line 275
    iget p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    sub-int/2addr p2, p1

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    :cond_15
    return p1
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_18

    .line 284
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    :cond_18
    return-wide p1
.end method
