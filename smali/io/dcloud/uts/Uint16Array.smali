###### Class io.dcloud.uts.Uint16Array (io.dcloud.uts.Uint16Array)
.class public final Lio/dcloud/uts/Uint16Array;
.super Lio/dcloud/uts/TypedArray;
.source "Uint16Array.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/Uint16Array$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010(\n\u0002\u0008\u0002\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0017\u0008\u0016\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB)\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\rJ\u0008\u0010\u0013\u001a\u00020\u0003H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J_\u0010\u0016\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010\u0017*\u00020\u00012K\u0010\u0018\u001aG\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u0011H\u0017\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u001d0\u0019H\u0016J\u001f\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010 2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016\u00a2\u0006\u0002\u0010!J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020 H\u0016J_\u0010#\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010\u0017*\u00020\u00012K\u0010$\u001aG\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u0011H\u0017\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00030\u0019H\u0016J\u001c\u0010%\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010\u00032\u0008\u0010\'\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010(\u001a\u00020\u00002\u0008\u0010)\u001a\u0004\u0018\u00010\u00032\u0008\u0010\'\u001a\u0004\u0018\u00010\u0003H\u0016J\u000f\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00030+H\u0096\u0002R\u001c\u0010\u000e\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0008\u0012\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0005\u00a8\u0006-"
    }
    d2 = {
        "Lio/dcloud/uts/Uint16Array;",
        "Lio/dcloud/uts/TypedArray;",
        "length",
        "",
        "<init>",
        "(Ljava/lang/Number;)V",
        "array",
        "",
        "(Ljava/util/Collection;)V",
        "buffer",
        "Lio/dcloud/uts/ArrayBuffer;",
        "(Lio/dcloud/uts/ArrayBuffer;)V",
        "byteOffset",
        "(Lio/dcloud/uts/ArrayBuffer;Ljava/lang/Number;Ljava/lang/Number;)V",
        "BYTES_PER_ELEMENT",
        "getBYTES_PER_ELEMENT",
        "()Ljava/lang/Number;",
        "setBYTES_PER_ELEMENT",
        "BYTES_PER_ELEMENT$1",
        "getBytesPerElement",
        "convertValue",
        "value",
        "filter",
        "T",
        "predicate",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "",
        "putAuto",
        "",
        "",
        "(Ljava/lang/Integer;Ljava/lang/Number;)V",
        "getAuto",
        "map",
        "callbackfn",
        "slice",
        "start",
        "end",
        "subarray",
        "begin",
        "iterator",
        "",
        "Companion",
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
.field public static final BYTES_PER_ELEMENT:I = 0x2

.field public static final Companion:Lio/dcloud/uts/Uint16Array$Companion;


# instance fields
.field private BYTES_PER_ELEMENT$1:Ljava/lang/Number;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/dcloud/uts/Uint16Array$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/uts/Uint16Array$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/dcloud/uts/Uint16Array;->Companion:Lio/dcloud/uts/Uint16Array$Companion;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/uts/ArrayBuffer;)V
    .registers 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lio/dcloud/uts/TypedArray;-><init>(Lio/dcloud/uts/ArrayBuffer;)V

    const/4 p1, 0x2

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lio/dcloud/uts/Uint16Array;->BYTES_PER_ELEMENT$1:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/uts/ArrayBuffer;Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/uts/TypedArray;-><init>(Lio/dcloud/uts/ArrayBuffer;Ljava/lang/Number;Ljava/lang/Number;)V

    const/4 p1, 0x2

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lio/dcloud/uts/Uint16Array;->BYTES_PER_ELEMENT$1:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Lio/dcloud/uts/ArrayBuffer;Ljava/lang/Number;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 58
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/uts/Uint16Array;-><init>(Lio/dcloud/uts/ArrayBuffer;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "length"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lio/dcloud/uts/TypedArray;-><init>(Ljava/lang/Number;)V

    const/4 p1, 0x2

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lio/dcloud/uts/Uint16Array;->BYTES_PER_ELEMENT$1:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lio/dcloud/uts/TypedArray;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x2

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lio/dcloud/uts/Uint16Array;->BYTES_PER_ELEMENT$1:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public convertValue(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic filter(Lkotlin/jvm/functions/Function3;)Lio/dcloud/uts/TypedArray;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/uts/Uint16Array;->filter(Lkotlin/jvm/functions/Function3;)Lio/dcloud/uts/Uint16Array;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/TypedArray;

    return-object p1
.end method

.method public filter(Lkotlin/jvm/functions/Function3;)Lio/dcloud/uts/Uint16Array;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/uts/TypedArray;",
            ">(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Number;",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/dcloud/uts/Uint16Array;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 68
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_3f

    .line 70
    invoke-virtual {p0, v2}, Lio/dcloud/uts/Uint16Array;->getAuto(I)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v3

    .line 71
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type T of io.dcloud.uts.Uint16Array.filter"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p0

    check-cast v6, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, v4, v5, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 72
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 76
    :cond_3f
    new-instance p1, Lio/dcloud/uts/Uint16Array;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Lio/dcloud/uts/Uint16Array;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getAuto(I)Ljava/lang/Number;
    .registers 4

    .line 91
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getBYTES_PER_ELEMENT()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    int-to-short p1, p1

    .line 92
    invoke-static {p1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public getBYTES_PER_ELEMENT()Ljava/lang/Number;
    .registers 2

    .line 6
    iget-object v0, p0, Lio/dcloud/uts/Uint16Array;->BYTES_PER_ELEMENT$1:Ljava/lang/Number;

    return-object v0
.end method

.method public getBytesPerElement()Ljava/lang/Number;
    .registers 2

    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    new-instance v0, Lio/dcloud/uts/Uint16Array$iterator$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/Uint16Array$iterator$1;-><init>(Lio/dcloud/uts/Uint16Array;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic map(Lkotlin/jvm/functions/Function3;)Lio/dcloud/uts/TypedArray;
    .registers 2

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/uts/Uint16Array;->map(Lkotlin/jvm/functions/Function3;)Lio/dcloud/uts/Uint16Array;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/TypedArray;

    return-object p1
.end method

.method public map(Lkotlin/jvm/functions/Function3;)Lio/dcloud/uts/Uint16Array;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/uts/TypedArray;",
            ">(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Number;",
            "-TT;+",
            "Ljava/lang/Number;",
            ">;)",
            "Lio/dcloud/uts/Uint16Array;"
        }
    .end annotation

    const-string v0, "callbackfn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->size()I

    move-result v0

    .line 103
    new-instance v1, Lio/dcloud/uts/UTSArray;

    invoke-direct {v1}, Lio/dcloud/uts/UTSArray;-><init>()V

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_35

    .line 105
    invoke-virtual {p0, v2}, Lio/dcloud/uts/Uint16Array;->getAuto(I)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type T of io.dcloud.uts.Uint16Array.map"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, v3, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 109
    :cond_35
    new-instance p1, Lio/dcloud/uts/Uint16Array;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p1, v1}, Lio/dcloud/uts/Uint16Array;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V
    .registers 5

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_21

    .line 81
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getBYTES_PER_ELEMENT()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int p1, p1, v1

    .line 83
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p2

    .line 81
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void

    .line 86
    :cond_21
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setBYTES_PER_ELEMENT(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lio/dcloud/uts/Uint16Array;->BYTES_PER_ELEMENT$1:Ljava/lang/Number;

    return-void
.end method

.method public bridge synthetic slice(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;
    .registers 3

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/Uint16Array;->slice(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/Uint16Array;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/TypedArray;

    return-object p1
.end method

.method public slice(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/Uint16Array;
    .registers 5

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_9
    if-nez p2, :cond_f

    .line 114
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getLength()Ljava/lang/Number;

    move-result-object p2

    .line 115
    :cond_f
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 116
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lio/dcloud/uts/utils/IndexKt;->toSliceIndex(Ljava/lang/Number;I)I

    move-result p1

    .line 118
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 116
    invoke-static {p2, v1}, Lio/dcloud/uts/utils/IndexKt;->toSliceIndex(Ljava/lang/Number;I)I

    move-result p2

    :goto_2c
    if-ge p1, p2, :cond_40

    .line 120
    invoke-virtual {p0, p1}, Lio/dcloud/uts/Uint16Array;->getAuto(I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    .line 122
    :cond_40
    new-instance p1, Lio/dcloud/uts/Uint16Array;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Lio/dcloud/uts/Uint16Array;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public bridge synthetic subarray(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;
    .registers 3

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/Uint16Array;->subarray(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/Uint16Array;

    move-result-object p1

    check-cast p1, Lio/dcloud/uts/TypedArray;

    return-object p1
.end method

.method public subarray(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/Uint16Array;
    .registers 7

    const/4 v0, 0x0

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_1a

    .line 129
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-static {p1, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    if-gez v2, :cond_18

    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getLength()Ljava/lang/Number;

    move-result-object v2

    invoke-static {v2, p1}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    :cond_18
    if-nez p1, :cond_1d

    .line 130
    :cond_1a
    move-object p1, v1

    check-cast p1, Ljava/lang/Number;

    :cond_1d
    if-eqz p2, :cond_31

    .line 134
    check-cast v1, Ljava/lang/Number;

    invoke-static {p2, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-gez v1, :cond_2f

    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1, p2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    :cond_2f
    if-nez p2, :cond_35

    .line 135
    :cond_31
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getLength()Ljava/lang/Number;

    move-result-object p2

    .line 138
    :cond_35
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    .line 140
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p2, p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    .line 141
    new-instance v1, Lio/dcloud/uts/UTSArray;

    invoke-direct {v1}, Lio/dcloud/uts/UTSArray;-><init>()V

    :goto_5a
    if-ge p1, p2, :cond_73

    .line 143
    invoke-virtual {p0, p1}, Lio/dcloud/uts/Uint16Array;->getAuto(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Short;

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_5a

    .line 145
    :cond_73
    new-instance p1, Lio/dcloud/uts/Uint16Array;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p1, v1}, Lio/dcloud/uts/Uint16Array;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

###### Class io.dcloud.uts.Uint16Array.Companion (io.dcloud.uts.Uint16Array$Companion)
.class public final Lio/dcloud/uts/Uint16Array$Companion;
.super Ljava/lang/Object;
.source "Uint16Array.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/Uint16Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUint16Array.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uint16Array.kt\nio/dcloud/uts/Uint16Array$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n11228#2:164\n11563#2,3:165\n1869#3,2:168\n*S KotlinDebug\n*F\n+ 1 Uint16Array.kt\nio/dcloud/uts/Uint16Array$Companion\n*L\n24#1:164\n24#1:165,3\n36#1:168,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\n\u00a2\u0006\u0002\u0010\u000bJ2\u0010\u000c\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e2\u001c\u0008\u0002\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/dcloud/uts/Uint16Array$Companion;",
        "",
        "<init>",
        "()V",
        "BYTES_PER_ELEMENT",
        "",
        "of",
        "Lio/dcloud/uts/Uint16Array;",
        "items",
        "",
        "",
        "([Ljava/lang/Number;)Lio/dcloud/uts/Uint16Array;",
        "from",
        "arrayLike",
        "",
        "mapFn",
        "Lkotlin/Function2;",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/dcloud/uts/Uint16Array$Companion;-><init>()V

    return-void
.end method

.method public static synthetic from$default(Lio/dcloud/uts/Uint16Array$Companion;Ljava/util/Collection;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/dcloud/uts/Uint16Array;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 30
    :cond_5
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/Uint16Array$Companion;->from(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Lio/dcloud/uts/Uint16Array;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final from(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Lio/dcloud/uts/Uint16Array;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Number;",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lio/dcloud/uts/Uint16Array;"
        }
    .end annotation

    const-string v0, "arrayLike"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lio/dcloud/uts/Uint16Array;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Lio/dcloud/uts/Uint16Array;-><init>(Ljava/lang/Number;)V

    .line 36
    check-cast p1, Ljava/lang/Iterable;

    .line 168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_46

    .line 38
    move-object v5, v0

    check-cast v5, Lio/dcloud/uts/TypedArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v2, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v5, v4, v2, v3, v4}, Lio/dcloud/uts/TypedArray;->putAuto$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Integer;Ljava/lang/Number;ILjava/lang/Object;)V

    goto :goto_56

    .line 40
    :cond_46
    move-object v5, v0

    check-cast v5, Lio/dcloud/uts/TypedArray;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v5, v4, v2, v3, v4}, Lio/dcloud/uts/TypedArray;->putAuto$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Integer;Ljava/lang/Number;ILjava/lang/Object;)V

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_59
    return-object v0
.end method

.method public final varargs of([Ljava/lang/Number;)Lio/dcloud/uts/Uint16Array;
    .registers 10

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lio/dcloud/uts/Uint16Array;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Lio/dcloud/uts/Uint16Array;-><init>(Ljava/lang/Number;)V

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 165
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_39

    aget-object v4, p1, v3

    .line 25
    move-object v5, v0

    check-cast v5, Lio/dcloud/uts/TypedArray;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v4, v7, v6}, Lio/dcloud/uts/TypedArray;->putAuto$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Integer;Ljava/lang/Number;ILjava/lang/Object;)V

    .line 26
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 166
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 167
    :cond_39
    check-cast v1, Ljava/util/List;

    return-object v0
.end method

###### Class io.dcloud.uts.Uint16Array.AnonymousClass1 (io.dcloud.uts.Uint16Array$iterator$1)
.class public final Lio/dcloud/uts/Uint16Array$iterator$1;
.super Ljava/lang/Object;
.source "Uint16Array.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/Uint16Array;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Number;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0010(\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0003\u001a\u00020\u0004H\u0096\u0002J\t\u0010\u0005\u001a\u00020\u0002H\u0096\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "io/dcloud/uts/Uint16Array$iterator$1",
        "",
        "",
        "hasNext",
        "",
        "next",
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
.field final synthetic this$0:Lio/dcloud/uts/Uint16Array;


# direct methods
.method constructor <init>(Lio/dcloud/uts/Uint16Array;)V
    .registers 2

    iput-object p1, p0, Lio/dcloud/uts/Uint16Array$iterator$1;->this$0:Lio/dcloud/uts/Uint16Array;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 154
    iget-object v0, p0, Lio/dcloud/uts/Uint16Array$iterator$1;->this$0:Lio/dcloud/uts/Uint16Array;

    invoke-virtual {v0}, Lio/dcloud/uts/Uint16Array;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Number;
    .registers 3

    .line 157
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 158
    iget-object v0, p0, Lio/dcloud/uts/Uint16Array$iterator$1;->this$0:Lio/dcloud/uts/Uint16Array;

    invoke-virtual {v0}, Lio/dcloud/uts/Uint16Array;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 157
    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 153
    invoke-virtual {p0}, Lio/dcloud/uts/Uint16Array$iterator$1;->next()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
