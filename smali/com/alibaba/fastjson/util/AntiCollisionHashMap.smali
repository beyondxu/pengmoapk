###### Class com.alibaba.fastjson.util.AntiCollisionHashMap (com.alibaba.fastjson.util.AntiCollisionHashMap)
.class public Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.super Ljava/util/AbstractMap;
.source "AntiCollisionHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
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
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final KEY:I = 0x1000193

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final M_MASK:I = -0x789a012d

.field static final SEED:I = -0x7ee3623b

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field volatile transient modCount:I

.field final random:I

.field transient size:I

.field transient table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I

.field volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 130
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    .line 83
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x1869f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    .line 779
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    const/high16 v0, 0x3f400000    # 0.75f

    .line 131
    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    const/16 v0, 0xc

    .line 132
    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    const/16 v0, 0x10

    .line 133
    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/high16 v0, 0x3f400000    # 0.75f

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 6

    .line 92
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    .line 83
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x1869f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    .line 779
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    if-ltz p1, :cond_55

    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_20

    const/high16 p1, 0x40000000    # 2.0f

    :cond_20
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_41

    .line 98
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    const/4 v0, 0x1

    :goto_2c
    if-ge v0, p1, :cond_31

    shl-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 107
    :cond_31
    iput p2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    int-to-float p1, v0

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 108
    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    .line 109
    new-array p1, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    return-void

    .line 99
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal load factor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_55
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal initial capacity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;-><init>(IF)V

    .line 151
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putAllForCreate(Ljava/util/Map;)V

    return-void
.end method

.method private containsNullValue()Z
    .registers 6

    .line 584
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 585
    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_17

    .line 586
    aget-object v3, v0, v2

    :goto_9
    if-eqz v3, :cond_14

    .line 587
    iget-object v4, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_11

    const/4 v0, 0x1

    return v0

    .line 586
    :cond_11
    iget-object v3, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_9

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_17
    return v1
.end method

.method private entrySet0()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_5

    return-object v0

    .line 875
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method private getForNullKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_5
    if-eqz v0, :cond_11

    .line 249
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v1, :cond_e

    .line 250
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0

    .line 248
    :cond_e
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method static hash(I)I
    .registers 3

    mul-int p0, p0, p0

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

.method private hashString(Ljava/lang/String;)I
    .registers 5

    const v0, -0x7ee3623b

    .line 86
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    mul-int v1, v1, v0

    const/4 v0, 0x0

    .line 87
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    const v2, 0x1000193

    mul-int v1, v1, v2

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1b
    shr-int/lit8 p1, v1, 0x1

    xor-int/2addr p1, v1

    const v0, -0x789a012d

    and-int/2addr p1, v0

    return p1
.end method

