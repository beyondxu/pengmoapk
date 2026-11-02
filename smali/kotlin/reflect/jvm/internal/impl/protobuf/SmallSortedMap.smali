###### Class kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field private isImmutable:Z

.field private volatile lazyEntrySet:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private final maxArraySize:I

.field private overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 153
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 154
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->maxArraySize:I

    .line 155
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 156
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ILkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 87
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;-><init>(I)V

    return-void
.end method

.method static synthetic access$200(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)V
    .registers 1

    .line 87
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method static synthetic access$400(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)Ljava/util/List;
    .registers 1

    .line 87
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)Ljava/util/Map;
    .registers 1

    .line 87
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object p0
.end method

.method private binarySearchInArray(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_23

    .line 322
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_20

    add-int/lit8 v0, v0, 0x1

    :goto_1e
    neg-int p1, v0

    return p1

    :cond_20
    if-nez v2, :cond_23

    return v1

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-gt v0, v1, :cond_47

    add-int v2, v0, v1

    .line 331
    div-int/lit8 v2, v2, 0x2

    .line 332
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_40

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_24

    :cond_40
    if-lez v3, :cond_46

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_24

    :cond_46
    return v2

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method private checkMutable()V
    .registers 2

    .line 364
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_5

    return-void

    .line 365
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private ensureEntryArrayMutable()V
    .registers 3

    .line 389
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->checkMutable()V

    .line 390
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    :cond_1a
    return-void
.end method

.method private getOverflowEntriesMutable()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->checkMutable()V

    .line 378
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_18

    .line 379
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 381
    :cond_18
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static newFieldMap(I)Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite<",
            "TFieldDescriptorType;>;>(I)",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;-><init>(I)V

    return-object v0
.end method

.method private removeArrayEntryAt(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->checkMutable()V

    .line 297
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 301
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_36
    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 262
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->checkMutable()V

    .line 263
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 264
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    :cond_10
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 267
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 214
    check-cast p1, Ljava/lang/Comparable;

    .line 215
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->lazyEntrySet:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_c

    .line 354
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->lazyEntrySet:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;

    .line 356
    :cond_c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->lazyEntrySet:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;

    return-object v0
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

    .line 227
    check-cast p1, Ljava/lang/Comparable;

    .line 228
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_15

    .line 230
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 232
    :cond_15
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayEntryAt(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public getNumArrayEntries()I
    .registers 2

    .line 180
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOverflowEntries()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isImmutable()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public makeImmutable()V
    .registers 2

    .line 161
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_1a

    .line 166
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->isImmutable:Z

    :cond_1a
    return-void
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->checkMutable()V

    .line 238
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 241
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 243
    :cond_16
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 245
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->maxArraySize:I

    if-lt v0, v1, :cond_29

    .line 247
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 250
    :cond_29
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->maxArraySize:I

    if-ne v1, v2, :cond_4c

    .line 252
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    .line 253
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_4c
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    invoke-direct {v2, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 87
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 279
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->checkMutable()V

    .line 281
    check-cast p1, Ljava/lang/Comparable;

    .line 282
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    .line 284
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 288
    :cond_10
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return-object p1

    .line 291
    :cond_1a
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 3

    .line 202
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$1)
.class final Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->newFieldMap(I)Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;-><init>(ILkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;)V

    return-void
.end method


# virtual methods
.method public makeImmutable()V
    .registers 4

    .line 104
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_5b

    const/4 v0, 0x0

    .line 105
    :goto_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 106
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 110
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 114
    :cond_2d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 117
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 121
    :cond_5b
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->makeImmutable()V

    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 100
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap.EmptySet (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$EmptySet)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySet"
.end annotation


# static fields
.field private static final ITERABLE:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 591
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Ljava/util/Iterator;

    .line 606
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Ljava/lang/Iterable;

    return-void
.end method

.method static synthetic access$700()Ljava/util/Iterator;
    .registers 1

    .line 589
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method static iterable()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 615
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Ljava/lang/Iterable;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap.EmptySet.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$EmptySet$1)
.class final Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .line 598
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 602
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap.EmptySet.AnonymousClass2 (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$EmptySet$2)
.class final Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 609
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet;->access$700()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap.Entry (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$Entry)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap<",
        "TK;TV;>.Entry;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 409
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    .line 411
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 406
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 463
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 400
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->compareTo(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;)I"
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 442
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 446
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 447
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public getKey()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 400
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 452
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->access$200(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)V

    .line 432
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 433
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 458
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap.EntryIterator (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$EntryIterator)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lazyOverflowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private nextCalledBeforeRemove:Z

.field private pos:I

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 534
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 532
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private getOverflowIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 578
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->access$600(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    .line 580
    :cond_14
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .line 540
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->access$400(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1d

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 532
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 549
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->access$400(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 550
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->access$400(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 552
    :cond_23
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .registers 4

    .line 557
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 561
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->access$200(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)V

    .line 563
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->access$400(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 564
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->access$500(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;I)Ljava/lang/Object;

    return-void

    .line 566
    :cond_26
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 558
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap.EntrySet (kotlin.reflect.jvm.internal.impl.protobuf.SmallSortedMap$EntrySet)
.class Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)V
    .registers 2

    .line 470
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 470
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 470
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 500
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 2

    .line 524
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 490
    check-cast p1, Ljava/util/Map$Entry;

    .line 491
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 492
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1d

    if-eqz v0, :cond_1b

    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 474
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntryIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 514
    check-cast p1, Ljava/util/Map$Entry;

    .line 515
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 516
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    .line 479
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EntrySet;->this$0:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->size()I

    move-result v0

    return v0
.end method
