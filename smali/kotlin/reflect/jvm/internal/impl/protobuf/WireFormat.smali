###### Class kotlin.reflect.jvm.internal.impl.protobuf.WireFormat (kotlin.reflect.jvm.internal.impl.protobuf.WireFormat)
.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
    }
.end annotation


# static fields
.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID_TAG:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 155
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x4

    .line 157
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 159
    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 161
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static getTagWireType(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static makeTag(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$1)
.class synthetic Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$1;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType (kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType)
.class public enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum BYTES:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .registers 38

    .line 108
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 109
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 110
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->INT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 111
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->UINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 112
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 113
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const-string v11, "FIXED64"

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-direct {v9, v11, v6, v13, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->FIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 114
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->FIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 115
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v16, 0x4

    const-string v12, "BOOL"

    const/16 v17, 0x6

    const/4 v15, 0x7

    invoke-direct {v13, v12, v15, v14, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 116
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$1;

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v18, 0x7

    const-string v15, "STRING"

    const/16 v4, 0x8

    invoke-direct {v12, v15, v4, v14, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v12, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 119
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v20, 0x8

    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v14, v4, v6, v15, v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 122
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$3;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v22, 0x9

    const-string v6, "MESSAGE"

    const/16 v23, 0x3

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 125
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$4;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BYTE_STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v24, 0xa

    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->BYTES:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 128
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v26, 0xb

    const-string v3, "UINT32"

    const/16 v27, 0x2

    const/16 v8, 0xc

    move-object/from16 v28, v0

    const/4 v0, 0x0

    invoke-direct {v10, v3, v8, v15, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->UINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 129
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v29, 0xc

    const-string v8, "ENUM"

    move-object/from16 v30, v1

    const/16 v1, 0xd

    invoke-direct {v3, v8, v1, v15, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 130
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v15, "SFIXED32"

    const/16 v31, 0xd

    const/16 v1, 0xe

    move-object/from16 v32, v2

    const/4 v2, 0x5

    invoke-direct {v0, v15, v1, v8, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->SFIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 131
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v15, "SFIXED64"

    const/16 v33, 0xe

    const/16 v1, 0xf

    move-object/from16 v34, v0

    const/4 v0, 0x1

    invoke-direct {v2, v15, v1, v8, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->SFIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 132
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v15, "SINT32"

    const/16 v35, 0xf

    const/16 v1, 0x10

    move-object/from16 v36, v2

    const/4 v2, 0x0

    invoke-direct {v0, v15, v1, v8, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->SINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 133
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v25, 0x10

    const-string v1, "SINT64"

    move-object/from16 v37, v0

    const/16 v0, 0x11

    invoke-direct {v8, v1, v0, v15, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->SINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    const/16 v1, 0x12

    .line 107
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    aput-object v28, v1, v2

    const/16 v19, 0x1

    aput-object v30, v1, v19

    aput-object v32, v1, v27

    aput-object v5, v1, v23

    aput-object v7, v1, v16

    const/16 v21, 0x5

    aput-object v9, v1, v21

    aput-object v11, v1, v17

    aput-object v13, v1, v18

    aput-object v12, v1, v20

    aput-object v14, v1, v22

    aput-object v4, v1, v24

    aput-object v6, v1, v26

    aput-object v10, v1, v29

    aput-object v3, v1, v31

    aput-object v34, v1, v33

    aput-object v36, v1, v35

    aput-object v37, v1, v25

    aput-object v8, v1, v0

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 137
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$1;)V
    .registers 6

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
    .registers 2

    .line 107
    const-class v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
    .registers 1

    .line 107
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
    .registers 2

    .line 143
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->javaType:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public getWireType()I
    .registers 2

    .line 144
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->wireType:I

    return v0
.end method

.method public isPackable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType$1)
.class final enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$1;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 116
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method public isPackable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType.AnonymousClass2 (kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType$2)
.class final enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$2;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 119
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method public isPackable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType.AnonymousClass3 (kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType$3)
.class final enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$3;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 122
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method public isPackable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType.AnonymousClass4 (kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType$4)
.class final enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType$4;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 125
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method public isPackable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.JavaType (kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$JavaType)
.class public final enum Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum BOOLEAN:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum BYTE_STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

.field public static final enum STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 78
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 79
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 80
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v6, "FLOAT"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 81
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 82
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v10, "BOOLEAN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 83
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v10, ""

    const-string v12, "STRING"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 84
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const-string v14, "BYTE_STRING"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BYTE_STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 85
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const-string v14, "ENUM"

    const/16 v16, 0x0

    const/4 v1, 0x7

    const/16 v17, 0x1

    const/4 v5, 0x0

    invoke-direct {v12, v14, v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v12, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    .line 86
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v18, 0x7

    const-string v1, "MESSAGE"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v14, v1, v7, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v14, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/16 v1, 0x9

    .line 77
    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    aput-object v0, v1, v16

    aput-object v2, v1, v17

    aput-object v3, v1, v19

    aput-object v4, v1, v9

    aput-object v6, v1, v11

    aput-object v8, v1, v13

    aput-object v10, v1, v15

    aput-object v12, v1, v18

    aput-object v14, v1, v7

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
    .registers 2

    .line 77
    const-class v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
    .registers 1

    .line 77
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    return-object v0
.end method