.method static indexFor(II)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private putAllForCreate(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 368
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 369
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_20
    return-void
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_1c

    .line 344
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 345
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1c

    .line 346
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 347
    :goto_1c
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v1

    .line 354
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v2, v2, v1

    :goto_27
    if-eqz v2, :cond_3f

    .line 356
    iget v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v3, v0, :cond_3c

    iget-object v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_39

    if-eqz p1, :cond_3c

    .line 357
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 358
    :cond_39
    iput-object p2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-void

    .line 354
    :cond_3c
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_27

    .line 363
    :cond_3f
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method private putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_5
    if-eqz v0, :cond_13

    .line 327
    iget-object v2, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v2, :cond_10

    .line 328
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 329
    iput-object p1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v1

    .line 326
    :cond_10
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_5

    .line 333
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, v1, v0, p1, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 946
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 949
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 950
    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 952
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 955
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_23

    .line 959
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 960
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 961
    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-lez v0, :cond_d

    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 919
    :goto_e
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 922
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 925
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    if-eqz v0, :cond_39

    .line 929
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 930
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 931
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 932
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_39
    return-void
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v0, p4

    .line 679
    new-instance v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    aput-object v2, v0, p4

    .line 680
    iget p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    iget p2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    if-lt p1, p2, :cond_1d

    .line 681
    iget-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->resize(I)V

    :cond_1d
    return-void
.end method

.method public clear()V
    .registers 5

    .line 552
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 553
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 554
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_13

    const/4 v3, 0x0

    .line 555
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 556
    :cond_13
    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 601
    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-object v1, v0

    .line 605
    :goto_9
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v2

    new-array v2, v2, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 606
    iput-object v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 607
    iput v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 608
    iput v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 609
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 610
    invoke-direct {v1, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putAllForCreate(Ljava/util/Map;)V

    return-object v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 265
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7

    if-nez p1, :cond_7

    .line 570
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->containsNullValue()Z

    move-result p1

    return p1

    .line 572
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 573
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_22

    .line 574
    aget-object v3, v0, v2

    :goto_10
    if-eqz v3, :cond_1f

    .line 575
    iget-object v4, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 p1, 0x1

    return p1

    .line 574
    :cond_1c
    iget-object v3, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_10

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_22
    return v1
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v0, p4

    .line 694
    new-instance v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    aput-object v2, v0, p4

    .line 695
    iget p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return-void
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

    .line 870
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 227
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getForNullKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 229
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 230
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1f

    .line 232
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 233
    :goto_1f
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_28
    if-eqz v1, :cond_3e

    .line 235
    iget v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v2, v0, :cond_3b

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_38

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 236
    :cond_38
    iget-object p1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 233
    :cond_3b
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_28

    :cond_3e
    const/4 p1, 0x0

    return-object p1
.end method

.method final getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_1c

    .line 273
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 274
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1c

    .line 275
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 276
    :goto_1c
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_25
    if-eqz v1, :cond_3b

    .line 278
    iget v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v2, v0, :cond_38

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_37

    if-eqz p1, :cond_38

    .line 279
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_37
    return-object v1

    .line 276
    :cond_38
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_25

    :cond_3b
    const/4 p1, 0x0

    return-object p1
.end method

.method init()V
    .registers 1

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 204
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_5

    return-object v0

    .line 795
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 774
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 766
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 770
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 301
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 303
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 304
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1f

    .line 306
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 307
    :goto_1f
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v2, v2, v1

    :goto_2a
    if-eqz v2, :cond_42

    .line 310
    iget v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v3, v0, :cond_3f

    iget-object v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_3a

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 311
    :cond_3a
    iget-object p1, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 312
    iput-object p2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 308
    :cond_3f
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_2a

    .line 317
    :cond_42
    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 318
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 434
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_49

    .line 447
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    if-le v0, v1, :cond_29

    int-to-float v0, v0

    .line 448
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_19

    const/high16 v0, 0x40000000    # 2.0f

    .line 451
    :cond_19
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    :goto_1c
    if-ge v1, v0, :cond_21

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 454
    :cond_21
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    if-le v1, v0, :cond_29

    .line 455
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->resize(I)V

    .line 459
    :cond_29
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 460
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 461
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_49
    :goto_49
    return-void
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

    .line 476
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 477
    :cond_8
    iget-object p1, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method final removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_1c

    .line 486
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 487
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_1c

    .line 488
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 489
    :goto_1c
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v1

    .line 490
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_28
    if-eqz v2, :cond_55

    .line 494
    iget-object v4, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 496
    iget v5, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v5, v0, :cond_52

    iget-object v5, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_3c

    if-eqz p1, :cond_52

    .line 497
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 498
    :cond_3c
    iget p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 499
    iget p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-ne v3, v2, :cond_4f

    .line 501
    iget-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v4, p1, v1

    return-object v2

    .line 503
    :cond_4f
    iput-object v4, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    return-object v2

    :cond_52
    move-object v3, v2

    move-object v2, v4

    goto :goto_28

    :cond_55
    return-object v2
.end method

.method final removeMapping(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 517
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 520
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 521
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_27

    .line 522
    :cond_10
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1f

    check-cast v0, Ljava/lang/String;

    .line 523
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_27

    .line 524
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 525
    :goto_27
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v1

    .line 526
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_33
    if-eqz v2, :cond_5a

    .line 530
    iget-object v4, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 531
    iget v5, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v5, v0, :cond_57

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 532
    iget p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 533
    iget p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-ne v3, v2, :cond_54

    .line 535
    iget-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v4, p1, v1

    return-object v2

    .line 537
    :cond_54
    iput-object v4, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    return-object v2

    :cond_57
    move-object v3, v2

    move-object v2, v4

    goto :goto_33

    :cond_5a
    return-object v2
.end method

.method resize(I)V
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 390
    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    const p1, 0x7fffffff

    .line 392
    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    return-void

    .line 396
    :cond_d
    new-array v0, p1, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 397
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->transfer([Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    .line 398
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    int-to-float p1, p1

    .line 399
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    return-void
.end method

.method public size()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method

.method transfer([Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V
    .registers 9

    .line 406
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 407
    array-length v1, p1

    const/4 v2, 0x0

    .line 408
    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_24

    .line 409
    aget-object v3, v0, v2

    if-eqz v3, :cond_21

    const/4 v4, 0x0

    .line 411
    aput-object v4, v0, v2

    .line 413
    :goto_e
    iget-object v4, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 414
    iget v5, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    invoke-static {v5, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v5

    .line 415
    aget-object v6, p1, v5

    iput-object v6, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 416
    aput-object v3, p1, v5

    if-nez v4, :cond_1f

    goto :goto_21

    :cond_1f
    move-object v3, v4

    goto :goto_e

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_24
    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_5

    return-object v0

    .line 834
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    return-object v0
.end method

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.AnonymousClass1 (com.alibaba.fastjson.util.AntiCollisionHashMap$1)
.class synthetic Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;
.super Ljava/lang/Object;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.Entry (com.alibaba.fastjson.util.AntiCollisionHashMap$Entry)
.class Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
.super Ljava/lang/Object;
.source "AntiCollisionHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
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

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
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
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput-object p3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 626
    iput-object p4, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 627
    iput-object p2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    .line 628
    iput p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 646
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 648
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 649
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 650
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_1c

    if-eqz v0, :cond_1b

    .line 651
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    .line 652
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 653
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_30

    if-eqz v0, :cond_2f

    .line 654
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    return v1

    :cond_30
    :goto_30
    const/4 p1, 0x1

    return p1
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .line 660
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    .line 661
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 641
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.EntryIterator (com.alibaba.fastjson.util.AntiCollisionHashMap$EntryIterator)
.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;
.super Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<",
        "TK;TV;>.HashIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .registers 2

    .line 758
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .registers 3

    .line 758
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 758
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

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

    .line 760
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;->nextEntry()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.EntrySet (com.alibaba.fastjson.util.AntiCollisionHashMap$EntrySet)
.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
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
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .registers 2

    .line 878
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .registers 3

    .line 878
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    .line 884
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 886
    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 887
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 888
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v1
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

    .line 880
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->newEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 892
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeMapping(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

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

    .line 896
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.HashIterator (com.alibaba.fastjson.util.AntiCollisionHashMap$HashIterator)
.class abstract Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;
.super Ljava/lang/Object;
.source "AntiCollisionHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .registers 4

    .line 704
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iget v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    .line 706
    iget v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-lez v0, :cond_1f

    .line 707
    iget-object p1, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 708
    :goto_f
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    array-length v1, p1

    if-ge v0, v1, :cond_1f

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v0, :cond_1f

    goto :goto_f

    :cond_1f
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .line 714
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method final nextEntry()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2f

    .line 720
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-eqz v0, :cond_29

    .line 724
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v1, :cond_26

    .line 725
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 726
    :goto_16
    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    array-length v3, v1

    if-ge v2, v3, :cond_26

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v2, :cond_26

    goto :goto_16

    .line 729
    :cond_26
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    return-object v0

    .line 722
    :cond_29
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 719
    :cond_2f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 734
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-eqz v0, :cond_25

    .line 736
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1f

    .line 738
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 739
    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 740
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 741
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    return-void

    .line 737
    :cond_1f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 735
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.KeyIterator (com.alibaba.fastjson.util.AntiCollisionHashMap$KeyIterator)
.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;
.super Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<",
        "TK;TV;>.HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .registers 2

    .line 752
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .registers 3

    .line 752
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

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

    .line 754
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;->nextEntry()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.KeySet (com.alibaba.fastjson.util.AntiCollisionHashMap$KeySet)
.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .registers 2

    .line 798
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .registers 3

    .line 798
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 816
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 808
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->containsKey(Ljava/lang/Object;)Z

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

    .line 800
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->newKeyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 812
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

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

    .line 804
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.ValueIterator (com.alibaba.fastjson.util.AntiCollisionHashMap$ValueIterator)
.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;
.super Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<",
        "TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .registers 3

    .line 746
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 748
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;->nextEntry()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

###### Class com.alibaba.fastjson.util.AntiCollisionHashMap.Values (com.alibaba.fastjson.util.AntiCollisionHashMap$Values)
.class final Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "AntiCollisionHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .registers 2

    .line 837
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V
    .registers 3

    .line 837
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 851
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->newValueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 843
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method
