###### Class kotlin.reflect.jvm.internal.impl.utils.SmartList (kotlin.reflect.jvm.internal.impl.utils.SmartList)
.class public Lkotlin/reflect/jvm/internal/impl/utils/SmartList;
.super Ljava/util/AbstractList;
.source "SmartList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;,
        Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;,
        Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private myElem:Ljava/lang/Object;

.field private mySize:I


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 11

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v4, :cond_12

    if-eq p0, v3, :cond_12

    if-eq p0, v2, :cond_12

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_14

    :cond_12
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_14
    if-eq p0, v4, :cond_20

    if-eq p0, v3, :cond_20

    if-eq p0, v2, :cond_20

    if-eq p0, v1, :cond_20

    if-eq p0, v0, :cond_20

    const/4 v6, 0x3

    goto :goto_21

    :cond_20
    const/4 v6, 0x2

    :goto_21
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/utils/SmartList"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_70

    const-string v9, "elements"

    aput-object v9, v6, v8

    goto :goto_35

    :pswitch_2e
    const-string v9, "a"

    aput-object v9, v6, v8

    goto :goto_35

    :pswitch_33
    aput-object v7, v6, v8

    :goto_35
    const-string v8, "toArray"

    const/4 v9, 0x1

    if-eq p0, v4, :cond_48

    if-eq p0, v3, :cond_48

    if-eq p0, v2, :cond_45

    if-eq p0, v1, :cond_45

    if-eq p0, v0, :cond_45

    aput-object v7, v6, v9

    goto :goto_4c

    :cond_45
    aput-object v8, v6, v9

    goto :goto_4c

    :cond_48
    const-string v7, "iterator"

    aput-object v7, v6, v9

    :goto_4c
    packed-switch p0, :pswitch_data_80

    const-string v7, "<init>"

    aput-object v7, v6, v4

    goto :goto_56

    :pswitch_54
    aput-object v8, v6, v4

    :goto_56
    :pswitch_56
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_6a

    if-eq p0, v3, :cond_6a

    if-eq p0, v2, :cond_6a

    if-eq p0, v1, :cond_6a

    if-eq p0, v0, :cond_6a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :cond_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_6f
    throw p0

    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_33
        :pswitch_33
        :pswitch_2e
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_56
        :pswitch_56
        :pswitch_54
        :pswitch_56
        :pswitch_56
        :pswitch_56
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I
    .registers 1

    .line 31
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    return p0
.end method

.method static synthetic access$200(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)Ljava/lang/Object;
    .registers 1

    .line 31
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I
    .registers 1

    .line 31
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    return p0
.end method

