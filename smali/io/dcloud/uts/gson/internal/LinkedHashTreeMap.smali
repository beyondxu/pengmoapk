###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap (io.dcloud.uts.gson.internal.LinkedHashTreeMap)
.class public final Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;,
        Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;,
        Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;,
        Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;,
        Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;,
        Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
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

.field private entrySet:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    sget-object v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

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

    .line 75
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    .line 55
    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    if-eqz p1, :cond_b

    goto :goto_d

    .line 78
    :cond_b
    sget-object p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :goto_d
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 79
    new-instance p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    invoke-direct {p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;-><init>()V

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/16 p1, 0x10

    .line 80
    new-array p1, p1, [Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->table:[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 81
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method private doubleCapacity()V
    .registers 3

    .line 561
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->table:[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->doubleCapacity([Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->table:[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 562
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iput v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method static doubleCapacity([Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)[",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 571
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 573
    new-array v1, v1, [Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 574
    new-instance v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;-><init>()V

    .line 575
    new-instance v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v3}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 576
    new-instance v4, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v4}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v0, :cond_67

    .line 580
    aget-object v7, p0, v6

    if-nez v7, :cond_1d

    goto :goto_64

    .line 586
    :cond_1d
    invoke-virtual {v2, v7}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 589
    :goto_22
    invoke-virtual {v2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v10

    if-eqz v10, :cond_33

    .line 590
    iget v10, v10, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v10, v0

    if-nez v10, :cond_30

    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 598
    :cond_33
    invoke-virtual {v3, v8}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 599
    invoke-virtual {v4, v9}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 600
    invoke-virtual {v2, v7}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 601
    :goto_3c
    invoke-virtual {v2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v7

    if-eqz v7, :cond_4f

    .line 602
    iget v10, v7, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v10, v0

    if-nez v10, :cond_4b

    .line 603
    invoke-virtual {v3, v7}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3c

    .line 605
    :cond_4b
    invoke-virtual {v4, v7}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3c

    :cond_4f
    const/4 v7, 0x0

    if-lez v8, :cond_57

    .line 610
    invoke-virtual {v3}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v8

    goto :goto_58

    :cond_57
    move-object v8, v7

    :goto_58
    aput-object v8, v1, v6

    add-int v8, v6, v0

    if-lez v9, :cond_62

    .line 611
    invoke-virtual {v4}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v7

    :cond_62
    aput-object v7, v1, v8

    :goto_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_67
    return-object v1
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p2, :cond_d

    if-eqz p1, :cond_b

    .line 227
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

    .line 870
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is unsupported"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rebalance(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_79

    .line 343
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 344
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 345
    iget v3, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    if-eqz v1, :cond_12

    .line 346
    iget v4, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3c

    .line 350
    iget-object v0, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 351
    iget-object v3, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_21

    .line 352
    iget v3, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-eqz v0, :cond_26

    .line 353
    iget v2, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_26
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_36

    if-nez v2, :cond_2f

    if-nez p2, :cond_2f

    goto :goto_36

    .line 360
    :cond_2f
    invoke-direct {p0, v1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->rotateRight(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 361
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->rotateLeft(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_39

    .line 357
    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->rotateLeft(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    :goto_39
    if-eqz p2, :cond_76

    goto :goto_79

    :cond_3c
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_63

    .line 368
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 369
    iget-object v3, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_49

    .line 370
    iget v3, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-eqz v1, :cond_4e

    .line 371
    iget v2, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_4e
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_5d

    if-nez v2, :cond_56

    if-nez p2, :cond_56

    goto :goto_5d

    .line 378
    :cond_56
    invoke-direct {p0, v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->rotateLeft(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 379
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->rotateRight(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_60

    .line 375
    :cond_5d
    :goto_5d
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->rotateRight(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    :goto_60
    if-eqz p2, :cond_76

    goto :goto_79

    :cond_63
    if-nez v5, :cond_6c

    add-int/lit8 v3, v3, 0x1

    .line 386
    iput v3, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz p2, :cond_76

    goto :goto_79

    .line 393
    :cond_6c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-nez p2, :cond_76

    goto :goto_79

    .line 342
    :cond_76
    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    :cond_79
    :goto_79
    return-void
.end method

.method private replaceInParent(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    .line 316
    iput-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eqz p2, :cond_9

    .line 318
    iput-object v0, p2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    :cond_9
    if-eqz v0, :cond_15

    .line 322
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-ne v1, p1, :cond_12

    .line 323
    iput-object p2, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-void

    .line 326
    :cond_12
    iput-object p2, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-void

    .line 329
    :cond_15
    iget p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->hash:I

    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->table:[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    .line 330
    aput-object p2, v0, p1

    return-void
.end method

.method private rotateLeft(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 405
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 406
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 407
    iget-object v2, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 408
    iget-object v3, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 411
    iput-object v2, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v2, :cond_e

    .line 413
    iput-object p1, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 416
    :cond_e
    invoke-direct {p0, p1, v1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 419
    iput-object p1, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 420
    iput-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    .line 423
    iget v0, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v2, :cond_21

    .line 424
    iget v2, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 423
    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 425
    iget p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v3, :cond_30

    .line 426
    iget v4, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 425
    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    return-void
.end method

.method private rotateRight(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 433
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 434
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 435
    iget-object v2, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 436
    iget-object v3, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 439
    iput-object v3, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_e

    .line 441
    iput-object p1, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 444
    :cond_e
    invoke-direct {p0, p1, v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 447
    iput-object p1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 448
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    .line 451
    iget v1, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-eqz v3, :cond_21

    .line 452
    iget v3, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 451
    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 453
    iget p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v2, :cond_30

    .line 454
    iget v4, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 453
    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    return-void
.end method

.method private static secondaryHash(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 865
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 108
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->table:[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    .line 110
    iget v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 113
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 114
    iget-object v2, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    :goto_13
    if-eq v2, v0, :cond_1d

    .line 115
    iget-object v3, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 116
    iput-object v1, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, v3

    goto :goto_13

    .line 120
    :cond_1d
    iput-object v0, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

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

    .line 461
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->entrySet:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;

    if-eqz v0, :cond_5

    return-object v0

    .line 462
    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;-><init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->entrySet:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;

    return-object v0
.end method

.method find(Ljava/lang/Object;Z)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 136
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->table:[Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v6

    .line 138
    array-length v2, v1

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    and-int/2addr v2, v6

    .line 139
    aget-object v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    .line 145
    sget-object v5, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, v5, :cond_1d

    .line 146
    move-object v5, p1

    check-cast v5, Ljava/lang/Comparable;

    goto :goto_1e

    :cond_1d
    move-object v5, v4

    :goto_1e
    if-eqz v5, :cond_27

    .line 151
    iget-object v7, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v5, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    goto :goto_2d

    .line 152
    :cond_27
    iget-object v7, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    :goto_2d
    if-nez v7, :cond_30

    return-object v3

    :cond_30
    if-gez v7, :cond_35

    .line 160
    iget-object v8, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_37

    :cond_35
    iget-object v8, v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    :goto_37
    if-nez v8, :cond_3b

    move v10, v7

    goto :goto_3f

    :cond_3b
    move-object v3, v8

    goto :goto_1e

    :cond_3d
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_3f
    if-nez p2, :cond_42

    return-object v4

    .line 175
    :cond_42
    iget-object v7, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-nez v3, :cond_7a

    .line 179
    sget-object p2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v0, p2, :cond_6e

    instance-of p2, p1, Ljava/lang/Comparable;

    if-eqz p2, :cond_4f

    goto :goto_6e

    .line 180
    :cond_4f
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

    :cond_6e
    :goto_6e
    move-object v4, v3

    .line 182
    new-instance v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iget-object v8, v7, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;-><init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 183
    aput-object v3, v1, v2

    goto :goto_8d

    :cond_7a
    move-object v5, p1

    move-object v4, v3

    .line 185
    new-instance v3, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iget-object v8, v7, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    invoke-direct/range {v3 .. v8}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;-><init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    if-gez v10, :cond_88

    .line 187
    iput-object v3, v4, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_8a

    .line 189
    :cond_88
    iput-object v3, v4, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 191
    :goto_8a
    invoke-direct {p0, v4, v9}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->rebalance(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 194
    :goto_8d
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    iget p2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->threshold:I

    if-le p1, p2, :cond_9a

    .line 195
    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->doubleCapacity()V

    .line 197
    :cond_9a
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/2addr p1, v9

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    return-object v3
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 221
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 222
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    return-object v0

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    .line 205
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

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

    .line 89
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 90
    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

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

    .line 466
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->keySet:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;

    if-eqz v0, :cond_5

    return-object v0

    .line 467
    :cond_5
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;-><init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->keySet:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;

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

    .line 101
    invoke-virtual {p0, p1, v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p1

    .line 102
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 103
    iput-object p2, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0

    .line 99
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

    .line 124
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 125
    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method removeInternal(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 250
    iget-object p2, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 251
    iget-object p2, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 252
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 255
    :cond_13
    iget-object p2, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 256
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 257
    iget-object v2, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v3, 0x0

    if-eqz p2, :cond_56

    if-eqz v1, :cond_56

    .line 269
    iget v2, p2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v4, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-le v2, v4, :cond_29

    invoke-virtual {p2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->last()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p2

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->first()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p2

    .line 270
    :goto_2d
    invoke-virtual {p0, p2, v3}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->removeInternal(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 273
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_3d

    .line 275
    iget v2, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 276
    iput-object v1, p2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 277
    iput-object p2, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 278
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    .line 281
    :goto_3e
    iget-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_4a

    .line 283
    iget v3, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 284
    iput-object v1, p2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 285
    iput-object p2, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 286
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 288
    :cond_4a
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 289
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    return-void

    :cond_56
    if-eqz p2, :cond_5e

    .line 292
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 293
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_69

    :cond_5e
    if-eqz v1, :cond_66

    .line 295
    invoke-direct {p0, p1, v1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 296
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_69

    .line 298
    :cond_66
    invoke-direct {p0, p1, v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->replaceInParent(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V

    .line 301
    :goto_69
    invoke-direct {p0, v2, v3}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->rebalance(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 302
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    .line 303
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    return-void
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, p1, v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->removeInternal(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Z)V

    :cond_a
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 85
    iget v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.AnonymousClass1 (io.dcloud.uts.gson.internal.LinkedHashTreeMap$1)
.class Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$1;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3

    .line 47
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 45
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$1;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.AvlBuilder (io.dcloud.uts.gson.internal.LinkedHashTreeMap$AvlBuilder)
.class final Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
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


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 690
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v0, 0x1

    .line 691
    iput v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 694
    iget v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v1, :cond_1f

    iget v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1f

    add-int/2addr v2, v0

    .line 695
    iput v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    sub-int/2addr v1, v0

    .line 696
    iput v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 697
    iget v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 700
    :cond_1f
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 701
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 702
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 705
    iget v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    const/4 v3, 0x2

    if-lez v2, :cond_3e

    and-int/2addr v1, v0

    if-nez v1, :cond_3e

    add-int/2addr p1, v3

    .line 706
    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    sub-int/2addr v2, v0

    .line 707
    iput v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 708
    iget p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    :cond_3e
    const/4 p1, 0x4

    .line 724
    :goto_3f
    iget v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_80

    .line 725
    iget v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v1, :cond_64

    .line 727
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 728
    iget-object v2, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 729
    iget-object v4, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 730
    iget-object v5, v4, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v5, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 731
    iput-object v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 733
    iput-object v4, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 734
    iput-object v1, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 735
    iget v5, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/2addr v5, v0

    iput v5, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 736
    iput-object v2, v4, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 737
    iput-object v2, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_7d

    :cond_64
    const/4 v2, 0x0

    if-ne v1, v0, :cond_79

    .line 740
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 741
    iget-object v4, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 742
    iput-object v4, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 744
    iput-object v1, v4, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 745
    iget v5, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/2addr v5, v0

    iput v5, v4, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 746
    iput-object v4, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 747
    iput v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_7d

    :cond_79
    if-ne v1, v3, :cond_7d

    .line 749
    iput v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    :cond_7d
    :goto_7d
    mul-int/lit8 p1, p1, 0x2

    goto :goto_3f

    :cond_80
    return-void
.end method

.method reset(I)V
    .registers 3

    .line 682
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 683
    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    const/4 p1, 0x0

    .line 684
    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 685
    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 p1, 0x0

    .line 686
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method root()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 756
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_7

    return-object v0

    .line 757
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.AvlIterator (io.dcloud.uts.gson.internal.LinkedHashTreeMap$AvlIterator)
.class Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
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


# instance fields
.field private stackTop:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 644
    :cond_6
    iget-object v2, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 645
    iput-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 646
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    :goto_c
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_16

    .line 647
    iput-object v1, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 646
    iget-object v1, v2, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_c

    .line 650
    :cond_16
    iput-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-object v0
.end method

.method reset(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_b

    .line 632
    iput-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 631
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_1

    .line 635
    :cond_b
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.EntrySet (io.dcloud.uts.gson.internal.LinkedHashTreeMap$EntrySet)
.class final Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
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
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;)V
    .registers 2

    .line 797
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 828
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 811
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

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

    .line 803
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet$1;-><init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .line 815
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 819
    :cond_6
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object p1

    if-nez p1, :cond_11

    return v1

    .line 823
    :cond_11
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->removeInternal(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Z)V

    return v1
.end method

.method public size()I
    .registers 2

    .line 799
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.EntrySet.AnonymousClass1 (io.dcloud.uts.gson.internal.LinkedHashTreeMap$EntrySet$1)
.class Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet$1;
.super Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;)V
    .registers 2

    .line 803
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet$1;->this$1:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;

    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 803
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;

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

    .line 805
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$EntrySet$1;->nextNode()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.KeySet (io.dcloud.uts.gson.internal.LinkedHashTreeMap$KeySet)
.class final Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;
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
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;)V
    .registers 2

    .line 832
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 854
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 846
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->containsKey(Ljava/lang/Object;)Z

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

    .line 838
    new-instance v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet$1;-><init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 850
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

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

    .line 834
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.KeySet.AnonymousClass1 (io.dcloud.uts.gson.internal.LinkedHashTreeMap$KeySet$1)
.class Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet$1;
.super Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;)V
    .registers 2

    .line 838
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet$1;->this$1:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;

    iget-object p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;)V

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

    .line 840
    invoke-virtual {p0}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$KeySet$1;->nextNode()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.LinkedTreeMapIterator (io.dcloud.uts.gson.internal.LinkedHashTreeMap$LinkedTreeMapIterator)
.class abstract Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;
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

.field lastReturned:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;)V
    .registers 3

    .line 768
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iget-object v0, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 766
    iget p1, p1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 772
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method final nextNode()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 777
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->header:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_1d

    .line 780
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    iget v1, v1, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    if-ne v1, v2, :cond_17

    .line 783
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 784
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-object v0

    .line 781
    :cond_17
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 778
    :cond_1d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 4

    .line 788
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_14

    .line 791
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->removeInternal(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Z)V

    const/4 v0, 0x0

    .line 792
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->lastReturned:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 793
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->this$0:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->expectedModCount:I

    return-void

    .line 789
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

###### Class io.dcloud.uts.gson.internal.LinkedHashTreeMap.Node (io.dcloud.uts.gson.internal.LinkedHashTreeMap$Node)
.class final Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/LinkedHashTreeMap;
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
.field final hash:I

.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
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

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 484
    iput v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->hash:I

    .line 485
    iput-object p0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    iput-object p0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method constructor <init>(Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;TK;I",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->parent:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 491
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 492
    iput p3, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->hash:I

    const/4 p1, 0x1

    .line 493
    iput p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 494
    iput-object p4, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 495
    iput-object p5, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 496
    iput-object p0, p5, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->next:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    .line 497
    iput-object p0, p4, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->prev:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 516
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 517
    check-cast p1, Ljava/util/Map$Entry;

    .line 518
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

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
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v0, :cond_27

    .line 519
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

.method public first()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-object v1, p0

    :goto_3
    if-eqz v0, :cond_b

    .line 541
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->left:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

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

    .line 501
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 525
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 526
    :goto_b
    iget-object v2, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public last()Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

    move-object v1, p0

    :goto_3
    if-eqz v0, :cond_b

    .line 554
    iget-object v1, v0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->right:Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;

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

    .line 509
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 510
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
