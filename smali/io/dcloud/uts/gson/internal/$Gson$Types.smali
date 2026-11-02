###### Class io.dcloud.uts.gson.internal.C$Gson$Types (io.dcloud.uts.gson.internal.$Gson$Types)
.class public final Lio/dcloud/uts/gson/internal/$Gson$Types;
.super Ljava/lang/Object;
.source "$Gson$Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;,
        Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;,
        Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lio/dcloud/uts/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .registers 2

    .line 69
    new-instance v0, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    .line 109
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1b

    .line 110
    check-cast p0, Ljava/lang/Class;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_1a
    return-object p0

    .line 113
    :cond_1b
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_33

    .line 114
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 115
    new-instance v0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 116
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0

    .line 118
    :cond_33
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_43

    .line 119
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 120
    new-instance v0, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 122
    :cond_43
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_57

    .line 123
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 124
    new-instance v0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_57
    return-object p0
.end method

.method static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 481
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    invoke-static {p0}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 474
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p0

    .line 475
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 476
    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 167
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 178
    :cond_4
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_d

    .line 180
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 182
    :cond_d
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 183
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_17

    return v2

    .line 188
    :cond_17
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 189
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 190
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 191
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 192
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    return v0

    :cond_46
    return v2

    .line 194
    :cond_47
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_61

    .line 195
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_50

    return v2

    .line 199
    :cond_50
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 200
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 201
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0

    .line 203
    :cond_61
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_8c

    .line 204
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_6a

    return v2

    .line 208
    :cond_6a
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 209
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 210
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 211
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    return v0

    :cond_8b
    return v2

    .line 213
    :cond_8c
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_b2

    .line 214
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_95

    return v2

    .line 217
    :cond_95
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 218
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 219
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    if-ne v1, v3, :cond_b2

    .line 220
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b2

    return v0

    :cond_b2
    return v2
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    .line 297
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_b

    .line 298
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 299
    :cond_b
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 307
    const-class v0, Ljava/util/Collection;

    invoke-static {p0, p1, v0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 309
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 310
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v0

    .line 312
    :cond_13
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_20

    .line 313
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 315
    :cond_20
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-ne p2, p1, :cond_3

    return-object p0

    .line 247
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_32

    .line 248
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    .line 249
    array-length v0, p0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 250
    aget-object v2, p0, v1

    if-ne v2, p2, :cond_1c

    .line 251
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    .line 252
    :cond_1c
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v1

    aget-object p0, p0, v1

    invoke-static {p1, p0, p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 259
    :cond_32
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-nez p0, :cond_58

    .line 260
    :goto_38
    const-class p0, Ljava/lang/Object;

    if-eq p1, p0, :cond_58

    .line 261
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, p2, :cond_47

    .line 263
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 264
    :cond_47
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 265
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_56
    move-object p1, p0

    goto :goto_38

    :cond_58
    return-object p2
.end method

.method public static getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 328
    const-class v0, Ljava/util/Properties;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v0, :cond_12

    .line 329
    new-array p0, v3, [Ljava/lang/reflect/Type;

    const-class p1, Ljava/lang/String;

    aput-object p1, p0, v2

    const-class p1, Ljava/lang/String;

    aput-object p1, p0, v1

    return-object p0

    .line 332
    :cond_12
    const-class v0, Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 334
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_23

    .line 335
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 336
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 338
    :cond_23
    new-array p0, v3, [Ljava/lang/reflect/Type;

    const-class p1, Ljava/lang/Object;

    aput-object p1, p0, v2

    const-class p1, Ljava/lang/Object;

    aput-object p1, p0, v1

    return-object p0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 133
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 135
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 137
    :cond_7
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_19

    .line 138
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 143
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 144
    instance-of v0, p0, Ljava/lang/Class;

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 145
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 147
    :cond_19
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 148
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 149
    invoke-static {p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 151
    :cond_31
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_38

    .line 154
    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 156
    :cond_38
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_49

    .line 157
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_49
    if-nez p0, :cond_4e

    .line 160
    const-string v0, "null"

    goto :goto_56

    :cond_4e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "> is of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 283
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_d

    .line 285
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 287
    :cond_d
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 289
    invoke-static {p0, p1, p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 288
    invoke-static {p0, p1, p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static hashCodeOrZero(Ljava/lang/Object;)I
    .registers 1

    if-eqz p0, :cond_7

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 461
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    .line 462
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 466
    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 4

    .line 59
    new-instance v0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    :cond_1
    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_26

    .line 352
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 353
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    if-eqz v2, :cond_16

    .line 356
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, p0, :cond_15

    return-object p2

    :cond_15
    return-object v2

    .line 360
    :cond_16
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1e

    move-object v0, v1

    .line 365
    :cond_1e
    invoke-static {p0, p1, v1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-ne p2, v1, :cond_1

    goto/16 :goto_dd

    .line 370
    :cond_26
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_4b

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 372
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 373
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 374
    invoke-static {p2, p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    move-object p2, v1

    goto/16 :goto_dd

    .line 376
    :cond_44
    invoke-static {p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    :goto_48
    move-object p2, p0

    goto/16 :goto_dd

    .line 379
    :cond_4b
    instance-of v1, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_66

    .line 380
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 381
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 382
    invoke-static {p0, p1, v1, p3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 383
    invoke-static {v1, p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    goto/16 :goto_dd

    .line 385
    :cond_61
    invoke-static {p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    goto :goto_48

    .line 388
    :cond_66
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_ac

    .line 389
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 390
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 391
    invoke-static {p0, p1, v1, p3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 392
    invoke-static {v4, v1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 394
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 395
    array-length v6, v5

    :goto_80
    if-ge v2, v6, :cond_a1

    .line 396
    aget-object v7, v5, v2

    :try_start_84
    invoke-static {p0, p1, v7, p3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v7
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_9f

    .line 397
    aget-object v8, v5, v2

    invoke-static {v7, v8}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9c

    if-nez v1, :cond_9a

    .line 399
    invoke-virtual {v5}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    .line 402
    :cond_9a
    aput-object v7, v5, v2

    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    :catchall_9f
    move-exception p0

    .line 396
    throw p0

    :cond_a1
    if-eqz v1, :cond_dd

    .line 407
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v4, p0, v5}, Lio/dcloud/uts/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    goto :goto_48

    .line 411
    :cond_ac
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_dd

    .line 412
    check-cast p2, Ljava/lang/reflect/WildcardType;

    .line 413
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 414
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 416
    array-length v5, v1

    if-ne v5, v3, :cond_cc

    .line 417
    aget-object v3, v1, v2

    invoke-static {p0, p1, v3, p3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 418
    aget-object p1, v1, v2

    if-eq p0, p1, :cond_dd

    .line 419
    invoke-static {p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p2

    goto :goto_dd

    .line 422
    :cond_cc
    array-length v1, v4

    if-ne v1, v3, :cond_dd

    .line 423
    aget-object v1, v4, v2

    invoke-static {p0, p1, v1, p3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 424
    aget-object p1, v4, v2

    if-eq p0, p1, :cond_dd

    .line 425
    invoke-static {p0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p2

    :cond_dd
    :goto_dd
    if-eqz v0, :cond_e2

    .line 438
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e2
    return-object p2
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 444
    invoke-static {p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_20

    .line 451
    :cond_7
    invoke-static {p0, p1, v0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 452
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_20

    .line 453
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    invoke-static {p1, p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 454
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_20
    :goto_20
    return-object p2
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 3

    .line 80
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_b

    .line 81
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_12

    :cond_b
    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    move-object p0, v0

    .line 85
    :goto_12
    new-instance v0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;

    sget-object v1, Lio/dcloud/uts/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v0, p0, v1}, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 5

    .line 95
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 96
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_12

    .line 98
    :cond_d
    new-array v0, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v0, v1

    move-object p0, v0

    .line 100
    :goto_12
    new-instance v0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-direct {v0, v2, p0}, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2

    .line 233
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.dcloud.uts.gson.internal.C$Gson$Types.GenericArrayTypeImpl (io.dcloud.uts.gson.internal.$Gson$Types$GenericArrayTypeImpl)
.class final Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenericArrayTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 560
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 561
    invoke-static {p0, p1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 2

    .line 556
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 565
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.C$Gson$Types.ParameterizedTypeImpl (io.dcloud.uts.gson.internal.$Gson$Types$ParameterizedTypeImpl)
.class final Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 8

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 492
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 493
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1f

    .line 494
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    if-nez p1, :cond_26

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 495
    :cond_26
    :goto_26
    invoke-static {v3}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    :cond_29
    if-nez p1, :cond_2d

    const/4 p1, 0x0

    goto :goto_31

    .line 498
    :cond_2d
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    :goto_31
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 499
    invoke-static {p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 500
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 501
    array-length p1, p1

    :goto_42
    if-ge v1, p1, :cond_5f

    .line 502
    iget-object p2, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object p2, p2, v1

    invoke-static {p2}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object p2, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object p2, p2, v1

    invoke-static {p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 504
    iget-object p2, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object p3, p2, v1

    invoke-static {p3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p3

    aput-object p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_5f
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 521
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 522
    invoke-static {p0, p1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .line 509
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .line 517
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .line 513
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 526
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 527
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 528
    invoke-static {v1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 532
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-nez v0, :cond_c

    .line 534
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 537
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 538
    iget-object v2, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_30
    if-ge v2, v0, :cond_45

    .line 540
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v2

    invoke-static {v3}, Lio/dcloud/uts/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 542
    :cond_45
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.C$Gson$Types.WildcardTypeImpl (io.dcloud.uts.gson.internal.$Gson$Types$WildcardTypeImpl)
.class final Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 6

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 586
    array-length v0, p1

    if-ne v0, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 588
    array-length v0, p2

    if-ne v0, v2, :cond_3c

    .line 589
    aget-object v0, p2, v1

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    aget-object v0, p2, v1

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 591
    aget-object p1, p1, v1

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-static {v2}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 592
    aget-object p1, p2, v1

    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 593
    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    return-void

    .line 596
    :cond_3c
    aget-object p2, p1, v1

    invoke-static {p2}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    aget-object p2, p1, v1

    invoke-static {p2}, Lio/dcloud/uts/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    const/4 p2, 0x0

    .line 598
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 599
    aget-object p1, p1, v1

    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 612
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 613
    invoke-static {p0, p1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 4

    .line 608
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    :cond_b
    sget-object v0, Lio/dcloud/uts/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 4

    .line 604
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    .line 618
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    .line 619
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 623
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_19

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "? super "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 625
    :cond_19
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_22

    .line 626
    const-string v0, "?"

    return-object v0

    .line 628
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "? extends "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lio/dcloud/uts/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
