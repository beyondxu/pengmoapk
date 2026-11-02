###### Class kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType (kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType)
.class public final enum Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
.super Ljava/lang/Enum;
.source "JvmPrimitiveType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field public static final enum BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field public static final enum BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field public static final enum CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field public static final enum DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field public static final enum FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field public static final enum INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field public static final enum LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field private static final OWNER_TO_BOXING_METHOD_DESCRIPTOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

.field private static final TYPE_BY_DESC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BY_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BY_PRIMITIVE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;",
            ">;"
        }
    .end annotation
.end field

.field private static final WRAPPER_CLASS_INTERNAL_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final desc:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final primitiveType:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

.field private final wrapperFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 9

    const/4 v0, 0x6

    const/4 v1, 0x4

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_c

    packed-switch p0, :pswitch_data_9e

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_e

    :cond_c
    :pswitch_c
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_e
    const/4 v3, 0x2

    if-eq p0, v1, :cond_18

    if-eq p0, v0, :cond_18

    packed-switch p0, :pswitch_data_aa

    const/4 v4, 0x3

    goto :goto_19

    :cond_18
    :pswitch_18
    const/4 v4, 0x2

    :goto_19
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_b6

    const-string v7, "internalName"

    aput-object v7, v4, v6

    goto :goto_4b

    :pswitch_26
    const-string v7, "wrapperClassName"

    aput-object v7, v4, v6

    goto :goto_4b

    :pswitch_2b
    const-string v7, "primitiveType"

    aput-object v7, v4, v6

    goto :goto_4b

    :pswitch_30
    const-string v7, "desc"

    aput-object v7, v4, v6

    goto :goto_4b

    :pswitch_35
    const-string v7, "type"

    aput-object v7, v4, v6

    goto :goto_4b

    :pswitch_3a
    aput-object v5, v4, v6

    goto :goto_4b

    :pswitch_3d
    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_4b

    :pswitch_42
    const-string v7, "methodDescriptor"

    aput-object v7, v4, v6

    goto :goto_4b

    :pswitch_47
    const-string v7, "owner"

    aput-object v7, v4, v6

    :goto_4b
    const-string v6, "get"

    const/4 v7, 0x1

    if-eq p0, v1, :cond_6c

    if-eq p0, v0, :cond_6c

    packed-switch p0, :pswitch_data_d8

    aput-object v5, v4, v7

    goto :goto_6e

    :pswitch_58
    const-string v5, "getWrapperFqName"

    aput-object v5, v4, v7

    goto :goto_6e

    :pswitch_5d
    const-string v5, "getDesc"

    aput-object v5, v4, v7

    goto :goto_6e

    :pswitch_62
    const-string v5, "getJavaKeywordName"

    aput-object v5, v4, v7

    goto :goto_6e

    :pswitch_67
    const-string v5, "getPrimitiveType"

    aput-object v5, v4, v7

    goto :goto_6e

    :cond_6c
    aput-object v6, v4, v7

    :goto_6e
    packed-switch p0, :pswitch_data_e4

    const-string v5, "isWrapperClassInternalName"

    aput-object v5, v4, v3

    goto :goto_87

    :pswitch_76
    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_87

    :pswitch_7b
    const-string v5, "getByDesc"

    aput-object v5, v4, v3

    goto :goto_87

    :pswitch_80
    aput-object v6, v4, v3

    goto :goto_87

    :pswitch_83
    const-string v5, "isBoxingMethodDescriptor"

    aput-object v5, v4, v3

    :goto_87
    :pswitch_87
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_98

    if-eq p0, v0, :cond_98

    packed-switch p0, :pswitch_data_106

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9d

    :cond_98
    :pswitch_98
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_9d
    throw p0

    :pswitch_data_9e
    .packed-switch 0xc
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0xc
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_3a
        :pswitch_35
        :pswitch_3a
        :pswitch_30
        :pswitch_2b
        :pswitch_3d
        :pswitch_30
        :pswitch_26
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0xc
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_58
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_83
        :pswitch_83
        :pswitch_80
        :pswitch_87
        :pswitch_80
        :pswitch_87
        :pswitch_7b
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0xc
        :pswitch_98
        :pswitch_98
        :pswitch_98
        :pswitch_98
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .registers 14

    .line 27
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    const-string v5, "Z"

    const-string v6, "java.lang.Boolean"

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const-string v4, "boolean"

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 28
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    const-string v6, "C"

    const-string v7, "java.lang.Character"

    const-string v2, "CHAR"

    const/4 v3, 0x1

    const-string v5, "char"

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 29
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    const-string v7, "B"

    const-string v8, "java.lang.Byte"

    const-string v3, "BYTE"

    const/4 v4, 0x2

    const-string v6, "byte"

    invoke-direct/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 30
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    const-string v8, "S"

    const-string v9, "java.lang.Short"

    const-string v4, "SHORT"

    const/4 v5, 0x3

    const-string v7, "short"

    invoke-direct/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 31
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    const-string v9, "I"

    const-string v10, "java.lang.Integer"

    const-string v5, "INT"

    const/4 v6, 0x4

    const-string v8, "int"

    invoke-direct/range {v4 .. v10}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 32
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    const-string v10, "F"

    const-string v11, "java.lang.Float"

    const-string v6, "FLOAT"

    const/4 v7, 0x5

    const-string v9, "float"

    invoke-direct/range {v5 .. v11}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 33
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    const-string v11, "J"

    const-string v12, "java.lang.Long"

    const-string v7, "LONG"

    const/4 v8, 0x6

    const-string v10, "long"

    invoke-direct/range {v6 .. v12}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 34
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    const-string v12, "D"

    const-string v13, "java.lang.Double"

    const-string v8, "DOUBLE"

    const/4 v9, 0x7

    const-string v11, "double"

    invoke-direct/range {v7 .. v13}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/16 v8, 0x8

    .line 26
    new-array v8, v8, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_NAME:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_PRIMITIVE_TYPE:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_DESC:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->WRAPPER_CLASS_INTERNAL_NAMES:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->OWNER_TO_BOXING_METHOD_DESCRIPTOR:Ljava/util/Map;

    .line 50
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->values()[Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v0

    array-length v1, v0

    :goto_d8
    if-ge v9, v1, :cond_12f

    aget-object v2, v0, v9

    .line 51
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_NAME:Ljava/util/Map;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getJavaKeywordName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_PRIMITIVE_TYPE:Ljava/util/Map;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_DESC:Ljava/util/Map;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->wrapperFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 55
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->WRAPPER_CLASS_INTERNAL_NAMES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->OWNER_TO_BOXING_METHOD_DESCRIPTOR:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->desc:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")L"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_d8

    :cond_12f
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_7
    if-nez p4, :cond_e

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_e
    if-nez p5, :cond_15

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_15
    if-nez p6, :cond_1c

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    .line 92
    :cond_1c
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->primitiveType:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    .line 94
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->name:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->desc:Ljava/lang/String;

    .line 96
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-direct {p1, p6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->wrapperFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    .line 70
    :cond_6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_NAME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    if-eqz v0, :cond_17

    if-nez v0, :cond_16

    const/4 p0, 0x4

    .line 74
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_16
    return-object v0

    .line 72
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-primitive type name passed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static get(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    .line 79
    :cond_6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_PRIMITIVE_TYPE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    if-nez p0, :cond_14

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_14
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .registers 2

    .line 26
    const-class v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .registers 1

    .line 26
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .registers 3

    .line 111
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->desc:Ljava/lang/String;

    if-nez v0, :cond_9

    const/16 v1, 0xe

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getJavaKeywordName()Ljava/lang/String;
    .registers 3

    .line 106
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->name:Ljava/lang/String;

    if-nez v0, :cond_9

    const/16 v1, 0xd

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;
    .registers 3

    .line 101
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->primitiveType:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    if-nez v0, :cond_9

    const/16 v1, 0xc

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method

.method public getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 3

    .line 116
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->wrapperFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-nez v0, :cond_9

    const/16 v1, 0xf

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    :cond_9
    return-object v0
.end method
