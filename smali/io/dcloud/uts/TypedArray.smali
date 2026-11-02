###### Class io.dcloud.uts.TypedArray (io.dcloud.uts.TypedArray)
.class public abstract Lio/dcloud/uts/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Ljava/lang/Number;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypedArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypedArray.kt\nio/dcloud/uts/TypedArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,503:1\n1869#2,2:504\n*S KotlinDebug\n*F\n+ 1 TypedArray.kt\nio/dcloud/uts/TypedArray\n*L\n57#1:504,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u0004\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0017\u0008\u0016\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\nB)\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u000cJ\u0008\u0010\"\u001a\u00020\u0002H&J\u0010\u0010#\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H&J\u0008\u0010(\u001a\u00020)H\u0016J\u0011\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010,\u001a\u00020)2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0016J\u0008\u0010.\u001a\u00020/H\u0002J$\u00100\u001a\u00020\u00002\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00022\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u00104\u001a\u00020\u00022\u0006\u00105\u001a\u00020%H&J!\u00106\u001a\u00020/2\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010%2\u0006\u0010\u0015\u001a\u00020\u0002H&\u00a2\u0006\u0002\u00107J_\u00108\u001a\u00020)\"\u0008\u0008\u0000\u00109*\u00020\u00002K\u0010:\u001aG\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020)0;H\u0016J&\u0010>\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00022\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u00103\u001a\u00020\u0002H\u0016J_\u0010?\u001a\u00020\u0000\"\u0008\u0008\u0000\u00109*\u00020\u00002K\u0010:\u001aG\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020)0;H&Ja\u0010@\u001a\u0004\u0018\u00010\u0002\"\u0008\u0008\u0000\u00109*\u00020\u00002K\u0010:\u001aG\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020)0;H\u0016J_\u0010A\u001a\u00020%\"\u0008\u0008\u0000\u00109*\u00020\u00002K\u0010:\u001aG\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020)0;H\u0016J_\u0010B\u001a\u00020/\"\u0008\u0008\u0000\u00109*\u00020\u00002K\u0010C\u001aG\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020/0;H\u0016J\u0014\u0010D\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020F0EH\u0016J\u001a\u0010G\u001a\u00020)2\u0006\u0010H\u001a\u00020\u00022\u0008\u0008\u0002\u0010I\u001a\u00020\u0002H\u0016J\u001a\u0010J\u001a\u00020\u00022\u0006\u0010H\u001a\u00020\u00022\u0008\u0008\u0002\u0010I\u001a\u00020\u0002H\u0016J\u0012\u0010K\u001a\u00020L2\u0008\u0008\u0002\u0010M\u001a\u00020LH\u0016J\u000e\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00020EH\u0016J_\u0010O\u001a\u00020\u0000\"\u0008\u0008\u0000\u00109*\u00020\u00002K\u0010C\u001aG\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00020;H&J~\u0010P\u001a\u00020\u0002\"\u0008\u0008\u0000\u00109*\u00020\u00002`\u0010C\u001a\\\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(R\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(S\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(T\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00020Q2\n\u0008\u0002\u0010U\u001a\u0004\u0018\u00010\u0002J~\u0010V\u001a\u00020\u0002\"\u0008\u0008\u0000\u00109*\u00020\u00002`\u0010C\u001a\\\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(R\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(S\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(T\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00020Q2\n\u0008\u0002\u0010U\u001a\u0004\u0018\u00010\u0002J\u0006\u0010W\u001a\u00020\u0000J\u001e\u0010X\u001a\u00020/2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0008\u0002\u0010Y\u001a\u00020%J \u0010Z\u001a\u00020\u00002\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0002H&J]\u0010[\u001a\u00020)\"\u0008\u0008\u0000\u00109*\u00020\u00002K\u0010\\\u001aG\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u0011H9\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020)0;JB\u0010]\u001a\u00020\u00002:\u0008\u0002\u0010^\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(`\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(a\u0012\u0004\u0012\u00020\u0002\u0018\u00010_J \u0010b\u001a\u00020\u00002\n\u0008\u0002\u0010c\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0002H&J\u000c\u0010d\u001a\u0008\u0012\u0004\u0012\u00020\u00020EJ\u0019\u0010X\u001a\u00020/2\u0006\u00105\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u0002H\u0086\u0002J\u0011\u0010e\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u0002H\u0086\u0002J\u0008\u0010f\u001a\u00020LH\u0016R\u001a\u0010\u0003\u001a\u00020\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0005R\u001a\u0010\u0010\u001a\u00020\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0005R\u001a\u0010\u000b\u001a\u00020\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0005R(\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\nR\u001a\u0010\u0019\u001a\u00020\u001aX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\u001f\u001a\u00020\u0002X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008!\u0010\u0005R\u0014\u0010$\u001a\u00020%8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006g"
    }
    d2 = {
        "Lio/dcloud/uts/TypedArray;",
        "",
        "",
        "length",
        "<init>",
        "(Ljava/lang/Number;)V",
        "array",
        "(Ljava/util/Collection;)V",
        "buffer",
        "Lio/dcloud/uts/ArrayBuffer;",
        "(Lio/dcloud/uts/ArrayBuffer;)V",
        "byteOffset",
        "(Lio/dcloud/uts/ArrayBuffer;Ljava/lang/Number;Ljava/lang/Number;)V",
        "getLength",
        "()Ljava/lang/Number;",
        "setLength",
        "byteLength",
        "getByteLength",
        "setByteLength",
        "getByteOffset",
        "setByteOffset",
        "value",
        "getBuffer",
        "()Lio/dcloud/uts/ArrayBuffer;",
        "setBuffer",
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "getByteBuffer",
        "()Ljava/nio/ByteBuffer;",
        "setByteBuffer",
        "(Ljava/nio/ByteBuffer;)V",
        "BYTES_PER_ELEMENT",
        "getBYTES_PER_ELEMENT",
        "setBYTES_PER_ELEMENT",
        "getBytesPerElement",
        "convertValue",
        "size",
        "",
        "getSize",
        "()I",
        "isEmpty",
        "",
        "contains",
        "element",
        "containsAll",
        "elements",
        "reset",
        "",
        "copyWithin",
        "target",
        "start",
        "end",
        "getAuto",
        "index",
        "putAuto",
        "(Ljava/lang/Integer;Ljava/lang/Number;)V",
        "every",
        "T",
        "predicate",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "fill",
        "filter",
        "find",
        "findIndex",
        "forEach",
        "callbackfn",
        "entries",
        "Lio/dcloud/uts/IterableIterator;",
        "",
        "includes",
        "searchElement",
        "fromIndex",
        "indexOf",
        "join",
        "",
        "separator",
        "keys",
        "map",
        "reduce",
        "Lkotlin/Function4;",
        "previousValue",
        "currentValue",
        "currentIndex",
        "initialValue",
        "reduceRight",
        "reverse",
        "set",
        "offset",
        "slice",
        "some",
        "callbackFn",
        "sort",
        "compareFn",
        "Lkotlin/Function2;",
        "a",
        "b",
        "subarray",
        "begin",
        "values",
        "get",
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
.field private buffer:Lio/dcloud/uts/ArrayBuffer;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private byteLength:Ljava/lang/Number;

.field private byteOffset:Ljava/lang/Number;

.field private length:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Lio/dcloud/uts/ArrayBuffer;)V
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 12
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    .line 13
    check-cast v1, Ljava/lang/Number;

    iput-object v1, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    .line 20
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "allocate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/uts/TypedArray;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p1}, Lio/dcloud/uts/ArrayBuffer;->getByteLength()Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    .line 70
    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->setBuffer(Lio/dcloud/uts/ArrayBuffer;)V

    .line 71
    invoke-virtual {p1}, Lio/dcloud/uts/ArrayBuffer;->getByteLength()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->getBytesPerElement()Ljava/lang/Number;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->div(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/uts/ArrayBuffer;Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 7

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 12
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    .line 13
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    .line 20
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v2, "allocate(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/uts/TypedArray;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p1}, Lio/dcloud/uts/ArrayBuffer;->getByteLength()Ljava/lang/Number;

    move-result-object v0

    if-eqz p2, :cond_39

    .line 83
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    iput-object p2, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    .line 86
    :cond_39
    iget-object p2, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    check-cast v1, Ljava/lang/Number;

    invoke-static {p2, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p2

    if-ltz p2, :cond_6b

    iget-object p2, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    invoke-static {p2, v0}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p2

    if-gtz p2, :cond_6b

    if-nez p3, :cond_65

    .line 92
    iget-object p2, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    invoke-static {v0, p2}, Lio/dcloud/uts/NumberKt;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->getBytesPerElement()Ljava/lang/Number;

    move-result-object p3

    .line 93
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    .line 92
    invoke-static {p2, p3}, Lio/dcloud/uts/NumberKt;->div(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p3

    .line 91
    :cond_65
    iput-object p3, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 94
    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->setBuffer(Lio/dcloud/uts/ArrayBuffer;)V

    return-void

    .line 87
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteOffset is out of bounds."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 75
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/uts/TypedArray;-><init>(Lio/dcloud/uts/ArrayBuffer;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 5

    const-string v0, "length"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 12
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    .line 13
    check-cast v1, Ljava/lang/Number;

    iput-object v1, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    .line 20
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "allocate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/uts/TypedArray;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 44
    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->getBytesPerElement()Ljava/lang/Number;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    .line 45
    new-instance p1, Lio/dcloud/uts/ArrayBuffer;

    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Lio/dcloud/uts/ArrayBuffer;-><init>(I)V

    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->setBuffer(Lio/dcloud/uts/ArrayBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 5
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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 12
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    iput-object v2, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    .line 13
    check-cast v1, Ljava/lang/Number;

    iput-object v1, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    .line 20
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "allocate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/uts/TypedArray;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 51
    instance-of v0, p1, Lio/dcloud/uts/TypedArray;

    if-eqz v0, :cond_30

    .line 52
    move-object v0, p1

    check-cast v0, Lio/dcloud/uts/TypedArray;

    invoke-direct {v0}, Lio/dcloud/uts/TypedArray;->reset()V

    .line 54
    :cond_30
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 55
    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->getBytesPerElement()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->times(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    .line 56
    new-instance v0, Lio/dcloud/uts/ArrayBuffer;

    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lio/dcloud/uts/ArrayBuffer;-><init>(I)V

    invoke-virtual {p0, v0}, Lio/dcloud/uts/TypedArray;->setBuffer(Lio/dcloud/uts/ArrayBuffer;)V

    .line 57
    check-cast p1, Ljava/lang/Iterable;

    .line 504
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-static {p0, v2, v0, v1, v2}, Lio/dcloud/uts/TypedArray;->putAuto$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Integer;Ljava/lang/Number;ILjava/lang/Object;)V

    goto :goto_5a

    :cond_6c
    return-void
.end method

.method public static synthetic copyWithin$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Lio/dcloud/uts/TypedArray;
    .registers 6

    if-nez p5, :cond_d

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_8

    .line 100
    iget-object p3, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    .line 97
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/uts/TypedArray;->copyWithin(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: copyWithin"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic fill$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Lio/dcloud/uts/TypedArray;
    .registers 6

    if-nez p5, :cond_18

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_d

    const/4 p2, 0x0

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    :cond_d
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_13

    .line 180
    iget-object p3, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 177
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/uts/TypedArray;->fill(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fill"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic includes$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Z
    .registers 5

    if-nez p4, :cond_12

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    const/4 p2, 0x0

    .line 265
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    :cond_d
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->includes(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: includes"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic indexOf$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;
    .registers 5

    if-nez p4, :cond_12

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    const/4 p2, 0x0

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    :cond_d
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->indexOf(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: indexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic join$default(Lio/dcloud/uts/TypedArray;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p3, :cond_d

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 299
    const-string p1, ","

    :cond_8
    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: join"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic putAuto$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Integer;Ljava/lang/Number;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p1, 0x0

    .line 161
    :cond_7
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: putAuto"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic reduce$default(Lio/dcloud/uts/TypedArray;Lkotlin/jvm/functions/Function4;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 339
    :cond_7
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->reduce(Lkotlin/jvm/functions/Function4;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: reduce"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic reduceRight$default(Lio/dcloud/uts/TypedArray;Lkotlin/jvm/functions/Function4;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 354
    :cond_7
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->reduceRight(Lkotlin/jvm/functions/Function4;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: reduceRight"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final reset()V
    .registers 2

    .line 63
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public static synthetic set$default(Lio/dcloud/uts/TypedArray;Ljava/util/Collection;IILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 383
    :cond_7
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->set(Ljava/util/Collection;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic slice$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Lio/dcloud/uts/TypedArray;
    .registers 5

    if-nez p4, :cond_18

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_d

    const/4 p1, 0x0

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_d
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_13

    .line 406
    iget-object p2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 404
    :cond_13
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->slice(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: slice"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic sort$default(Lio/dcloud/uts/TypedArray;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/dcloud/uts/TypedArray;
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 422
    :cond_7
    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->sort(Lkotlin/jvm/functions/Function2;)Lio/dcloud/uts/TypedArray;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sort"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic subarray$default(Lio/dcloud/uts/TypedArray;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Lio/dcloud/uts/TypedArray;
    .registers 5

    if-nez p4, :cond_18

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_d

    const/4 p1, 0x0

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    :cond_d
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_13

    .line 442
    iget-object p2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    .line 440
    :cond_13
    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->subarray(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: subarray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Number;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Number;)Z
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    .line 10
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->contains(Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public abstract convertValue(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public copyWithin(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;
    .registers 9

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    const/high16 v1, -0x80000000

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v2, :cond_1f

    const/4 p1, 0x0

    goto :goto_42

    :cond_1f
    move-object v2, v4

    check-cast v2, Ljava/lang/Number;

    invoke-static {p1, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    if-gez v2, :cond_36

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_42

    .line 106
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 110
    :goto_42
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 p2, 0x0

    goto :goto_6d

    .line 111
    :cond_4a
    move-object v2, v4

    check-cast v2, Ljava/lang/Number;

    invoke-static {p2, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    if-gez v2, :cond_61

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_6d

    .line 112
    :cond_61
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 116
    :goto_6d
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 p3, 0x0

    goto :goto_9a

    .line 117
    :cond_75
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-static {p3, v4}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-gez v1, :cond_8e

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    add-int/2addr v1, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_9a

    .line 118
    :cond_8e
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_9a
    sub-int/2addr p3, p2

    .line 121
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_cf

    .line 125
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ge p2, p1, :cond_b6

    add-int v1, p2, p3

    if-ge p1, v1, :cond_b6

    add-int/lit8 v1, p3, -0x1

    add-int/2addr p2, v1

    add-int/2addr p1, v1

    const/4 v1, -0x1

    goto :goto_b7

    :cond_b6
    const/4 v1, 0x1

    :goto_b7
    if-lez p3, :cond_cf

    if-ge p2, v0, :cond_cd

    if-ge p1, v0, :cond_cd

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p2}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    add-int/2addr p2, v1

    add-int/2addr p1, v1

    add-int/lit8 p3, p3, -0x1

    goto :goto_b7

    :cond_cd
    const/4 p3, 0x0

    goto :goto_b7

    :cond_cf
    return-object p0
.end method

.method public entries()Lio/dcloud/uts/IterableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/IterableIterator<",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Lio/dcloud/uts/TypedArray$entries$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/TypedArray$entries$1;-><init>(Lio/dcloud/uts/TypedArray;)V

    check-cast v0, Lio/dcloud/uts/IterableIterator;

    return-object v0
.end method

.method public every(Lkotlin/jvm/functions/Function3;)Z
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
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 168
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 169
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_32

    invoke-virtual {p0, v2}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type T of io.dcloud.uts.TypedArray.every"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, v3, v4, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_32

    return v1

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_35
    const/4 p1, 0x1

    return p1
.end method

.method public fill(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;
    .registers 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    .line 183
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    if-gez p2, :cond_21

    .line 186
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_29

    .line 188
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 190
    :goto_29
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-gez p3, :cond_39

    .line 192
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_41

    .line 194
    :cond_39
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_41
    if-ge p2, p3, :cond_4d

    .line 197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    :cond_4d
    return-object p0
.end method

.method public abstract filter(Lkotlin/jvm/functions/Function3;)Lio/dcloud/uts/TypedArray;
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
            "Lio/dcloud/uts/TypedArray;"
        }
    .end annotation
.end method

.method public find(Lkotlin/jvm/functions/Function3;)Ljava/lang/Number;
    .registers 7
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
            "Ljava/lang/Number;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_30

    .line 210
    invoke-virtual {p0, v1}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v2

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type T of io.dcloud.uts.TypedArray.find"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, v2, v3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 212
    invoke-static {v2}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method public findIndex(Lkotlin/jvm/functions/Function3;)I
    .registers 7
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
            ">;)I"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_2c

    .line 224
    invoke-virtual {p0, v1}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v2

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type T of io.dcloud.uts.TypedArray.findIndex"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, v2, v3, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_29

    return v1

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2c
    const/4 p1, -0x1

    return p1
.end method

.method public forEach(Lkotlin/jvm/functions/Function3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/uts/TypedArray;",
            ">(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callbackfn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 239
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    iget-object v2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-gez v1, :cond_2a

    .line 240
    invoke-virtual {p0, v0}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type T of io.dcloud.uts.TypedArray.forEach"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, v1, v2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2a
    return-void
.end method

.method public final get(Ljava/lang/Number;)Ljava/lang/Number;
    .registers 3

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 472
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 471
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public abstract getAuto(I)Ljava/lang/Number;
.end method

.method public abstract getBYTES_PER_ELEMENT()Ljava/lang/Number;
.end method

.method public final getBuffer()Lio/dcloud/uts/ArrayBuffer;
    .registers 2

    .line 14
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->buffer:Lio/dcloud/uts/ArrayBuffer;

    return-object v0
.end method

.method protected final getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 20
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getByteLength()Ljava/lang/Number;
    .registers 2

    .line 12
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    return-object v0
.end method

.method public final getByteOffset()Ljava/lang/Number;
    .registers 2

    .line 13
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    return-object v0
.end method

.method public abstract getBytesPerElement()Ljava/lang/Number;
.end method

.method public final getLength()Ljava/lang/Number;
    .registers 2

    .line 11
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 26
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public includes(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 7

    const-string v0, "searchElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromIndex"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {p2, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-gez v1, :cond_2b

    .line 267
    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {v1, p2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    .line 272
    :cond_2b
    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {p2, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-ltz v1, :cond_34

    return v0

    .line 274
    :cond_34
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_3e
    if-ge p2, v1, :cond_53

    .line 275
    invoke-virtual {p0, p2}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->convertValue(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 p1, 0x1

    return p1

    :cond_50
    add-int/lit8 p2, p2, 0x1

    goto :goto_3e

    :cond_53
    return v0
.end method

.method public indexOf(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 7

    const-string v0, "searchElement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromIndex"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {p2, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v1

    if-gez v1, :cond_2b

    .line 284
    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {v1, p2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    .line 289
    :cond_2b
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {p2, v0}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    const/4 v1, -0x1

    if-ltz v0, :cond_3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 291
    :cond_3f
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_49
    if-ge p2, v0, :cond_67

    .line 292
    invoke-virtual {p0, p2}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p0, p1}, Lio/dcloud/uts/TypedArray;->convertValue(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 293
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_64
    add-int/lit8 p2, p2, 0x1

    goto :goto_49

    .line 296
    :cond_67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 3

    .line 29
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "separator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_3d

    .line 302
    invoke-virtual {p0, v2}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v3

    .line 303
    invoke-static {v3}, Lio/dcloud/uts/NumberKt;->toStringAsJS(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    iget-object v4, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v3

    if-gez v3, :cond_3a

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 312
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public keys()Lio/dcloud/uts/IterableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/IterableIterator<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Lio/dcloud/uts/TypedArray$keys$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/TypedArray$keys$1;-><init>(Lio/dcloud/uts/TypedArray;)V

    check-cast v0, Lio/dcloud/uts/IterableIterator;

    return-object v0
.end method

.method public abstract map(Lkotlin/jvm/functions/Function3;)Lio/dcloud/uts/TypedArray;
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
            "Lio/dcloud/uts/TypedArray;"
        }
    .end annotation
.end method

.method public abstract putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V
.end method

.method public final reduce(Lkotlin/jvm/functions/Function4;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/uts/TypedArray;",
            ">(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Number;",
            "-TT;+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    const-string v0, "callbackfn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_10

    .line 346
    invoke-virtual {p0, v1}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object p2

    :cond_10
    :goto_10
    if-ge v1, v0, :cond_2b

    .line 348
    invoke-virtual {p0, v1}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type T of io.dcloud.uts.TypedArray.reduce"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, p2, v2, v3, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 351
    :cond_2b
    invoke-static {p2}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public final reduceRight(Lkotlin/jvm/functions/Function4;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/dcloud/uts/TypedArray;",
            ">(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Number;",
            "-TT;+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    const-string v0, "callbackfn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-nez p2, :cond_1c

    .line 361
    iget-object v2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, p2

    :goto_1d
    if-nez p2, :cond_21

    add-int/lit8 v1, v0, -0x2

    :cond_21
    :goto_21
    if-ltz v1, :cond_3d

    .line 366
    invoke-virtual {p0, v1}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type T of io.dcloud.uts.TypedArray.reduceRight"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, v2, p2, v0, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 369
    :cond_3d
    invoke-static {v2}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reverse()Lio/dcloud/uts/TypedArray;
    .registers 7

    .line 373
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_2d

    .line 375
    iget-object v2, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 376
    invoke-virtual {p0, v1}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v3

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    .line 378
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2d
    return-object p0
.end method

.method public final set(Ljava/lang/Number;Ljava/lang/Number;)V
    .registers 4

    const-string v0, "index"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gez v0, :cond_1e

    .line 466
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    return-void

    .line 464
    :cond_1e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final set(Ljava/util/Collection;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_7b

    .line 384
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gtz v0, :cond_7b

    .line 387
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gtz v0, :cond_73

    .line 390
    instance-of v0, p1, Lio/dcloud/uts/UTSArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 391
    check-cast p1, Lio/dcloud/uts/UTSArray;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    add-int v0, p2, v1

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {p0, v0, v2}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 397
    :cond_55
    instance-of v0, p1, Lio/dcloud/uts/TypedArray;

    if-eqz v0, :cond_72

    .line 398
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_5d
    if-ge v1, v0, :cond_72

    add-int v2, p2, v1

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lio/dcloud/uts/TypedArray;

    invoke-virtual {v3, v1}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_72
    return-void

    .line 388
    :cond_73
    new-instance p1, Lio/dcloud/uts/RangeError;

    const-string p2, "Source array is too large to fit in the target array at the given offset."

    invoke-direct {p1, p2}, Lio/dcloud/uts/RangeError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_7b
    new-instance p1, Lio/dcloud/uts/RangeError;

    const-string p2, "Offset is out of bounds."

    invoke-direct {p1, p2}, Lio/dcloud/uts/RangeError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setBYTES_PER_ELEMENT(Ljava/lang/Number;)V
.end method

.method public final setBuffer(Lio/dcloud/uts/ArrayBuffer;)V
    .registers 3

    .line 16
    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->buffer:Lio/dcloud/uts/ArrayBuffer;

    if-eqz p1, :cond_a

    .line 18
    invoke-virtual {p1}, Lio/dcloud/uts/ArrayBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p1, :cond_19

    :cond_a
    iget-object p1, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "allocate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :cond_19
    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected final setByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final setByteLength(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->byteLength:Ljava/lang/Number;

    return-void
.end method

.method public final setByteOffset(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    return-void
.end method

.method public final setLength(Ljava/lang/Number;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    return-void
.end method

.method public final bridge size()I
    .registers 2

    .line 10
    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->getSize()I

    move-result v0

    return v0
.end method

.method public abstract slice(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;
.end method

.method public final some(Lkotlin/jvm/functions/Function3;)Z
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
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "callbackFn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 413
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 414
    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual {p0, v2}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type T of io.dcloud.uts.TypedArray.some"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lio/dcloud/uts/TypedArray;

    invoke-interface {p1, v3, v4, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_36
    return v1
.end method

.method public final sort(Lkotlin/jvm/functions/Function2;)Lio/dcloud/uts/TypedArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Number;",
            "-",
            "Ljava/lang/Number;",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lio/dcloud/uts/TypedArray;"
        }
    .end annotation

    .line 423
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 424
    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_21

    .line 425
    invoke-virtual {p0, v3}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 427
    :cond_21
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz p1, :cond_2d

    .line 429
    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSArray;->sort(Lkotlin/jvm/functions/Function2;)Lio/dcloud/uts/UTSArray;

    goto :goto_30

    .line 431
    :cond_2d
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 433
    :goto_30
    iget-object p1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_36
    if-ge v2, p1, :cond_5d

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {p0, v1, v3}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    .line 435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {p0, v1, v3}, Lio/dcloud/uts/TypedArray;->putAuto(Ljava/lang/Integer;Ljava/lang/Number;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_5d
    return-object p0
.end method

.method public abstract subarray(Ljava/lang/Number;Ljava/lang/Number;)Lio/dcloud/uts/TypedArray;
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 476
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 477
    iget-object v1, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_4a

    .line 479
    iget-object v3, p0, Lio/dcloud/uts/TypedArray;->byteOffset:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lio/dcloud/uts/TypedArray;->getBytesPerElement()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    div-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v3

    .line 480
    invoke-static {v3}, Lio/dcloud/uts/NumberKt;->toStringAsJS(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    iget-object v4, p0, Lio/dcloud/uts/TypedArray;->length:Ljava/lang/Number;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v3

    if-gez v3, :cond_47

    .line 485
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 489
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final values()Lio/dcloud/uts/IterableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/IterableIterator<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Lio/dcloud/uts/TypedArray$values$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/TypedArray$values$1;-><init>(Lio/dcloud/uts/TypedArray;)V

    check-cast v0, Lio/dcloud/uts/IterableIterator;

    return-object v0
.end method

###### Class io.dcloud.uts.TypedArray.AnonymousClass1 (io.dcloud.uts.TypedArray$entries$1)
.class public final Lio/dcloud/uts/TypedArray$entries$1;
.super Ljava/lang/Object;
.source "TypedArray.kt"

# interfaces
.implements Lio/dcloud/uts/IterableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/TypedArray;->entries()Lio/dcloud/uts/IterableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/IterableIterator<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Number;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "io/dcloud/uts/TypedArray$entries$1",
        "Lio/dcloud/uts/IterableIterator;",
        "",
        "",
        "index",
        "",
        "hasNext",
        "",
        "next",
        "Lio/dcloud/uts/IteratorReturnResult;",
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
.field private index:I

.field final synthetic this$0:Lio/dcloud/uts/TypedArray;


# direct methods
.method constructor <init>(Lio/dcloud/uts/TypedArray;)V
    .registers 2

    iput-object p1, p0, Lio/dcloud/uts/TypedArray$entries$1;->this$0:Lio/dcloud/uts/TypedArray;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final hasNext()Z
    .registers 3

    .line 250
    iget v0, p0, Lio/dcloud/uts/TypedArray$entries$1;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lio/dcloud/uts/TypedArray$entries$1;->this$0:Lio/dcloud/uts/TypedArray;

    invoke-virtual {v1}, Lio/dcloud/uts/TypedArray;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public next()Lio/dcloud/uts/IteratorReturnResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/IteratorReturnResult<",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-direct {p0}, Lio/dcloud/uts/TypedArray$entries$1;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_12

    .line 256
    new-instance v1, Lio/dcloud/uts/IteratorReturnResult;

    invoke-direct {v1, v2, v0}, Lio/dcloud/uts/IteratorReturnResult;-><init>(ZLjava/lang/Object;)V

    return-object v1

    .line 258
    :cond_12
    iget v1, p0, Lio/dcloud/uts/TypedArray$entries$1;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v1, p0, Lio/dcloud/uts/TypedArray$entries$1;->this$0:Lio/dcloud/uts/TypedArray;

    iget v3, p0, Lio/dcloud/uts/TypedArray$entries$1;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/dcloud/uts/TypedArray$entries$1;->index:I

    invoke-virtual {v1, v3}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v1, Lio/dcloud/uts/IteratorReturnResult;

    invoke-direct {v1, v2, v0}, Lio/dcloud/uts/IteratorReturnResult;-><init>(ZLjava/lang/Object;)V

    return-object v1
.end method

###### Class io.dcloud.uts.TypedArray.C01081 (io.dcloud.uts.TypedArray$keys$1)
.class public final Lio/dcloud/uts/TypedArray$keys$1;
.super Ljava/lang/Object;
.source "TypedArray.kt"

# interfaces
.implements Lio/dcloud/uts/IterableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/TypedArray;->keys()Lio/dcloud/uts/IterableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/IterableIterator<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "io/dcloud/uts/TypedArray$keys$1",
        "Lio/dcloud/uts/IterableIterator;",
        "",
        "index",
        "",
        "hasNext",
        "",
        "next",
        "Lio/dcloud/uts/IteratorReturnResult;",
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
.field private index:I

.field final synthetic this$0:Lio/dcloud/uts/TypedArray;


# direct methods
.method constructor <init>(Lio/dcloud/uts/TypedArray;)V
    .registers 2

    iput-object p1, p0, Lio/dcloud/uts/TypedArray$keys$1;->this$0:Lio/dcloud/uts/TypedArray;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final hasNext()Z
    .registers 3

    .line 323
    iget v0, p0, Lio/dcloud/uts/TypedArray$keys$1;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lio/dcloud/uts/TypedArray$keys$1;->this$0:Lio/dcloud/uts/TypedArray;

    invoke-virtual {v1}, Lio/dcloud/uts/TypedArray;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public next()Lio/dcloud/uts/IteratorReturnResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/IteratorReturnResult<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Lio/dcloud/uts/TypedArray$keys$1;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 328
    new-instance v0, Lio/dcloud/uts/IteratorReturnResult;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/IteratorReturnResult;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 330
    :cond_12
    iget v0, p0, Lio/dcloud/uts/TypedArray$keys$1;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/uts/TypedArray$keys$1;->index:I

    .line 331
    new-instance v0, Lio/dcloud/uts/IteratorReturnResult;

    iget v2, p0, Lio/dcloud/uts/TypedArray$keys$1;->index:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Lio/dcloud/uts/IteratorReturnResult;-><init>(ZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class io.dcloud.uts.TypedArray.C01091 (io.dcloud.uts.TypedArray$values$1)
.class public final Lio/dcloud/uts/TypedArray$values$1;
.super Ljava/lang/Object;
.source "TypedArray.kt"

# interfaces
.implements Lio/dcloud/uts/IterableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/TypedArray;->values()Lio/dcloud/uts/IterableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/uts/IterableIterator<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "io/dcloud/uts/TypedArray$values$1",
        "Lio/dcloud/uts/IterableIterator;",
        "",
        "index",
        "",
        "hasNext",
        "",
        "next",
        "Lio/dcloud/uts/IteratorReturnResult;",
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
.field private index:I

.field final synthetic this$0:Lio/dcloud/uts/TypedArray;


# direct methods
.method constructor <init>(Lio/dcloud/uts/TypedArray;)V
    .registers 2

    iput-object p1, p0, Lio/dcloud/uts/TypedArray$values$1;->this$0:Lio/dcloud/uts/TypedArray;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final hasNext()Z
    .registers 3

    .line 450
    iget v0, p0, Lio/dcloud/uts/TypedArray$values$1;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object v1, p0, Lio/dcloud/uts/TypedArray$values$1;->this$0:Lio/dcloud/uts/TypedArray;

    invoke-virtual {v1}, Lio/dcloud/uts/TypedArray;->getLength()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public next()Lio/dcloud/uts/IteratorReturnResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/IteratorReturnResult<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lio/dcloud/uts/TypedArray$values$1;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 455
    new-instance v0, Lio/dcloud/uts/IteratorReturnResult;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/dcloud/uts/IteratorReturnResult;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 457
    :cond_18
    new-instance v0, Lio/dcloud/uts/IteratorReturnResult;

    iget-object v2, p0, Lio/dcloud/uts/TypedArray$values$1;->this$0:Lio/dcloud/uts/TypedArray;

    iget v3, p0, Lio/dcloud/uts/TypedArray$values$1;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/dcloud/uts/TypedArray$values$1;->index:I

    invoke-virtual {v2, v3}, Lio/dcloud/uts/TypedArray;->getAuto(I)Ljava/lang/Number;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/uts/NumberKt;->UTSNumber(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Lio/dcloud/uts/IteratorReturnResult;-><init>(ZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
