###### Class io.dcloud.uts.gson.internal.LinkedTreeMap (io.dcloud.uts.gson.internal.LinkedTreeMap)
.class public final Lio/dcloud/uts/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;,
        Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;,
        Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;,
        Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    sget-object v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    .line 52
    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    .line 55
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;-><init>()V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz p1, :cond_12

    goto :goto_14

    .line 77
    :cond_12
    sget-object p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_14
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p2, :cond_d

    if-eqz p1, :cond_b

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is unsupported"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rebalance(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_79

    .line 315
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 316
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 317
    iget v3, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    if-eqz v1, :cond_12

    .line 318
    iget v4, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3c

    .line 322
    iget-object v0, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 323
    iget-object v3, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_21

    .line 324
    iget v3, v3, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-eqz v0, :cond_26

    .line 325
    iget v2, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    :cond_26
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_36

    if-nez v2, :cond_2f

    if-nez p2, :cond_2f

    goto :goto_36

    .line 332
    :cond_2f
    invoke-direct {p0, v1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->rotateRight(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    .line 333
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->rotateLeft(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_39

    .line 329
    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->rotateLeft(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    :goto_39
    if-eqz p2, :cond_76

    goto :goto_79

    :cond_3c
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_63

    .line 340
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 341
    iget-object v3, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_49

    .line 342
    iget v3, v3, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-eqz v1, :cond_4e

    .line 343
    iget v2, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    :cond_4e
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_5d

    if-nez v2, :cond_56

    if-nez p2, :cond_56

    goto :goto_5d

    .line 350
    :cond_56
    invoke-direct {p0, v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->rotateLeft(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    .line 351
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->rotateRight(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_60

    .line 347
    :cond_5d
    :goto_5d
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->rotateRight(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    :goto_60
    if-eqz p2, :cond_76

    goto :goto_79

    :cond_63
    if-nez v5, :cond_6c

    add-int/lit8 v3, v3, 0x1

    .line 358
    iput v3, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz p2, :cond_76

    goto :goto_79

    .line 365
    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    if-nez p2, :cond_76

    goto :goto_79

    .line 314
    :cond_76
    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    :cond_79
    :goto_79
    return-void
.end method

.method private replaceInParent(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 288
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v1, 0x0

    .line 289
    iput-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz p2, :cond_9

    .line 291
    iput-object v0, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    :cond_9
    if-eqz v0, :cond_15

    .line 295
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_12

    .line 296
    iput-object p2, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    return-void

    .line 299
    :cond_12
    iput-object p2, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    return-void

    .line 302
    :cond_15
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->root:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    return-void
.end method

.method private rotateLeft(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 377
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 378
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 379
    iget-object v2, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 380
    iget-object v3, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 383
    iput-object v2, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz v2, :cond_e

    .line 385
    iput-object p1, v2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 388
    :cond_e
    invoke-direct {p0, p1, v1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    .line 391
    iput-object p1, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 392
    iput-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    .line 395
    iget v0, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v2, :cond_21

    .line 396
    iget v2, v2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 395
    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    .line 397
    iget p1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz v3, :cond_30

    .line 398
    iget v4, v3, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    .line 397
    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    return-void
.end method

.method private rotateRight(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 405
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 406
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 407
    iget-object v2, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 408
    iget-object v3, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 411
    iput-object v3, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_e

    .line 413
    iput-object p1, v3, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 416
    :cond_e
    invoke-direct {p0, p1, v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    .line 419
    iput-object p1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 420
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    .line 423
    iget v1, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v3, :cond_21

    .line 424
    iget v3, v3, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 423
    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    .line 425
    iget p1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz v2, :cond_30

    .line 426
    iget v4, v2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    .line 425
    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 631
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->root:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    .line 106
    iget v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    .line 109
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 110
    iput-object v0, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->entrySet:Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;

    if-eqz v0, :cond_5

    return-object v0

    .line 434
    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->entrySet:Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;

    return-object v0
.end method

.method find(Ljava/lang/Object;Z)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 126
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->root:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 132
    sget-object v3, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v3, :cond_f

    .line 133
    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_10

    :cond_f
    move-object v3, v2

    :goto_10
    if-eqz v3, :cond_19

    .line 138
    iget-object v4, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1f

    .line 139
    :cond_19
    iget-object v4, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1f
    if-nez v4, :cond_22

    return-object v1

    :cond_22
    if-gez v4, :cond_27

    .line 147
    iget-object v5, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    goto :goto_29

    :cond_27
    iget-object v5, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    :goto_29
    if-nez v5, :cond_2c

    goto :goto_2f

    :cond_2c
    move-object v1, v5

    goto :goto_10

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    if-nez p2, :cond_32

    return-object v2

    .line 162
    :cond_32
    iget-object p2, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v2, 0x1

    if-nez v1, :cond_69

    .line 166
    sget-object v3, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v3, :cond_5f

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_40

    goto :goto_5f

    .line 167
    :cond_40
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 169
    :cond_5f
    :goto_5f
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iget-object v3, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0, v1, p1, p2, v3}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;-><init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    .line 170
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->root:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    goto :goto_7a

    .line 172
    :cond_69
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iget-object v3, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0, v1, p1, p2, v3}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;-><init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    if-gez v4, :cond_75

    .line 174
    iput-object v0, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    goto :goto_77

    .line 176
    :cond_75
    iput-object v0, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 178
    :goto_77
    invoke-direct {p0, v1, v2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->rebalance(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Z)V

    .line 180
    :goto_7a
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    .line 181
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    return-object v0
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 206
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-object v0

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    .line 189
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    :cond_9
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 86
    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->keySet:Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;

    if-eqz v0, :cond_5

    return-object v0

    .line 439
    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;-><init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->keySet:Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, p1, v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1

    .line 98
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 99
    iput-object p2, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0

    .line 95
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 115
    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method removeInternal(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_e

    .line 222
    iget-object p2, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 223
    iget-object p2, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 226
    :cond_e
    iget-object p2, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 227
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 228
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_52

    if-eqz v0, :cond_52

    .line 240
    iget v1, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    iget v4, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    if-le v1, v4, :cond_25

    invoke-virtual {p2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->last()Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p2

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->first()Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p2

    .line 241
    :goto_29
    invoke-virtual {p0, p2, v2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->removeInternal(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Z)V

    .line 244
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_39

    .line 246
    iget v1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    .line 247
    iput-object v0, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 248
    iput-object p2, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 249
    iput-object v3, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 253
    :goto_3a
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_46

    .line 255
    iget v2, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    .line 256
    iput-object v0, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 257
    iput-object p2, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 258
    iput-object v3, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 261
    :cond_46
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    .line 262
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    return-void

    :cond_52
    if-eqz p2, :cond_5a

    .line 265
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    .line 266
    iput-object v3, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    goto :goto_65

    :cond_5a
    if-eqz v0, :cond_62

    .line 268
    invoke-direct {p0, p1, v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    .line 269
    iput-object v3, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    goto :goto_65

    .line 271
    :cond_62
    invoke-direct {p0, p1, v3}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V

    .line 274
    :goto_65
    invoke-direct {p0, v1, v2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->rebalance(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Z)V

    .line 275
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    .line 276
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    return-void
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, p1, v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->removeInternal(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Z)V

    :cond_a
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 81
    iget v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedTreeMap.AnonymousClass1 (io.dcloud.uts.gson.internal.LinkedTreeMap$1)
.class Lio/dcloud/uts/gson/internal/LinkedTreeMap$1;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Comparable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3

    .line 45
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 43
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$1;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class io.dcloud.uts.gson.internal.LinkedTreeMap.EntrySet (io.dcloud.uts.gson.internal.LinkedTreeMap$EntrySet)
.class Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap;)V
    .registers 2

    .line 563
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 594
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 577
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 569
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet$1;-><init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 581
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 585
    :cond_6
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1

    if-nez p1, :cond_11

    return v1

    .line 589
    :cond_11
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->removeInternal(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Z)V

    return v1
.end method

.method public size()I
    .registers 2

    .line 565
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    iget v0, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedTreeMap.EntrySet.AnonymousClass1 (io.dcloud.uts.gson.internal.LinkedTreeMap$EntrySet$1)
.class Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet$1;
.super Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/internal/LinkedTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;)V
    .registers 2

    .line 569
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet$1;->this$1:Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;

    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 569
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 571
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$EntrySet$1;->nextNode()Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedTreeMap.KeySet (io.dcloud.uts.gson.internal.LinkedTreeMap$KeySet)
.class final Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 620
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 612
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 604
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet$1;-><init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 616
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    .line 600
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    iget v0, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedTreeMap.KeySet.AnonymousClass1 (io.dcloud.uts.gson.internal.LinkedTreeMap$KeySet$1)
.class Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet$1;
.super Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/internal/LinkedTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;)V
    .registers 2

    .line 604
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet$1;->this$1:Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;

    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/LinkedTreeMap$KeySet$1;->nextNode()Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedTreeMap.LinkedTreeMapIterator (io.dcloud.uts.gson.internal.LinkedTreeMap$LinkedTreeMapIterator)
.class abstract Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap;)V
    .registers 3

    .line 534
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 532
    iget p1, p1, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 538
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method final nextNode()Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 543
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_1d

    .line 546
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    iget v1, v1, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_17

    .line 549
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 550
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    return-object v0

    .line 547
    :cond_17
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 544
    :cond_1d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 4

    .line 554
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_14

    .line 557
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->removeInternal(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Z)V

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->lastReturned:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 559
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedTreeMap;

    iget v0, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void

    .line 555
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedTreeMap.Node (io.dcloud.uts.gson.internal.LinkedTreeMap$Node)
.class final Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
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
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 455
    iput-object p0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    iput-object p0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    return-void
.end method

.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;TK;",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 461
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 462
    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->height:I

    .line 463
    iput-object p3, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 464
    iput-object p4, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 465
    iput-object p0, p4, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    .line 466
    iput-object p0, p3, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 485
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 486
    check-cast p1, Ljava/util/Map$Entry;

    .line 487
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_12

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_1c

    :cond_12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :goto_1c
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v0, :cond_27

    .line 488
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_33

    goto :goto_31

    :cond_27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    :goto_31
    const/4 p1, 0x1

    return p1

    :cond_33
    return v1
.end method

.method public first()Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-object v1, p0

    :goto_3
    if-eqz v0, :cond_b

    .line 510
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_b
    return-object v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 494
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 495
    :goto_b
    iget-object v2, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public last()Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-object v1, p0

    :goto_3
    if-eqz v0, :cond_b

    .line 523
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_b
    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 479
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
