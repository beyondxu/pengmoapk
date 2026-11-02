###### Class com.alibaba.fastjson.parser.JSONToken (com.alibaba.fastjson.parser.JSONToken)
.class public Lcom/alibaba/fastjson/parser/JSONToken;
.super Ljava/lang/Object;
.source "JSONToken.java"


# static fields
.field public static final COLON:I = 0x11

.field public static final COMMA:I = 0x10

.field public static final DOT:I = 0x19

.field public static final EOF:I = 0x14

.field public static final ERROR:I = 0x1

.field public static final FALSE:I = 0x7

.field public static final FIELD_NAME:I = 0x13

.field public static final HEX:I = 0x1a

.field public static final IDENTIFIER:I = 0x12

.field public static final LBRACE:I = 0xc

.field public static final LBRACKET:I = 0xe

.field public static final LITERAL_FLOAT:I = 0x3

.field public static final LITERAL_INT:I = 0x2

.field public static final LITERAL_ISO8601_DATE:I = 0x5

.field public static final LITERAL_STRING:I = 0x4

.field public static final LPAREN:I = 0xa

.field public static final NEW:I = 0x9

.field public static final NULL:I = 0x8

.field public static final RBRACE:I = 0xd

.field public static final RBRACKET:I = 0xf

.field public static final RPAREN:I = 0xb

.field public static final SEMI:I = 0x18

.field public static final SET:I = 0x15

.field public static final TREE_SET:I = 0x16

.field public static final TRUE:I = 0x6

.field public static final UNDEFINED:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_5a

    .line 128
    const-string p0, "Unknown"

    return-object p0

    .line 126
    :pswitch_6
    const-string p0, "hex"

    return-object p0

    .line 112
    :pswitch_9
    const-string p0, "."

    return-object p0

    .line 110
    :pswitch_c
    const-string p0, ";"

    return-object p0

    .line 124
    :pswitch_f
    const-string/jumbo p0, "undefined"

    return-object p0

    .line 122
    :pswitch_13
    const-string p0, "TreeSet"

    return-object p0

    .line 120
    :pswitch_16
    const-string p0, "Set"

    return-object p0

    .line 118
    :pswitch_19
    const-string p0, "EOF"

    return-object p0

    .line 116
    :pswitch_1c
    const-string p0, "fieldName"

    return-object p0

    .line 114
    :pswitch_1f
    const-string p0, "ident"

    return-object p0

    .line 108
    :pswitch_22
    const-string p0, ":"

    return-object p0

    .line 106
    :pswitch_25
    const-string p0, ","

    return-object p0

    .line 104
    :pswitch_28
    const-string p0, "]"

    return-object p0

    .line 102
    :pswitch_2b
    const-string p0, "["

    return-object p0

    .line 100
    :pswitch_2e
    const-string/jumbo p0, "}"

    return-object p0

    .line 98
    :pswitch_32
    const-string/jumbo p0, "{"

    return-object p0

    .line 96
    :pswitch_36
    const-string p0, ")"

    return-object p0

    .line 94
    :pswitch_39
    const-string p0, "("

    return-object p0

    .line 92
    :pswitch_3c
    const-string p0, "new"

    return-object p0

    .line 90
    :pswitch_3f
    const-string p0, "null"

    return-object p0

    .line 88
    :pswitch_42
    const-string p0, "false"

    return-object p0

    .line 86
    :pswitch_45
    const-string/jumbo p0, "true"

    return-object p0

    .line 84
    :pswitch_49
    const-string p0, "iso8601"

    return-object p0

    .line 82
    :pswitch_4c
    const-string/jumbo p0, "string"

    return-object p0

    .line 80
    :pswitch_50
    const-string p0, "float"

    return-object p0

    .line 78
    :pswitch_53
    const-string p0, "int"

    return-object p0

    .line 76
    :pswitch_56
    const-string p0, "error"

    return-object p0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
