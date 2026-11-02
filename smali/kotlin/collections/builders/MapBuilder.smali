###### Class kotlin.collections.builders.MapBuilder (kotlin.collections.builders.MapBuilder)
.class public final Lkotlin/collections/builders/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/MapBuilder$Companion;,
        Lkotlin/collections/builders/MapBuilder$EntriesItr;,
        Lkotlin/collections/builders/MapBuilder$EntryRef;,
        Lkotlin/collections/builders/MapBuilder$Itr;,
        Lkotlin/collections/builders/MapBuilder$KeysItr;,
        Lkotlin/collections/builders/MapBuilder$ValuesItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableMap;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,751:1\n1#2:752\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0010\'\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008#\n\u0002\u0010&\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u0084\u0001*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u00060\u0004j\u0002`\u0005:\u000c\u0084\u0001\u0085\u0001\u0086\u0001\u0087\u0001\u0088\u0001\u0089\u0001BG\u0008\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0011B\u0011\u0008\u0016\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0013J\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010&J\u0008\u0010\'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0002J\u0008\u0010-\u001a\u00020!H\u0016J\u0015\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00100J\u0015\u00101\u001a\u00020!2\u0006\u0010\u0017\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u00100J\u0018\u00102\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u00103J\u001f\u00104\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u00105J\u001e\u00106\u001a\u00020*2\u0014\u00107\u001a\u0010\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010&H\u0016J\u0017\u00108\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00103J\u0008\u00109\u001a\u00020*H\u0016J\u0013\u0010E\u001a\u00020!2\u0008\u0010F\u001a\u0004\u0018\u00010(H\u0096\u0002J\u0008\u0010G\u001a\u00020\rH\u0016J\u0008\u0010H\u001a\u00020IH\u0016J\u0008\u0010N\u001a\u00020*H\u0002J\r\u0010O\u001a\u00020*H\u0000\u00a2\u0006\u0002\u0008PJ\u0010\u0010Q\u001a\u00020*2\u0006\u0010R\u001a\u00020\rH\u0002J\u0010\u0010S\u001a\u00020!2\u0006\u0010T\u001a\u00020\rH\u0002J\u0010\u0010U\u001a\u00020*2\u0006\u0010V\u001a\u00020\rH\u0002J\u0013\u0010W\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0007H\u0002\u00a2\u0006\u0002\u0010XJ\u0015\u0010Y\u001a\u00020\r2\u0006\u0010/\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010ZJ\u0010\u0010[\u001a\u00020*2\u0006\u0010\\\u001a\u00020!H\u0002J\u0010\u0010]\u001a\u00020*2\u0006\u0010^\u001a\u00020\rH\u0002J\u0010\u0010_\u001a\u00020!2\u0006\u0010`\u001a\u00020\rH\u0002J\u0015\u0010a\u001a\u00020\r2\u0006\u0010/\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010ZJ\u0015\u0010b\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00028\u0001H\u0002\u00a2\u0006\u0002\u0010ZJ\u0017\u0010c\u001a\u00020\r2\u0006\u0010/\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008d\u0010ZJ\u0017\u0010e\u001a\u00020!2\u0006\u0010/\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008f\u00100J\u0010\u0010g\u001a\u00020*2\u0006\u0010h\u001a\u00020\rH\u0002J\u0010\u0010i\u001a\u00020*2\u0006\u0010j\u001a\u00020\rH\u0002J!\u0010k\u001a\u00020!2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010mH\u0000\u00a2\u0006\u0002\u0008nJ\u0018\u0010o\u001a\u00020!2\u000e\u0010F\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030&H\u0002J\u0019\u0010p\u001a\u00020!2\n\u0010q\u001a\u0006\u0012\u0002\u0008\u00030rH\u0000\u00a2\u0006\u0002\u0008sJ\u001c\u0010t\u001a\u00020!2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010mH\u0002J\"\u0010u\u001a\u00020!2\u0018\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010m0rH\u0002J!\u0010v\u001a\u00020!2\u0012\u0010l\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010mH\u0000\u00a2\u0006\u0002\u0008wJ\u0017\u0010x\u001a\u00020!2\u0006\u0010y\u001a\u00028\u0001H\u0000\u00a2\u0006\u0004\u0008z\u00100J\u0019\u0010{\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010|H\u0000\u00a2\u0006\u0002\u0008}J\u001a\u0010~\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u007fH\u0000\u00a2\u0006\u0003\u0008\u0080\u0001J\u001c\u0010\u0081\u0001\u001a\u000f\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0082\u0001H\u0000\u00a2\u0006\u0003\u0008\u0083\u0001R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0018\u0010\u0008\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\r@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\"\u001a\u00020!2\u0006\u0010\u0017\u001a\u00020!@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001a\u0010:\u001a\u0008\u0012\u0004\u0012\u00028\u00000;8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00010?8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR&\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010C0;8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010=R\u0014\u0010J\u001a\u00020\r8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010\u001aR\u0014\u0010L\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u001a\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder;",
        "K",
        "V",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "keysArray",
        "",
        "valuesArray",
        "presenceArray",
        "",
        "hashArray",
        "maxProbeDistance",
        "",
        "length",
        "<init>",
        "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V",
        "()V",
        "initialCapacity",
        "(I)V",
        "[Ljava/lang/Object;",
        "hashShift",
        "modCount",
        "value",
        "size",
        "getSize",
        "()I",
        "keysView",
        "Lkotlin/collections/builders/MapBuilderKeys;",
        "valuesView",
        "Lkotlin/collections/builders/MapBuilderValues;",
        "entriesView",
        "Lkotlin/collections/builders/MapBuilderEntries;",
        "",
        "isReadOnly",
        "isReadOnly$kotlin_stdlib",
        "()Z",
        "build",
        "",
        "writeReplace",
        "",
        "readObject",
        "",
        "input",
        "Ljava/io/ObjectInputStream;",
        "isEmpty",
        "containsKey",
        "key",
        "(Ljava/lang/Object;)Z",
        "containsValue",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "put",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "putAll",
        "from",
        "remove",
        "clear",
        "keys",
        "",
        "getKeys",
        "()Ljava/util/Set;",
        "values",
        "",
        "getValues",
        "()Ljava/util/Collection;",
        "entries",
        "",
        "getEntries",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "capacity",
        "getCapacity$kotlin_stdlib",
        "hashSize",
        "getHashSize",
        "registerModification",
        "checkIsMutable",
        "checkIsMutable$kotlin_stdlib",
        "ensureExtraCapacity",
        "n",
        "shouldCompact",
        "extraCapacity",
        "ensureCapacity",
        "minCapacity",
        "allocateValuesArray",
        "()[Ljava/lang/Object;",
        "hash",
        "(Ljava/lang/Object;)I",
        "compact",
        "updateHashArray",
        "rehash",
        "newHashSize",
        "putRehash",
        "i",
        "findKey",
        "findValue",
        "addKey",
        "addKey$kotlin_stdlib",
        "removeKey",
        "removeKey$kotlin_stdlib",
        "removeEntryAt",
        "index",
        "removeHashAt",
        "removedHash",
        "containsEntry",
        "entry",
        "",
        "containsEntry$kotlin_stdlib",
        "contentEquals",
        "containsAllEntries",
        "m",
        "",
        "containsAllEntries$kotlin_stdlib",
        "putEntry",
        "putAllEntries",
        "removeEntry",
        "removeEntry$kotlin_stdlib",
        "removeValue",
        "element",
        "removeValue$kotlin_stdlib",
        "keysIterator",
        "Lkotlin/collections/builders/MapBuilder$KeysItr;",
        "keysIterator$kotlin_stdlib",
        "valuesIterator",
        "Lkotlin/collections/builders/MapBuilder$ValuesItr;",
        "valuesIterator$kotlin_stdlib",
        "entriesIterator",
        "Lkotlin/collections/builders/MapBuilder$EntriesItr;",
        "entriesIterator$kotlin_stdlib",
        "Companion",
        "Itr",
        "KeysItr",
        "ValuesItr",
        "EntriesItr",
        "EntryRef",
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
.field public static final Companion:Lkotlin/collections/builders/MapBuilder$Companion;