.method static synthetic access$400(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I
    .registers 1

    .line 31
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    return p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    if-ltz p1, :cond_48

    .line 109
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-gt p1, v0, :cond_48

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 114
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    goto :goto_3d

    :cond_c
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1d

    if-nez p1, :cond_1d

    .line 119
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    .line 120
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    goto :goto_3d

    :cond_1d
    add-int/lit8 v3, v0, 0x1

    .line 123
    new-array v3, v3, [Ljava/lang/Object;

    if-ne v0, v1, :cond_28

    .line 125
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    aput-object v0, v3, v2

    goto :goto_39

    .line 128
    :cond_28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 129
    invoke-static {v0, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p1, 0x1

    .line 130
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :goto_39
    aput-object p2, v3, p1

    .line 133
    iput-object v3, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    .line 136
    :goto_3d
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    .line 137
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    return-void

    .line 110
    :cond_48
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 76
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 77
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    goto :goto_34

    :cond_8
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_17

    .line 81
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object p1, v2, v1

    .line 83
    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    goto :goto_34

    .line 86
    :cond_17
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 87
    array-length v5, v4

    if-lt v0, v5, :cond_30

    mul-int/lit8 v6, v5, 0x3

    .line 90
    div-int/2addr v6, v2

    add-int/2addr v6, v1

    add-int/2addr v0, v1

    if-ge v6, v0, :cond_28

    move v6, v0

    .line 96
    :cond_28
    new-array v0, v6, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    .line 97
    invoke-static {v4, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    .line 99
    :cond_30
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    aput-object p1, v4, v0

    .line 102
    :goto_34
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    .line 103
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    return v1
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    .line 149
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_15

    .line 65
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-ge p1, v0, :cond_15

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 69
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    return-object p1

    .line 71
    :cond_c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 66
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 228
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-nez v0, :cond_f

    .line 229
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;->getInstance()Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->$$$reportNull$$$0(I)V

    :cond_e
    return-object v0

    :cond_f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 232
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)V

    return-object v0

    .line 234
    :cond_18
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_22

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->$$$reportNull$$$0(I)V

    :cond_22
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_3b

    .line 173
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-ge p1, v0, :cond_3b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 179
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    .line 180
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    goto :goto_30

    .line 183
    :cond_f
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 184
    aget-object v4, v3, p1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_21

    rsub-int/lit8 p1, p1, 0x1

    .line 187
    aget-object p1, v3, p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    goto :goto_2f

    :cond_21
    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    if-lez v0, :cond_2a

    add-int/lit8 v5, p1, 0x1

    .line 192
    invoke-static {v3, v5, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_2a
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    sub-int/2addr p1, v2

    aput-object v1, v3, p1

    :goto_2f
    move-object p1, v4

    .line 197
    :goto_30
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    sub-int/2addr v0, v2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    .line 198
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->modCount:I

    return-object p1

    .line 174
    :cond_3b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    if-ltz p1, :cond_19

    .line 154
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-ge p1, v0, :cond_19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 160
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    .line 161
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    return-object p1

    .line 164
    :cond_e
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 165
    aget-object v1, v0, p1

    .line 166
    aput-object p2, v0, p1

    return-object v1

    .line 155
    :cond_19
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public size()I
    .registers 2

    .line 142
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 288
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    .line 289
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_f
    return-void
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->$$$reportNull$$$0(I)V

    .line 300
    :cond_6
    array-length v0, p1

    .line 301
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2f

    if-eqz v0, :cond_14

    .line 303
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    aput-object v1, p1, v3

    goto :goto_4f

    .line 306
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    aput-object v0, p1, v3

    if-nez p1, :cond_2e

    const/4 v0, 0x5

    .line 308
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->$$$reportNull$$$0(I)V

    :cond_2e
    return-object p1

    :cond_2f
    if-ge v0, v1, :cond_48

    .line 312
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-nez p1, :cond_47

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->$$$reportNull$$$0(I)V

    :cond_47
    return-object p1

    :cond_48
    if-eqz v1, :cond_4f

    .line 316
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->myElem:Ljava/lang/Object;

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :cond_4f
    :goto_4f
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-le v0, v1, :cond_56

    const/4 v0, 0x0

    .line 320
    aput-object v0, p1, v1

    :cond_56
    if-nez p1, :cond_5c

    const/4 v0, 0x7

    .line 322
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->$$$reportNull$$$0(I)V

    :cond_5c
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.utils.SmartList.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.utils.SmartList$1)
.class synthetic Lkotlin/reflect/jvm/internal/impl/utils/SmartList$1;
.super Ljava/lang/Object;
.source "SmartList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/utils/SmartList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class kotlin.reflect.jvm.internal.impl.utils.SmartList.EmptyIterator (kotlin.reflect.jvm.internal.impl.utils.SmartList$EmptyIterator)
.class Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;
.super Ljava/lang/Object;
.source "SmartList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/utils/SmartList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyIterator"
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


# static fields
.field private static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator<",
            "TT;>;"
        }
    .end annotation

    .line 206
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/utils/SmartList$EmptyIterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.utils.SmartList.SingletonIterator (kotlin.reflect.jvm.internal.impl.utils.SmartList$SingletonIterator)
.class Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;
.super Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;
.source "SmartList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/utils/SmartList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingletonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final myInitialModCount:I

.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)V
    .registers 3

    .line 264
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/SmartList$1;)V

    .line 265
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$100(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myInitialModCount:I

    return-void
.end method


# virtual methods
.method protected checkCoModification()V
    .registers 4

    .line 275
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$300(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myInitialModCount:I

    if-ne v0, v1, :cond_b

    return-void

    .line 276
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ModCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$400(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->myInitialModCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->access$200(Lkotlin/reflect/jvm/internal/impl/utils/SmartList;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 282
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->checkCoModification()V

    .line 283
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIterator;->this$0:Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->clear()V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.utils.SmartList.SingletonIteratorBase (kotlin.reflect.jvm.internal.impl.utils.SmartList$SingletonIteratorBase)
.class abstract Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;
.super Ljava/lang/Object;
.source "SmartList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/utils/SmartList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SingletonIteratorBase"
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
.field private myVisited:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/utils/SmartList$1;)V
    .registers 2

    .line 238
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkCoModification()V
.end method

.method protected abstract getElement()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;->myVisited:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 248
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;->myVisited:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;->myVisited:Z

    .line 252
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;->checkCoModification()V

    .line 253
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList$SingletonIteratorBase;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 249
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