.field private static final Empty:Lkotlin/collections/builders/MapBuilder;

.field private static final INITIAL_CAPACITY:I = 0x8

.field private static final INITIAL_MAX_PROBE_DISTANCE:I = 0x2

.field private static final MAGIC:I = -0x61c88647

.field private static final TOMBSTONE:I = -0x1


# instance fields
.field private entriesView:Lkotlin/collections/builders/MapBuilderEntries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderEntries<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private hashArray:[I

.field private hashShift:I

.field private isReadOnly:Z

.field private keysArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keysView:Lkotlin/collections/builders/MapBuilderKeys;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderKeys<",
            "TK;>;"
        }
    .end annotation
.end field

.field private length:I

.field private maxProbeDistance:I

.field private modCount:I

.field private presenceArray:[I

.field private size:I

.field private valuesArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private valuesView:Lkotlin/collections/builders/MapBuilderValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilderValues<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/collections/builders/MapBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/MapBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    .line 498
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    sput-object v0, Lkotlin/collections/builders/MapBuilder;->Empty:Lkotlin/collections/builders/MapBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    .line 54
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 9

    .line 57
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    move-result-object v1

    .line 59
    new-array v3, p1, [I

    .line 60
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    invoke-static {v0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    move-result p1

    new-array v4, p1, [I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    .line 56
    invoke-direct/range {v0 .. v6}, Lkotlin/collections/builders/MapBuilder;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;[I[III)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 20
    iput-object p3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    .line 22
    iput-object p4, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    .line 24
    iput p5, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 26
    iput p6, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    .line 28
    sget-object p1, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    return-void
.end method

.method public static final synthetic access$allocateValuesArray(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    .line 14
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEmpty$cp()Lkotlin/collections/builders/MapBuilder;
    .registers 1

    .line 14
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Empty:Lkotlin/collections/builders/MapBuilder;

    return-object v0
.end method

.method public static final synthetic access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    .line 14
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I
    .registers 1

    .line 14
    iget p0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    return p0
.end method

.method public static final synthetic access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I
    .registers 1

    .line 14
    iget p0, p0, Lkotlin/collections/builders/MapBuilder;->modCount:I

    return p0
.end method

.method public static final synthetic access$getPresenceArray$p(Lkotlin/collections/builders/MapBuilder;)[I
    .registers 1

    .line 14
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    return-object p0
.end method

.method public static final synthetic access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;
    .registers 1

    .line 14
    iget-object p0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$removeEntryAt(Lkotlin/collections/builders/MapBuilder;I)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    return-void
.end method

.method private final allocateValuesArray()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    .line 235
    :cond_5
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    move-result-object v0

    .line 236
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    return-object v0
.end method

.method private final compact(Z)V
    .registers 9

    .line 245
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 246
    :goto_4
    iget v3, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    if-ge v1, v3, :cond_29

    .line 247
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v4, v3, v1

    if-ltz v4, :cond_26

    .line 249
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aget-object v6, v5, v1

    aput-object v6, v5, v2

    if-eqz v0, :cond_1a

    .line 250
    aget-object v5, v0, v1

    aput-object v5, v0, v2

    :cond_1a
    if-eqz p1, :cond_24

    .line 252
    aput v4, v3, v2

    .line 253
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v3, v4

    :cond_24
    add-int/lit8 v2, v2, 0x1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 259
    :cond_29
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    if-eqz v0, :cond_35

    .line 260
    iget p1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v0, v2, p1}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 261
    :cond_35
    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    return-void
.end method

.method private final contentEquals(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_18

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder;->containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private final ensureCapacity(I)V
    .registers 4

    if-ltz p1, :cond_43

    .line 222
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    if-le p1, v0, :cond_42

    .line 223
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/AbstractList$Companion;->newCapacity$kotlin_stdlib(II)I

    move-result p1

    .line 224
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_23

    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    .line 227
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    invoke-static {v0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    move-result p1

    .line 228
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    if-le p1, v0, :cond_42

    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->rehash(I)V

    :cond_42
    return-void

    .line 221
    :cond_43
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method private final ensureExtraCapacity(I)V
    .registers 3

    .line 205
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->shouldCompact(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x1

    .line 206
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->compact(Z)V

    return-void

    .line 208
    :cond_b
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->ensureCapacity(I)V

    return-void
.end method

.method private final findKey(Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 299
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 300
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 302
    :goto_6
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_e

    return v3

    :cond_e
    if-lez v2, :cond_1d

    .line 304
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return v2

    :cond_1d
    add-int/2addr v1, v3

    if-gez v1, :cond_21

    return v3

    :cond_21
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2c

    .line 306
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2c
    move v0, v2

    goto :goto_6
.end method

.method private final findValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 311
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    :cond_2
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1a

    .line 313
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v1, v1, v0

    if-ltz v1, :cond_2

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_1a
    return v1
.end method

.method private final getHashSize()I
    .registers 2

    .line 194
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    array-length v0, v0

    return v0
.end method

.method private final hash(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const v0, -0x61c88647

    mul-int p1, p1, v0

    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method private final putAllEntries(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)Z"
        }
    .end annotation

    .line 460
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 461
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->ensureExtraCapacity(I)V

    .line 462
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 464
    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 465
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->putEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    goto :goto_13

    :cond_27
    return v1
.end method

.method private final putEntry(Ljava/util/Map$Entry;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 445
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result v0

    .line 446
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-ltz v0, :cond_16

    .line 448
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_16
    neg-int v0, v0

    sub-int/2addr v0, v2

    .line 451
    aget-object v3, v1, v0

    .line 452
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 453
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method private final putRehash(I)Z
    .registers 7

    .line 284
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 285
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    .line 287
    :goto_a
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    add-int/lit8 v1, p1, 0x1

    .line 289
    aput v1, v2, v0

    .line 290
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aput v0, v1, p1

    return v4

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_20

    const/4 p1, 0x0

    return p1

    :cond_20
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2a

    .line 294
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_a

    :cond_2a
    move v0, v2

    goto :goto_a
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 77
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final registerModification()V
    .registers 2

    .line 197
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/collections/builders/MapBuilder;->modCount:I

    return-void
.end method

.method private final rehash(I)V
    .registers 5

    .line 268
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->registerModification()V

    .line 269
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_f

    invoke-direct {p0, v2}, Lkotlin/collections/builders/MapBuilder;->compact(Z)V

    .line 270
    :cond_f
    new-array v0, p1, [I

    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    .line 271
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Companion:Lkotlin/collections/builders/MapBuilder$Companion;

    invoke-static {v0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/MapBuilder;->hashShift:I

    .line 274
    :goto_1b
    iget p1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    if-ge v2, p1, :cond_31

    add-int/lit8 p1, v2, 0x1

    .line 275
    invoke-direct {p0, v2}, Lkotlin/collections/builders/MapBuilder;->putRehash(I)Z

    move-result v0

    if-eqz v0, :cond_29

    move v2, p1

    goto :goto_1b

    .line 276
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 277
    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    .line 276
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    return-void
.end method

.method private final removeEntryAt(I)V
    .registers 4

    .line 363
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    .line 364
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_c

    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    .line 365
    :cond_c
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->removeHashAt(I)V

    .line 366
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 367
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    .line 368
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->registerModification()V

    return-void
.end method

.method private final removeHashAt(I)V
    .registers 11

    .line 375
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    const/4 v3, 0x0

    move v0, p1

    :cond_12
    add-int/lit8 v4, p1, -0x1

    if-nez p1, :cond_1d

    .line 377
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1e

    :cond_1d
    move p1, v4

    :goto_1e
    add-int/lit8 v3, v3, 0x1

    .line 378
    iget v4, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    if-le v3, v4, :cond_29

    .line 380
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v1, p1, v0

    return-void

    .line 383
    :cond_29
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v5, v4, p1

    if-nez v5, :cond_32

    .line 386
    aput v1, v4, v0

    return-void

    :cond_32
    const/4 v6, -0x1

    if-gez v5, :cond_3a

    .line 395
    aput v6, v4, v0

    :goto_37
    move v0, p1

    const/4 v3, 0x0

    goto :goto_57

    .line 399
    :cond_3a
    iget-object v4, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p1

    .line 404
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v4, v8

    if-lt v4, v3, :cond_57

    .line 406
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v5, v3, v0

    .line 407
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aput v0, v3, v7

    goto :goto_37

    :cond_57
    :goto_57
    add-int/2addr v2, v6

    if-gez v2, :cond_12

    .line 415
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v6, p1, v0

    return-void
.end method

.method private final shouldCompact(I)Z
    .registers 5

    .line 213
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    sub-int/2addr v0, v1

    .line 214
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, p1, :cond_1b

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_1b

    .line 217
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    if-lt v1, p1, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    .line 72
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    if-eqz v0, :cond_d

    .line 73
    new-instance v0, Lkotlin/collections/builders/SerializedMap;

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkotlin/collections/builders/SerializedMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 75
    :cond_d
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The map cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addKey$kotlin_stdlib(Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 322
    :goto_3
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 324
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    const/4 v2, 0x0

    .line 327
    :goto_16
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_4c

    .line 329
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getCapacity$kotlin_stdlib()I

    move-result v3

    if-lt v1, v3, :cond_29

    .line 330
    invoke-direct {p0, v4}, Lkotlin/collections/builders/MapBuilder;->ensureExtraCapacity(I)V

    goto :goto_3

    .line 333
    :cond_29
    iget v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    .line 334
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 335
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aput v0, p1, v1

    .line 336
    iget-object p1, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v3, p1, v0

    .line 337
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    .line 338
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->registerModification()V

    .line 339
    iget p1, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    if-le v2, p1, :cond_4b

    iput v2, p0, Lkotlin/collections/builders/MapBuilder;->maxProbeDistance:I

    :cond_4b
    return v1

    .line 342
    :cond_4c
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    neg-int p1, v3

    return p1

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_68

    .line 346
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->rehash(I)V

    goto :goto_3

    :cond_68
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_72

    .line 349
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->getHashSize()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_16

    :cond_72
    move v0, v3

    goto :goto_16
.end method

.method public final build()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    .line 68
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    if-lez v0, :cond_10

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_10
    sget-object v0, Lkotlin/collections/builders/MapBuilder;->Empty:Lkotlin/collections/builders/MapBuilder;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final checkIsMutable$kotlin_stdlib()V
    .registers 2

    .line 201
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 7

    .line 118
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 120
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1d

    const/4 v2, 0x0

    .line 121
    :goto_b
    iget-object v3, p0, Lkotlin/collections/builders/MapBuilder;->presenceArray:[I

    aget v4, v3, v2

    if-ltz v4, :cond_18

    .line 123
    iget-object v5, p0, Lkotlin/collections/builders/MapBuilder;->hashArray:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    .line 124
    aput v4, v3, v2

    :cond_18
    if-eq v2, v0, :cond_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 127
    :cond_1d
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 128
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    if-eqz v0, :cond_2d

    iget v2, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 129
    :cond_2d
    iput v1, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    .line 130
    iput v1, p0, Lkotlin/collections/builders/MapBuilder;->length:I

    .line 131
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->registerModification()V

    return-void
.end method

.method public final containsAllEntries$kotlin_stdlib(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 431
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 432
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 435
    :try_start_16
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder;->containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1c} :catch_1f

    if-nez v0, :cond_9

    nop

    :catch_1f
    :cond_1f
    return v1

    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method public final containsEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 424
    :cond_11
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$EntriesItr<",
            "TK;TV;>;"
        }
    .end annotation

    .line 490
    new-instance v0, Lkotlin/collections/builders/MapBuilder$EntriesItr;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_11

    .line 163
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 164
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->contentEquals(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_8
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getCapacity$kotlin_stdlib()I
    .registers 2

    .line 193
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->entriesView:Lkotlin/collections/builders/MapBuilderEntries;

    if-nez v0, :cond_e

    .line 155
    new-instance v0, Lkotlin/collections/builders/MapBuilderEntries;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilderEntries;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 156
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->entriesView:Lkotlin/collections/builders/MapBuilderEntries;

    .line 157
    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 158
    :cond_e
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysView:Lkotlin/collections/builders/MapBuilderKeys;

    if-nez v0, :cond_e

    .line 137
    new-instance v0, Lkotlin/collections/builders/MapBuilderKeys;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilderKeys;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 138
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->keysView:Lkotlin/collections/builders/MapBuilderKeys;

    .line 139
    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 140
    :cond_e
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 42
    iget v0, p0, Lkotlin/collections/builders/MapBuilder;->size:I

    return v0
.end method

.method public getValues()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesView:Lkotlin/collections/builders/MapBuilderValues;

    if-nez v0, :cond_e

    .line 146
    new-instance v0, Lkotlin/collections/builders/MapBuilderValues;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilderValues;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 147
    iput-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesView:Lkotlin/collections/builders/MapBuilderValues;

    .line 148
    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 149
    :cond_e
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 169
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    :goto_5
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 171
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->nextHashCode$kotlin_stdlib()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_11
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 79
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final isReadOnly$kotlin_stdlib()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lkotlin/collections/builders/MapBuilder;->isReadOnly:Z

    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final keysIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$KeysItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$KeysItr<",
            "TK;TV;>;"
        }
    .end annotation

    .line 488
    new-instance v0, Lkotlin/collections/builders/MapBuilder$KeysItr;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 91
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilder;->addKey$kotlin_stdlib(Ljava/lang/Object;)I

    move-result p1

    .line 92
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;->allocateValuesArray()[Ljava/lang/Object;

    move-result-object v0

    if-gez p1, :cond_15

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 94
    aget-object v1, v0, p1

    .line 95
    aput-object p2, v0, p1

    return-object v1

    .line 98
    :cond_15
    aput-object p2, v0, p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->putAllEntries(Ljava/util/Collection;)Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 110
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_b
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    .line 113
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    return-object v0
.end method

.method public final removeEntry$kotlin_stdlib(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 473
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_14

    return v1

    .line 475
    :cond_14
    iget-object v2, p0, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    .line 476
    :cond_26
    invoke-direct {p0, v0}, Lkotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final removeKey$kotlin_stdlib(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 356
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_b

    const/4 p1, 0x0

    return p1

    .line 358
    :cond_b
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final removeValue$kotlin_stdlib(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 482
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->findValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_b

    const/4 p1, 0x0

    return p1

    .line 484
    :cond_b
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder;->removeEntryAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final bridge size()I
    .registers 2

    .line 14
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getSize()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->entriesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$EntriesItr;

    move-result-object v1

    const/4 v2, 0x0

    .line 181
    :goto_17
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    if-lez v2, :cond_24

    .line 182
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_24
    invoke-virtual {v1, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->nextAppendString(Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 186
    :cond_2a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final valuesIterator$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder$ValuesItr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$ValuesItr<",
            "TK;TV;>;"
        }
    .end annotation

    .line 489
    new-instance v0, Lkotlin/collections/builders/MapBuilder$ValuesItr;

    invoke-direct {v0, p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-object v0
.end method

###### Class kotlin.collections.builders.MapBuilder.Companion (kotlin.collections.builders.MapBuilder$Companion)
.class public final Lkotlin/collections/builders/MapBuilder$Companion;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0007\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder$Companion;",
        "",
        "<init>",
        "()V",
        "MAGIC",
        "",
        "INITIAL_CAPACITY",
        "INITIAL_MAX_PROBE_DISTANCE",
        "TOMBSTONE",
        "Empty",
        "Lkotlin/collections/builders/MapBuilder;",
        "",
        "getEmpty$kotlin_stdlib",
        "()Lkotlin/collections/builders/MapBuilder;",
        "computeHashSize",
        "capacity",
        "computeShift",
        "hashSize",
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

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I
    .registers 2

    .line 492
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->computeHashSize(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I
    .registers 2

    .line 492
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->computeShift(I)I

    move-result p0

    return p0
.end method

.method private final computeHashSize(I)I
    .registers 3

    const/4 v0, 0x1

    .line 500
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    return p1
.end method

.method private final computeShift(I)I
    .registers 2

    .line 502
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public final getEmpty$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;
    .registers 2

    .line 498
    invoke-static {}, Lkotlin/collections/builders/MapBuilder;->access$getEmpty$cp()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.collections.builders.MapBuilder.EntriesItr (kotlin.collections.builders.MapBuilder$EntriesItr)
.class public final Lkotlin/collections/builders/MapBuilder$EntriesItr;
.super Lkotlin/collections/builders/MapBuilder$Itr;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntriesItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/builders/MapBuilder$Itr<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u000bH\u0096\u0002J\r\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u000eJ\u0012\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u00060\u0012j\u0002`\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder$EntriesItr;",
        "K",
        "V",
        "Lkotlin/collections/builders/MapBuilder$Itr;",
        "",
        "",
        "map",
        "Lkotlin/collections/builders/MapBuilder;",
        "<init>",
        "(Lkotlin/collections/builders/MapBuilder;)V",
        "next",
        "Lkotlin/collections/builders/MapBuilder$EntryRef;",
        "nextHashCode",
        "",
        "nextHashCode$kotlin_stdlib",
        "nextAppendString",
        "",
        "sb",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
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
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 561
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->next()Lkotlin/collections/builders/MapBuilder$EntryRef;

    move-result-object v0

    return-object v0
.end method

.method public next()Lkotlin/collections/builders/MapBuilder$EntryRef;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder$EntryRef<",
            "TK;TV;>;"
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->checkForComodification$kotlin_stdlib()V

    .line 565
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 566
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setLastIndex$kotlin_stdlib(I)V

    .line 567
    new-instance v0, Lkotlin/collections/builders/MapBuilder$EntryRef;

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder$EntryRef;-><init>(Lkotlin/collections/builders/MapBuilder;I)V

    .line 568
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->initNext$kotlin_stdlib()V

    return-object v0

    .line 565
    :cond_2e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextAppendString(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 582
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setLastIndex$kotlin_stdlib(I)V

    .line 583
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    .line 584
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    const-string v2, "(this Map)"

    if-ne v0, v1, :cond_39

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3c
    const/16 v0, 0x3d

    .line 585
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    .line 587
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    if-ne v0, v1, :cond_5c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_5c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    :goto_5f
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->initNext$kotlin_stdlib()V

    return-void

    .line 581
    :cond_63
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public final nextHashCode$kotlin_stdlib()I
    .registers 5

    .line 573
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 574
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->setLastIndex$kotlin_stdlib(I)V

    .line 575
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->getLastIndex$kotlin_stdlib()I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_48
    xor-int/2addr v0, v1

    .line 576
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntriesItr;->initNext$kotlin_stdlib()V

    return v0

    .line 573
    :cond_4d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

###### Class kotlin.collections.builders.MapBuilder.EntryRef (kotlin.collections.builders.MapBuilder$EntryRef)
.class public final Lkotlin/collections/builders/MapBuilder$EntryRef;
.super Ljava/lang/Object;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lkotlin/jvm/internal/markers/KMutableMap$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Lkotlin/jvm/internal/markers/KMutableMap$Entry;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B#\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u0010\u001a\u00028\u00032\u0006\u0010\u0011\u001a\u00028\u0003H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0007H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00028\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00028\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder$EntryRef;",
        "K",
        "V",
        "",
        "map",
        "Lkotlin/collections/builders/MapBuilder;",
        "index",
        "",
        "<init>",
        "(Lkotlin/collections/builders/MapBuilder;I)V",
        "expectedModCount",
        "key",
        "getKey",
        "()Ljava/lang/Object;",
        "value",
        "getValue",
        "setValue",
        "newValue",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "checkForComodification",
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


# instance fields
.field private final expectedModCount:I

.field private final index:I

.field private final map:Lkotlin/collections/builders/MapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;I)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->map:Lkotlin/collections/builders/MapBuilder;

    .line 594
    iput p2, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->index:I

    .line 596
    invoke-static {p1}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->expectedModCount:I

    return-void
.end method

.method private final checkForComodification()V
    .registers 3

    .line 629
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->expectedModCount:I

    if-ne v0, v1, :cond_b

    return-void

    .line 630
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "The backing map has been modified after this entry was obtained."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 620
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_24

    .line 621
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 622
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->checkForComodification()V

    .line 601
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 606
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->checkForComodification()V

    .line 607
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 624
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_17
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->checkForComodification()V

    .line 612
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 613
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$allocateValuesArray(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    .line 614
    iget v1, p0, Lkotlin/collections/builders/MapBuilder$EntryRef;->index:I

    aget-object v2, v0, v1

    .line 615
    aput-object p1, v0, v1

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$EntryRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.collections.builders.MapBuilder.Itr (kotlin.collections.builders.MapBuilder$Itr)
.class public Lkotlin/collections/builders/MapBuilder$Itr;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,751:1\n1#2:752\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u00020\u0003B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0015J\r\u0010\u001a\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u001bR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder$Itr;",
        "K",
        "V",
        "",
        "map",
        "Lkotlin/collections/builders/MapBuilder;",
        "<init>",
        "(Lkotlin/collections/builders/MapBuilder;)V",
        "getMap$kotlin_stdlib",
        "()Lkotlin/collections/builders/MapBuilder;",
        "index",
        "",
        "getIndex$kotlin_stdlib",
        "()I",
        "setIndex$kotlin_stdlib",
        "(I)V",
        "lastIndex",
        "getLastIndex$kotlin_stdlib",
        "setLastIndex$kotlin_stdlib",
        "expectedModCount",
        "initNext",
        "",
        "initNext$kotlin_stdlib",
        "hasNext",
        "",
        "remove",
        "checkForComodification",
        "checkForComodification$kotlin_stdlib",
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


# instance fields
.field private expectedModCount:I

.field private index:I

.field private lastIndex:I

.field private final map:Lkotlin/collections/builders/MapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    const/4 v0, -0x1

    .line 509
    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 510
    invoke-static {p1}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    .line 513
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-void
.end method


# virtual methods
.method public final checkForComodification$kotlin_stdlib()V
    .registers 3

    .line 533
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_b

    return-void

    .line 534
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final getIndex$kotlin_stdlib()I
    .registers 2

    .line 508
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    return v0
.end method

.method public final getLastIndex$kotlin_stdlib()I
    .registers 2

    .line 509
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    return v0
.end method

.method public final getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    .line 521
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final initNext$kotlin_stdlib()V
    .registers 3

    .line 517
    :goto_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getPresenceArray$p(Lkotlin/collections/builders/MapBuilder;)[I

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    aget v0, v0, v1

    if-gez v0, :cond_1b

    add-int/lit8 v1, v1, 0x1

    .line 518
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    goto :goto_0

    :cond_1b
    return-void
.end method

.method public final remove()V
    .registers 4

    .line 524
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->checkForComodification$kotlin_stdlib()V

    .line 525
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 526
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 527
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    iget v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    invoke-static {v0, v2}, Lkotlin/collections/builders/MapBuilder;->access$removeEntryAt(Lkotlin/collections/builders/MapBuilder;I)V

    .line 528
    iput v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 529
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getModCount$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->expectedModCount:I

    return-void

    .line 525
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setIndex$kotlin_stdlib(I)V
    .registers 2

    .line 508
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    return-void
.end method

.method public final setLastIndex$kotlin_stdlib(I)V
    .registers 2

    .line 509
    iput p1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    return-void
.end method

###### Class kotlin.collections.builders.MapBuilder.KeysItr (kotlin.collections.builders.MapBuilder$KeysItr)
.class public final Lkotlin/collections/builders/MapBuilder$KeysItr;
.super Lkotlin/collections/builders/MapBuilder$Itr;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeysItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/builders/MapBuilder$Itr<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TK;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\t\u001a\u00028\u0002H\u0096\u0002\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder$KeysItr;",
        "K",
        "V",
        "Lkotlin/collections/builders/MapBuilder$Itr;",
        "",
        "map",
        "Lkotlin/collections/builders/MapBuilder;",
        "<init>",
        "(Lkotlin/collections/builders/MapBuilder;)V",
        "next",
        "()Ljava/lang/Object;",
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
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->checkForComodification$kotlin_stdlib()V

    .line 541
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 542
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/MapBuilder$KeysItr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->setLastIndex$kotlin_stdlib(I)V

    .line 543
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    .line 544
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$KeysItr;->initNext$kotlin_stdlib()V

    return-object v0

    .line 541
    :cond_2f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

###### Class kotlin.collections.builders.MapBuilder.ValuesItr (kotlin.collections.builders.MapBuilder$ValuesItr)
.class public final Lkotlin/collections/builders/MapBuilder$ValuesItr;
.super Lkotlin/collections/builders/MapBuilder$Itr;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValuesItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/builders/MapBuilder$Itr<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u0004B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\t\u001a\u00028\u0003H\u0096\u0002\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/collections/builders/MapBuilder$ValuesItr;",
        "K",
        "V",
        "Lkotlin/collections/builders/MapBuilder$Itr;",
        "",
        "map",
        "Lkotlin/collections/builders/MapBuilder;",
        "<init>",
        "(Lkotlin/collections/builders/MapBuilder;)V",
        "next",
        "()Ljava/lang/Object;",
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
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/MapBuilder<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->checkForComodification$kotlin_stdlib()V

    .line 553
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 554
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->setLastIndex$kotlin_stdlib(I)V

    .line 555
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->getMap$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    .line 556
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$ValuesItr;->initNext$kotlin_stdlib()V

    return-object v0

    .line 553
    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
