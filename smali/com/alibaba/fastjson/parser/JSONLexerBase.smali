###### Class com.alibaba.fastjson.parser.JSONLexerBase (com.alibaba.fastjson.parser.JSONLexerBase)
.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected nanos:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    const/16 v0, 0x67

    .line 5316
    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    const/16 v0, 0x30

    :goto_2a
    const/16 v1, 0x39

    if-gt v0, v1, :cond_37

    .line 5320
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_37
    const/16 v0, 0x61

    :goto_39
    const/16 v1, 0x66

    if-gt v0, v1, :cond_46

    .line 5324
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x57

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_46
    const/16 v0, 0x41

    :goto_48
    const/16 v1, 0x46

    if-gt v0, v1, :cond_55

    .line 5327
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x37

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_55
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 64
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 65
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 71
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nanos:I

    .line 75
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_22

    .line 78
    const-string p1, ""

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 81
    :cond_22
    sget-object p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    if-nez p1, :cond_34

    const/16 p1, 0x200

    .line 84
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    :cond_34
    return-void
.end method

.method public static isWhitespace(C)Z
    .registers 2

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1c

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1a

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static readString([CI)Ljava/lang/String;
    .registers 18

    move/from16 v0, p1

    .line 4828
    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v3, v0, :cond_106

    .line 4831
    aget-char v5, p0, v3

    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-eq v5, v6, :cond_17

    add-int/lit8 v6, v4, 0x1

    .line 4834
    aput-char v5, v1, v4

    move v4, v6

    goto/16 :goto_103

    :cond_17
    add-int/lit8 v5, v3, 0x1

    .line 4837
    aget-char v8, p0, v5

    const/16 v9, 0x22

    if-eq v8, v9, :cond_fd

    const/16 v9, 0x27

    if-eq v8, v9, :cond_f8

    const/16 v9, 0x46

    if-eq v8, v9, :cond_f1

    if-eq v8, v6, :cond_ec

    const/16 v6, 0x62

    if-eq v8, v6, :cond_e5

    const/16 v6, 0x66

    if-eq v8, v6, :cond_f1

    const/16 v6, 0x6e

    if-eq v8, v6, :cond_de

    const/16 v6, 0x72

    if-eq v8, v6, :cond_d7

    const/16 v6, 0x78

    const/16 v9, 0x10

    if-eq v8, v6, :cond_c0

    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    packed-switch v8, :pswitch_data_10c

    packed-switch v8, :pswitch_data_122

    .line 4906
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_51
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xb

    .line 4874
    aput-char v6, v1, v4

    goto/16 :goto_101

    :pswitch_59
    add-int/lit8 v5, v4, 0x1

    .line 4899
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v12, v3, 0x2

    aget-char v12, p0, v12

    add-int/lit8 v13, v3, 0x3

    aget-char v13, p0, v13

    add-int/lit8 v14, v3, 0x4

    aget-char v14, p0, v14

    add-int/lit8 v3, v3, 0x5

    aget-char v15, p0, v3

    new-array v6, v6, [C

    aput-char v12, v6, v2

    aput-char v13, v6, v7

    aput-char v14, v6, v11

    aput-char v15, v6, v10

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    aput-char v6, v1, v4

    :goto_81
    move v4, v5

    goto/16 :goto_103

    :pswitch_84
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0x9

    .line 4868
    aput-char v6, v1, v4

    goto/16 :goto_101

    :pswitch_8c
    add-int/lit8 v3, v4, 0x1

    const/4 v6, 0x7

    .line 4862
    aput-char v6, v1, v4

    goto/16 :goto_101

    :pswitch_93
    add-int/lit8 v3, v4, 0x1

    const/4 v6, 0x6

    .line 4859
    aput-char v6, v1, v4

    goto/16 :goto_101

    :pswitch_9a
    add-int/lit8 v3, v4, 0x1

    const/4 v6, 0x5

    .line 4856
    aput-char v6, v1, v4

    goto :goto_101

    :pswitch_a0
    add-int/lit8 v3, v4, 0x1

    .line 4853
    aput-char v6, v1, v4

    goto :goto_101

    :pswitch_a5
    add-int/lit8 v3, v4, 0x1

    .line 4850
    aput-char v10, v1, v4

    goto :goto_101

    :pswitch_aa
    add-int/lit8 v3, v4, 0x1

    .line 4847
    aput-char v11, v1, v4

    goto :goto_101

    :pswitch_af
    add-int/lit8 v3, v4, 0x1

    .line 4844
    aput-char v7, v1, v4

    goto :goto_101

    :pswitch_b4
    add-int/lit8 v3, v4, 0x1

    .line 4841
    aput-char v2, v1, v4

    goto :goto_101

    :pswitch_b9
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0x2f

    .line 4890
    aput-char v6, v1, v4

    goto :goto_101

    :cond_c0
    add-int/lit8 v5, v4, 0x1

    .line 4896
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v8, v3, 0x2

    aget-char v8, p0, v8

    aget v8, v6, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v3, v3, 0x3

    aget-char v9, p0, v3

    aget v6, v6, v9

    add-int/2addr v8, v6

    int-to-char v6, v8

    aput-char v6, v1, v4

    goto :goto_81

    :cond_d7
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xd

    .line 4881
    aput-char v6, v1, v4

    goto :goto_101

    :cond_de
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xa

    .line 4871
    aput-char v6, v1, v4

    goto :goto_101

    :cond_e5
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0x8

    .line 4865
    aput-char v6, v1, v4

    goto :goto_101

    :cond_ec
    add-int/lit8 v3, v4, 0x1

    .line 4893
    aput-char v6, v1, v4

    goto :goto_101

    :cond_f1
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xc

    .line 4878
    aput-char v6, v1, v4

    goto :goto_101

    :cond_f8
    add-int/lit8 v3, v4, 0x1

    .line 4887
    aput-char v9, v1, v4

    goto :goto_101

    :cond_fd
    add-int/lit8 v3, v4, 0x1

    .line 4884
    aput-char v9, v1, v4

    :goto_101
    move v4, v3

    move v3, v5

    :goto_103
    add-int/2addr v3, v7

    goto/16 :goto_7

    .line 4909
    :cond_106
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :pswitch_data_10c
    .packed-switch 0x2f
        :pswitch_b9
        :pswitch_b4
        :pswitch_af
        :pswitch_aa
        :pswitch_a5
        :pswitch_a0
        :pswitch_9a
        :pswitch_93
        :pswitch_8c
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x74
        :pswitch_84
        :pswitch_59
        :pswitch_51
    .end packed-switch
.end method

.method private scanStringSingleQuote()V
    .registers 13

    .line 4954
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 4955
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4958
    :goto_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x27

    if-ne v1, v3, :cond_16

    .line 5083
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 5084
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 4964
    :cond_16
    const-string/jumbo v4, "unclosed single-quote string"

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_2d

    .line 4965
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-nez v1, :cond_27

    .line 4966
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_7

    .line 4969
    :cond_27
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v1, v5, :cond_174

    .line 4973
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v1, :cond_53

    .line 4974
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4976
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    if-le v1, v8, :cond_49

    mul-int/lit8 v1, v1, 0x2

    .line 4977
    new-array v1, v1, [C

    .line 4978
    array-length v8, v7

    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4979
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 4983
    :cond_49
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v6

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v1, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 4987
    :cond_53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/16 v7, 0x22

    if-eq v1, v7, :cond_16f

    if-eq v1, v3, :cond_16a

    const/16 v3, 0x46

    if-eq v1, v3, :cond_163

    if-eq v1, v5, :cond_15e

    const/16 v5, 0x62

    if-eq v1, v5, :cond_157

    const/16 v5, 0x66

    if-eq v1, v5, :cond_163

    const/16 v7, 0x6e

    if-eq v1, v7, :cond_150

    const/16 v7, 0x72

    if-eq v1, v7, :cond_149

    const/16 v7, 0x78

    const/16 v8, 0x10

    if-eq v1, v7, :cond_f2

    const/4 v3, 0x3

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_194

    packed-switch v1, :pswitch_data_1aa

    .line 5065
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 5066
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_89
    const/16 v1, 0xb

    .line 5024
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5062
    :pswitch_90
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v10

    new-array v2, v2, [C

    aput-char v4, v2, v0

    aput-char v7, v2, v6

    aput-char v9, v2, v5

    aput-char v10, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_b9
    const/16 v1, 0x9

    .line 5018
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_c0
    const/4 v1, 0x7

    .line 5012
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_c6
    const/4 v1, 0x6

    .line 5009
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_cc
    const/4 v1, 0x5

    .line 5006
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5003
    :pswitch_d2
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5000
    :pswitch_d7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 4997
    :pswitch_dc
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 4994
    :pswitch_e1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 4991
    :pswitch_e6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_eb
    const/16 v1, 0x2f

    .line 5040
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5046
    :cond_f2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 5047
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    const/16 v4, 0x41

    const/16 v7, 0x39

    const/16 v9, 0x61

    const/16 v10, 0x30

    if-lt v1, v10, :cond_106

    if-le v1, v7, :cond_10e

    :cond_106
    if-lt v1, v9, :cond_10a

    if-le v1, v5, :cond_10e

    :cond_10a
    if-lt v1, v4, :cond_110

    if-gt v1, v3, :cond_110

    :cond_10e
    const/4 v11, 0x1

    goto :goto_111

    :cond_110
    const/4 v11, 0x0

    :goto_111
    if-lt v2, v10, :cond_115

    if-le v2, v7, :cond_11f

    :cond_115
    if-lt v2, v9, :cond_119

    if-le v2, v5, :cond_11f

    :cond_119
    if-lt v2, v4, :cond_11e

    if-gt v2, v3, :cond_11e

    goto :goto_11f

    :cond_11e
    const/4 v6, 0x0

    :cond_11f
    :goto_11f
    if-eqz v11, :cond_132

    if-eqz v6, :cond_132

    .line 5059
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0x10

    aget v2, v3, v2

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5056
    :cond_132
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid escape character \\x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_149
    const/16 v1, 0xd

    .line 5031
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_150
    const/16 v1, 0xa

    .line 5021
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_157
    const/16 v1, 0x8

    .line 5015
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5043
    :cond_15e
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_163
    const/16 v1, 0xc

    .line 5028
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5037
    :cond_16a
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5034
    :cond_16f
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 5071
    :cond_174
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_17f

    .line 5072
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_7

    .line 5076
    :cond_17f
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_18b

    .line 5077
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_18b
    add-int/lit8 v4, v2, 0x1

    .line 5079
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v3, v2

    goto/16 :goto_7

    nop

    :pswitch_data_194
    .packed-switch 0x2f
        :pswitch_eb
        :pswitch_e6
        :pswitch_e1
        :pswitch_dc
        :pswitch_d7
        :pswitch_d2
        :pswitch_cc
        :pswitch_c6
        :pswitch_c0
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x74
        :pswitch_b9
        :pswitch_90
        :pswitch_89
    .end packed-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .registers 4

    .line 1101
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v0

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_c

    .line 1102
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    .line 1104
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .registers 4

    .line 528
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 530
    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget p2, p2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_13

    .line 531
    const-string p1, ""

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    :cond_13
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .registers 4

    .line 5280
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1e

    .line 5283
    :try_start_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_1c
    move-exception p1

    goto :goto_3f

    :cond_1e
    const/16 v1, 0x44

    if-ne v0, v1, :cond_2f

    .line 5287
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2f
    if-eqz p1, :cond_36

    .line 5291
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 5293
    :cond_36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_3e} :catch_1c

    return-object p1

    .line 5296
    :goto_3f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public doubleValue()D
    .registers 3

    .line 524
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 5

    .line 512
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_13

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-nez v2, :cond_35

    :cond_13
    const/4 v2, 0x0

    .line 515
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-le v2, v3, :cond_35

    const/16 v3, 0x39

    if-le v2, v3, :cond_21

    goto :goto_35

    .line 517
    :cond_21
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "float overflow : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    :goto_35
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .line 1025
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .registers 2

    .line 552
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getFeatures()I
    .registers 2

    .line 5347
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 1029
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .registers 2

    .line 821
    const-string v0, ""

    return-object v0
.end method

.method public final intValue()I
    .registers 14

    .line 1045
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 1046
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1051
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v0

    .line 1055
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1c

    add-int/lit8 v0, v0, 0x1

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    goto :goto_20

    :cond_1c
    const v3, -0x7fffffff

    const/4 v4, 0x0

    :goto_20
    if-ge v0, v1, :cond_2e

    add-int/lit8 v2, v0, 0x1

    .line 1064
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    move v12, v2

    move v2, v0

    move v0, v12

    :cond_2e
    :goto_2e
    if-ge v0, v1, :cond_6b

    add-int/lit8 v6, v0, 0x1

    .line 1069
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v7, 0x4c

    if-eq v0, v7, :cond_6a

    const/16 v7, 0x53

    if-eq v0, v7, :cond_6a

    const/16 v7, 0x42

    if-ne v0, v7, :cond_43

    goto :goto_6a

    :cond_43
    add-int/lit8 v0, v0, -0x30

    int-to-long v7, v2

    const-wide/32 v9, -0xccccccc

    cmp-long v11, v7, v9

    if-ltz v11, :cond_60

    mul-int/lit8 v2, v2, 0xa

    add-int v7, v3, v0

    if-lt v2, v7, :cond_56

    sub-int/2addr v2, v0

    move v0, v6

    goto :goto_2e

    .line 1082
    :cond_56
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_60
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :goto_6a
    move v0, v6

    :cond_6b
    if-eqz v4, :cond_7d

    .line 1088
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v5

    if-le v0, v1, :cond_73

    return v2

    .line 1091
    :cond_73
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    neg-int v0, v2

    return v0
.end method

.method public final integerValue()Ljava/lang/Number;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 421
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_a

    .line 422
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 424
    :cond_a
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v1

    add-int/lit8 v4, v2, -0x1

    .line 431
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x53

    const/16 v6, 0x4c

    const/16 v7, 0x42

    if-eq v4, v7, :cond_2e

    if-eq v4, v6, :cond_29

    if-eq v4, v5, :cond_24

    const/16 v4, 0x20

    goto :goto_32

    :cond_24
    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x53

    goto :goto_32

    :cond_29
    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x4c

    goto :goto_32

    :cond_2e
    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0x42

    .line 448
    :goto_32
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_42

    add-int/lit8 v1, v1, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    const/4 v3, 0x1

    goto :goto_47

    :cond_42
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :goto_47
    if-ge v1, v2, :cond_55

    add-int/lit8 v11, v1, 0x1

    .line 457
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v12, v1

    move v1, v11

    goto :goto_57

    :cond_55
    const-wide/16 v12, 0x0

    :goto_57
    if-ge v1, v2, :cond_92

    add-int/lit8 v11, v1, 0x1

    .line 462
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    const/16 v14, 0xa

    const-wide v15, -0xcccccccccccccccL

    cmp-long v17, v12, v15

    if-gez v17, :cond_76

    .line 464
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_76
    const-wide/16 v15, 0xa

    mul-long v12, v12, v15

    move/from16 v16, v11

    const/4 v15, 0x1

    int-to-long v10, v1

    add-long v17, v8, v10

    cmp-long v1, v12, v17

    if-gez v1, :cond_8e

    .line 468
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_8e
    sub-long/2addr v12, v10

    move/from16 v1, v16

    goto :goto_57

    :cond_92
    const/4 v15, 0x1

    if-eqz v3, :cond_d8

    .line 474
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v2, v15

    if-le v1, v2, :cond_c0

    const-wide/32 v1, -0x80000000

    cmp-long v3, v12, v1

    if-ltz v3, :cond_bb

    if-eq v4, v6, :cond_bb

    if-ne v4, v5, :cond_ac

    long-to-int v1, v12

    int-to-short v1, v1

    .line 477
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_ac
    if-ne v4, v7, :cond_b5

    long-to-int v1, v12

    int-to-byte v1, v1

    .line 481
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_b5
    long-to-int v1, v12

    .line 484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 486
    :cond_bb
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 488
    :cond_c0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal number format : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d8
    neg-long v1, v12

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v1, v8

    if-gtz v3, :cond_fa

    if-eq v4, v6, :cond_fa

    if-ne v4, v5, :cond_eb

    long-to-int v2, v1

    int-to-short v1, v2

    .line 494
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_eb
    if-ne v4, v7, :cond_f4

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 498
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_f4
    long-to-int v2, v1

    .line 501
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 503
    :cond_fa
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public isBlankInput()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4916
    :goto_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_10

    const/16 v0, 0x14

    .line 4918
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v0, 0x1

    return v0

    .line 4922
    :cond_10
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .registers 3

    .line 540
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final isEnabled(II)Z
    .registers 4

    .line 544
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_b

    and-int/2addr p1, p2

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .registers 2

    .line 536
    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public final isRef()Z
    .registers 6

    .line 1108
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    return v1

    .line 1112
    :cond_7
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x24

    if-ne v0, v4, :cond_37

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x2

    .line 1113
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x72

    if-ne v0, v4, :cond_37

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x3

    .line 1114
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-ne v0, v4, :cond_37

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v0, v2

    .line 1115
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_37

    return v3

    :cond_37
    return v1
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void
.end method

.method public final longValue()J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 5231
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 5232
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5235
    :cond_8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v0

    .line 5237
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1d

    add-int/lit8 v0, v0, 0x1

    const-wide/high16 v2, -0x8000000000000000L

    move-wide v3, v2

    const/4 v2, 0x1

    goto :goto_22

    :cond_1d
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_22
    if-ge v0, v1, :cond_30

    add-int/lit8 v6, v0, 0x1

    .line 5246
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v7, v0

    :goto_2e
    move v0, v6

    goto :goto_32

    :cond_30
    const-wide/16 v7, 0x0

    :goto_32
    if-ge v0, v1, :cond_74

    add-int/lit8 v6, v0, 0x1

    .line 5251
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v9, 0x4c

    if-eq v0, v9, :cond_73

    const/16 v9, 0x53

    if-eq v0, v9, :cond_73

    const/16 v9, 0x42

    if-ne v0, v9, :cond_47

    goto :goto_73

    :cond_47
    add-int/lit8 v0, v0, -0x30

    const-wide v9, -0xcccccccccccccccL

    cmp-long v11, v7, v9

    if-ltz v11, :cond_69

    const-wide/16 v9, 0xa

    mul-long v7, v7, v9

    int-to-long v9, v0

    add-long v11, v3, v9

    cmp-long v0, v7, v11

    if-ltz v0, :cond_5f

    sub-long/2addr v7, v9

    goto :goto_2e

    .line 5263
    :cond_5f
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5259
    :cond_69
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    :goto_73
    move v0, v6

    :cond_74
    if-eqz v2, :cond_86

    .line 5269
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v5

    if-le v0, v1, :cond_7c

    return-wide v7

    .line 5272
    :cond_7c
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    neg-long v0, v7

    return-wide v0
.end method

.method public matchField(J)I
    .registers 3

    .line 1208
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final matchField([C)Z
    .registers 5

    .line 1176
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1177
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1178
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    :cond_12
    const/4 p1, 0x0

    return p1

    .line 1187
    :cond_14
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1188
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x7b

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2d

    .line 1191
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xc

    .line 1192
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_72

    :cond_2d
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_39

    .line 1194
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xe

    .line 1195
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_72

    :cond_39
    const/16 v2, 0x53

    if-ne p1, v2, :cond_6f

    .line 1196
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_6f

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v2, 0x74

    if-ne p1, v2, :cond_6f

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_6f

    .line 1197
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1198
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 p1, 0x15

    .line 1199
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_72

    .line 1201
    :cond_6f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    :goto_72
    return v1
.end method

.method public matchField2([C)Z
    .registers 2

    .line 5343
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final matchStat()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1654
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1655
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 1656
    :cond_e
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1657
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1658
    :cond_1c
    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1659
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 1662
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_31

    return-object p1

    :catch_31
    move-exception p1

    .line 1664
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .registers 3

    .line 369
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 370
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 372
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_21

    const/16 v1, 0x24

    if-eq v0, v1, :cond_21

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_21

    .line 375
    :cond_1d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    .line 373
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    return-void
.end method

.method public final nextToken()V
    .registers 4

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 104
    :goto_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 106
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_11

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_3

    :cond_11
    const/16 v2, 0x22

    if-ne v1, v2, :cond_19

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_19
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_25

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x10

    .line 118
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_25
    const/16 v2, 0x30

    if-lt v1, v2, :cond_31

    const/16 v2, 0x39

    if-gt v1, v2, :cond_31

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_31
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_39

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_39
    sparse-switch v1, :sswitch_data_f8

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 207
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_cd

    .line 211
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 212
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    return-void

    .line 183
    :sswitch_51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xd

    .line 184
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 179
    :sswitch_59
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xc

    .line 180
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 203
    :sswitch_61
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanHex()V

    return-void

    .line 148
    :sswitch_65
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    return-void

    .line 154
    :sswitch_69
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    return-void

    .line 151
    :sswitch_6d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    return-void

    .line 175
    :sswitch_71
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xf

    .line 176
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 171
    :sswitch_79
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xe

    .line 172
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 160
    :sswitch_81
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    return-void

    .line 191
    :sswitch_85
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x18

    .line 192
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 187
    :sswitch_8d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x11

    .line 188
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 195
    :sswitch_95
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0x19

    .line 196
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 199
    :sswitch_9d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    .line 167
    :sswitch_a4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xb

    .line 168
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 163
    :sswitch_ac
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 v0, 0xa

    .line 164
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 134
    :sswitch_b4
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 137
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    return-void

    .line 135
    :cond_c0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :sswitch_c8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    .line 208
    :cond_cd
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_d5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1f

    if-le v1, v2, :cond_f2

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_e0

    goto :goto_f2

    .line 219
    :cond_e0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "illegal.char"

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 215
    :cond_f2
    :goto_f2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    nop

    :sswitch_data_f8
    .sparse-switch
        0x8 -> :sswitch_c8
        0x9 -> :sswitch_c8
        0xa -> :sswitch_c8
        0xc -> :sswitch_c8
        0xd -> :sswitch_c8
        0x20 -> :sswitch_c8
        0x27 -> :sswitch_b4
        0x28 -> :sswitch_ac
        0x29 -> :sswitch_a4
        0x2b -> :sswitch_9d
        0x2e -> :sswitch_95
        0x3a -> :sswitch_8d
        0x3b -> :sswitch_85
        0x4e -> :sswitch_81
        0x53 -> :sswitch_81
        0x54 -> :sswitch_81
        0x5b -> :sswitch_79
        0x5d -> :sswitch_71
        0x66 -> :sswitch_6d
        0x6e -> :sswitch_69
        0x74 -> :sswitch_65
        0x75 -> :sswitch_81
        0x78 -> :sswitch_61
        0x7b -> :sswitch_59
        0x7d -> :sswitch_51
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .registers 12

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    :goto_3
    const/4 v1, 0x2

    const/16 v2, 0xd

    const/16 v3, 0x39

    const/16 v4, 0x22

    const/16 v5, 0x30

    const/16 v6, 0xe

    const/16 v7, 0x5b

    const/16 v8, 0x7b

    const/16 v9, 0xc

    if-eq p1, v1, :cond_bc

    const/4 v1, 0x4

    if-eq p1, v1, :cond_94

    if-eq p1, v9, :cond_82

    const/16 v1, 0x12

    if-eq p1, v1, :cond_7e

    const/16 v1, 0x1a

    const/16 v3, 0x14

    if-eq p1, v3, :cond_77

    const/16 v4, 0xf

    const/16 v5, 0x5d

    packed-switch p1, :pswitch_data_104

    goto/16 :goto_e4

    .line 247
    :pswitch_2e
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_3c

    const/16 p1, 0x10

    .line 248
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_3c
    const/16 v7, 0x7d

    if-ne v6, v7, :cond_46

    .line 254
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_46
    if-ne v6, v5, :cond_4e

    .line 260
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_4e
    if-ne v6, v1, :cond_53

    .line 266
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_53
    const/16 v1, 0x6e

    if-ne v6, v1, :cond_e4

    .line 271
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew(Z)V

    return-void

    .line 340
    :pswitch_5b
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v6, v5, :cond_77

    .line 341
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 342
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 327
    :pswitch_65
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_6f

    .line 328
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_6f
    if-ne v1, v8, :cond_e4

    .line 334
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 335
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 346
    :cond_77
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v1, :cond_e4

    .line 347
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 352
    :cond_7e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    return-void

    .line 235
    :cond_82
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v8, :cond_8c

    .line 236
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_8c
    if-ne v1, v7, :cond_e4

    .line 241
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 302
    :cond_94
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v4, :cond_a0

    .line 303
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 304
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_a0
    if-lt v1, v5, :cond_ac

    if-gt v1, v3, :cond_ac

    .line 309
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 310
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_ac
    if-ne v1, v7, :cond_b4

    .line 315
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 316
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_b4
    if-ne v1, v8, :cond_e4

    .line 321
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 322
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 276
    :cond_bc
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v5, :cond_ca

    if-gt v1, v3, :cond_ca

    .line 277
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    return-void

    :cond_ca
    if-ne v1, v4, :cond_d4

    .line 283
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    return-void

    :cond_d4
    if-ne v1, v7, :cond_dc

    .line 289
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 290
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_dc
    if-ne v1, v8, :cond_e4

    .line 295
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 358
    :cond_e4
    :goto_e4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x20

    if-eq v1, v3, :cond_ff

    const/16 v3, 0xa

    if-eq v1, v3, :cond_ff

    if-eq v1, v2, :cond_ff

    const/16 v2, 0x9

    if-eq v1, v2, :cond_ff

    if-eq v1, v9, :cond_ff

    const/16 v2, 0x8

    if-ne v1, v2, :cond_fb

    goto :goto_ff

    .line 363
    :cond_fb
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    .line 359
    :cond_ff
    :goto_ff
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    :pswitch_data_104
    .packed-switch 0xe
        :pswitch_65
        :pswitch_5b
        :pswitch_2e
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .registers 5

    const/4 v0, 0x0

    .line 384
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 387
    :goto_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_e

    .line 388
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 389
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    :cond_e
    const/16 v1, 0x20

    if-eq v0, v1, :cond_51

    const/16 v1, 0xa

    if-eq v0, v1, :cond_51

    const/16 v1, 0xd

    if-eq v0, v1, :cond_51

    const/16 v1, 0x9

    if-eq v0, v1, :cond_51

    const/16 v1, 0xc

    if-eq v0, v1, :cond_51

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    goto :goto_51

    .line 398
    :cond_27
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not match "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", info : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_51
    :goto_51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3
.end method

.method public final nextTokenWithColon()V
    .registers 2

    const/16 v0, 0x3a

    .line 380
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    return-void
.end method

.method public final nextTokenWithColon(I)V
    .registers 2

    const/16 p1, 0x3a

    .line 508
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .registers 2

    .line 411
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .registers 6

    .line 5091
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v1

    if-lt v0, v2, :cond_17

    .line 5092
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-ge v2, v0, :cond_e

    add-int/lit8 v2, v0, 0x1

    .line 5096
    :cond_e
    new-array v0, v2, [C

    .line 5097
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5098
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 5100
    :cond_17
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final resetStringPosition()V
    .registers 2

    const/4 v0, 0x0

    .line 817
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    return-void
.end method

.method public scanBoolean(C)Z
    .registers 11

    const/4 v0, 0x0

    .line 2097
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2100
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    const/4 v3, 0x5

    const/16 v4, 0x65

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v1, v2, :cond_40

    .line 2104
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_3d

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    .line 2105
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_3d

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    .line 2106
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_3d

    .line 2108
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    goto :goto_96

    .line 2111
    :cond_3d
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_40
    const/16 v2, 0x66

    if-ne v1, v2, :cond_7b

    .line 2115
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_78

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    .line 2116
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_78

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    .line 2117
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_78

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x4

    .line 2118
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_78

    .line 2120
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v3, 0x6

    goto :goto_96

    .line 2123
    :cond_78
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_7b
    const/16 v2, 0x31

    if-ne v1, v2, :cond_89

    .line 2127
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    :goto_87
    const/4 v3, 0x2

    goto :goto_96

    :cond_89
    const/16 v2, 0x30

    if-ne v1, v2, :cond_95

    .line 2130
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto :goto_87

    :cond_95
    const/4 v3, 0x1

    :goto_96
    if-ne v1, p1, :cond_a6

    .line 2136
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2137
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2138
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2141
    :cond_a6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 2142
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v2

    goto :goto_96

    .line 2145
    :cond_b7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanDate(C)Ljava/util/Date;
    .registers 20

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 4089
    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4092
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/16 v8, 0x22

    if-ne v2, v8, :cond_92

    .line 4096
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    .line 4097
    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v2

    if-eq v2, v6, :cond_89

    .line 4102
    iget v9, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v7

    sub-int v10, v2, v9

    .line 4103
    invoke-virtual {v1, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5c

    .line 4104
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v6, :cond_59

    :goto_2e
    add-int/lit8 v9, v2, -0x1

    const/4 v11, 0x0

    :goto_31
    if-ltz v9, :cond_3e

    .line 4108
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_3e

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_31

    .line 4114
    :cond_3e
    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_52

    .line 4120
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    sub-int v9, v2, v9

    add-int/2addr v8, v7

    .line 4121
    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v7

    .line 4123
    invoke-static {v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v9

    goto :goto_59

    :cond_52
    add-int/lit8 v2, v2, 0x1

    .line 4117
    invoke-virtual {v1, v8, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v2

    goto :goto_2e

    .line 4126
    :cond_59
    :goto_59
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    sub-int/2addr v2, v8

    add-int/lit8 v8, v2, 0x2

    add-int/2addr v2, v4

    add-int/2addr v7, v8

    .line 4127
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 4129
    new-instance v8, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 4131
    :try_start_6b
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 4132
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 4133
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_84

    .line 4139
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto/16 :goto_115

    .line 4135
    :cond_7e
    :try_start_7e
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_84

    .line 4139
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    return-object v5

    :catchall_84
    move-exception v0

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 4140
    throw v0

    .line 4099
    :cond_89
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "unclosed str"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_92
    const/16 v8, 0x2d

    const/16 v9, 0x39

    const/4 v10, 0x2

    const/16 v11, 0x30

    if-eq v2, v8, :cond_d2

    if-lt v2, v11, :cond_a0

    if-gt v2, v9, :cond_a0

    goto :goto_d2

    :cond_a0
    const/16 v0, 0x6e

    if-ne v2, v0, :cond_cf

    .line 4172
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v7

    .line 4173
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x75

    if-ne v0, v2, :cond_cf

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v10

    .line 4174
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_cf

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    .line 4175
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_cf

    const/4 v2, 0x5

    .line 4176
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4179
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    move-object v0, v5

    goto :goto_115

    .line 4181
    :cond_cf
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_d2
    :goto_d2
    if-ne v2, v8, :cond_dd

    .line 4146
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v7

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v0, 0x1

    const/4 v7, 0x2

    :cond_dd
    const-wide/16 v12, 0x0

    if-lt v2, v11, :cond_102

    if-gt v2, v9, :cond_102

    add-int/lit8 v2, v2, -0x30

    int-to-long v14, v2

    .line 4153
    :goto_e6
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v11, :cond_ff

    if-gt v2, v9, :cond_ff

    const-wide/16 v16, 0xa

    mul-long v14, v14, v16

    add-int/lit8 v2, v2, -0x30

    int-to-long v9, v2

    add-long/2addr v14, v9

    move v7, v8

    const/16 v9, 0x39

    goto :goto_e6

    :cond_ff
    move v7, v2

    move v2, v8

    goto :goto_106

    :cond_102
    move v14, v7

    move v7, v2

    move v2, v14

    move-wide v14, v12

    :goto_106
    cmp-long v8, v14, v12

    if-gez v8, :cond_10d

    .line 4163
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_10d
    if-eqz v0, :cond_110

    neg-long v14, v14

    .line 4171
    :cond_110
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    :goto_115
    const/16 v8, 0x10

    const/16 v9, 0x2c

    if-ne v7, v9, :cond_12b

    .line 4186
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4187
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4188
    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4189
    iput v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v0

    :cond_12b
    const/16 v4, 0x5d

    if-ne v7, v4, :cond_183

    .line 4194
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v2, 0x1

    add-int/2addr v7, v2

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_148

    .line 4196
    iput v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4197
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4198
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_17d

    :cond_148
    if-ne v7, v4, :cond_15a

    const/16 v2, 0xf

    .line 4200
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4201
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4202
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_17d

    :cond_15a
    const/16 v4, 0x7d

    if-ne v7, v4, :cond_16e

    const/16 v2, 0xd

    .line 4204
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4205
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4206
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_17d

    :cond_16e
    const/16 v4, 0x1a

    if-ne v7, v4, :cond_180

    const/16 v5, 0x14

    .line 4208
    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4209
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4210
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4215
    :goto_17d
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v0

    .line 4212
    :cond_180
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 4217
    :cond_183
    iput v6, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5
.end method

.method public scanDecimal(C)Ljava/math/BigDecimal;
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2974
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2977
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x22

    if-ne v2, v4, :cond_12

    const/4 v5, 0x1

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_1e

    .line 2980
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x1

    :goto_1f
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_2d

    .line 2985
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v9

    :cond_2d
    const/16 v9, 0xd

    const/16 v10, 0x7d

    const/16 v11, 0x10

    const/16 v12, 0x2c

    const/16 v13, 0x30

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 p1, 0x1

    if-lt v2, v13, :cond_156

    const/16 v3, 0x39

    if-gt v2, v3, :cond_156

    .line 2991
    :goto_41
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v13, :cond_51

    if-gt v2, v3, :cond_51

    move/from16 v7, v16

    goto :goto_41

    :cond_51
    const/16 v17, 0x2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_78

    .line 3001
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x2

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v13, :cond_75

    if-gt v2, v3, :cond_75

    .line 3004
    :goto_65
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v13, :cond_78

    if-gt v2, v3, :cond_78

    move/from16 v7, v16

    goto :goto_65

    .line 3012
    :cond_75
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v15

    :cond_78
    const/16 v6, 0x65

    if-eq v2, v6, :cond_80

    const/16 v6, 0x45

    if-ne v2, v6, :cond_ac

    .line 3019
    :cond_80
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v7, 0x2b

    if-eq v2, v7, :cond_94

    if-ne v2, v8, :cond_91

    goto :goto_94

    :cond_91
    :goto_91
    move/from16 v16, v6

    goto :goto_9d

    .line 3021
    :cond_94
    :goto_94
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v16, 0x2

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    :goto_9d
    if-lt v2, v13, :cond_ac

    if-gt v2, v3, :cond_ac

    .line 3025
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_91

    :cond_ac
    if-eqz v5, :cond_c8

    if-eq v2, v4, :cond_b3

    .line 3035
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v15

    .line 3038
    :cond_b3
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3040
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v3

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    move/from16 v16, v3

    goto :goto_cf

    .line 3043
    :cond_c8
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v5, v16

    sub-int/2addr v3, v5

    add-int/lit8 v4, v3, -0x1

    :goto_cf
    const v3, 0xffff

    if-gt v4, v3, :cond_14e

    .line 3050
    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v3

    .line 3051
    new-instance v4, Ljava/math/BigDecimal;

    array-length v5, v3

    sget-object v6, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    if-ne v2, v12, :cond_f4

    .line 3089
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3090
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 3091
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3092
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v4

    :cond_f4
    const/16 v1, 0x5d

    if-ne v2, v1, :cond_14b

    .line 3097
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_112

    .line 3099
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3100
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3101
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_144

    :cond_112
    if-ne v2, v1, :cond_124

    const/16 v1, 0xf

    .line 3103
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3104
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3105
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_144

    :cond_124
    if-ne v2, v10, :cond_134

    .line 3107
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3108
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3109
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_144

    :cond_134
    const/16 v1, 0x1a

    if-ne v2, v1, :cond_148

    const/16 v2, 0x14

    .line 3111
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3112
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v16

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3113
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_144
    const/4 v1, 0x4

    .line 3118
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3115
    :cond_148
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v15

    .line 3120
    :cond_14b
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v15

    .line 3048
    :cond_14e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "decimal overflow"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_156
    const/16 v17, 0x2

    const/16 v1, 0x6e

    if-ne v2, v1, :cond_1d2

    .line 3052
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1d2

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1d2

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1d2

    const/4 v1, 0x5

    .line 3053
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v2, v7, 0x3

    .line 3056
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x4

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_19a

    if-ne v2, v4, :cond_19a

    .line 3059
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v6, v7

    :cond_19a
    :goto_19a
    if-ne v2, v12, :cond_1ac

    .line 3064
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3065
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3066
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3067
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v15

    :cond_1ac
    if-ne v2, v10, :cond_1be

    .line 3070
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3071
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3072
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3073
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v15

    .line 3075
    :cond_1be
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 3076
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v6, v3

    goto :goto_19a

    .line 3081
    :cond_1cf
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v15

    .line 3084
    :cond_1d2
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v15
.end method

.method public scanDouble(C)D
    .registers 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2836
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2839
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x22

    if-ne v2, v4, :cond_12

    const/4 v5, 0x1

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_1e

    .line 2842
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x1

    :goto_1f
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_25

    const/4 v9, 0x1

    goto :goto_26

    :cond_25
    const/4 v9, 0x0

    :goto_26
    if-eqz v9, :cond_32

    .line 2847
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v10

    :cond_32
    const/16 v10, 0x10

    const/4 v13, -0x1

    const/16 v14, 0x30

    if-lt v2, v14, :cond_126

    const/16 v15, 0x39

    if-gt v2, v15, :cond_126

    sub-int/2addr v2, v14

    int-to-long v1, v2

    const/16 v17, 0x1

    .line 2854
    :goto_41
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const-wide/16 v19, 0xa

    if-lt v3, v14, :cond_5b

    if-gt v3, v15, :cond_5b

    mul-long v1, v1, v19

    add-int/lit8 v3, v3, -0x30

    const/16 v21, 0x2

    int-to-long v6, v3

    add-long/2addr v1, v6

    move/from16 v7, v18

    goto :goto_41

    :cond_5b
    const/16 v21, 0x2

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_95

    .line 2866
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x2

    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_90

    if-gt v3, v15, :cond_90

    mul-long v1, v1, v19

    sub-int/2addr v3, v14

    const-wide/16 v22, 0x0

    int-to-long v11, v3

    add-long/2addr v1, v11

    move-wide/from16 v11, v19

    .line 2871
    :goto_78
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v14, :cond_99

    if-gt v3, v15, :cond_99

    mul-long v1, v1, v19

    add-int/lit8 v3, v3, -0x30

    int-to-long v6, v3

    add-long/2addr v1, v6

    mul-long v11, v11, v19

    move/from16 v7, v18

    goto :goto_78

    :cond_90
    const-wide/16 v22, 0x0

    .line 2881
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v22

    :cond_95
    const-wide/16 v22, 0x0

    const-wide/16 v11, 0x1

    :cond_99
    const/16 v6, 0x65

    if-eq v3, v6, :cond_a5

    const/16 v6, 0x45

    if-ne v3, v6, :cond_a2

    goto :goto_a5

    :cond_a2
    const/16 v16, 0x0

    goto :goto_a7

    :cond_a5
    :goto_a5
    const/16 v16, 0x1

    :goto_a7
    if-eqz v16, :cond_d5

    .line 2888
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v18, 0x1

    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v7, 0x2b

    if-eq v3, v7, :cond_bd

    if-ne v3, v8, :cond_ba

    goto :goto_bd

    :cond_ba
    :goto_ba
    move/from16 v18, v6

    goto :goto_c6

    .line 2890
    :cond_bd
    :goto_bd
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v18, 0x2

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_c6
    if-lt v3, v14, :cond_d5

    if-gt v3, v15, :cond_d5

    .line 2894
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v18, 0x1

    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_ba

    :cond_d5
    if-eqz v5, :cond_f1

    if-eq v3, v4, :cond_dc

    .line 2904
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v22

    .line 2907
    :cond_dc
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2909
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v4

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    move/from16 v18, v4

    goto :goto_f8

    .line 2912
    :cond_f1
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v6, v18

    sub-int/2addr v4, v6

    add-int/lit8 v5, v4, -0x1

    :goto_f8
    if-nez v16, :cond_105

    const/16 v4, 0x11

    if-ge v5, v4, :cond_105

    long-to-double v1, v1

    long-to-double v4, v11

    div-double/2addr v1, v4

    if-eqz v9, :cond_10d

    neg-double v1, v1

    goto :goto_10d

    .line 2922
    :cond_105
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2923
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_10d
    :goto_10d
    move/from16 v4, p1

    if-ne v3, v4, :cond_123

    .line 2962
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v18

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2963
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v3, 0x3

    .line 2964
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2965
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v1

    .line 2968
    :cond_123
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_126
    const/16 v17, 0x1

    const/16 v21, 0x2

    const-wide/16 v22, 0x0

    const/16 v1, 0x6e

    if-ne v2, v1, :cond_1ac

    .line 2925
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1ac

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1ac

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1ac

    const/4 v1, 0x5

    .line 2926
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v2, v7, 0x3

    .line 2929
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x4

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_16e

    if-ne v2, v4, :cond_16e

    .line 2932
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v6, v7

    :cond_16e
    :goto_16e
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_182

    .line 2937
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2938
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2939
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2940
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v22

    :cond_182
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_198

    .line 2943
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2944
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2945
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2946
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v22

    .line 2948
    :cond_198
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 2949
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v6, v3

    goto :goto_16e

    .line 2954
    :cond_1a9
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v22

    .line 2957
    :cond_1ac
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v22
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1574
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1578
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public scanEnumSymbol([C)J
    .registers 12

    const/4 v0, 0x0

    .line 1502
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1504
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    const/4 p1, -0x2

    .line 1505
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1509
    :cond_f
    array-length p1, p1

    .line 1510
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x22

    const/4 v4, -0x1

    if-eq p1, v0, :cond_21

    .line 1513
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_21
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1519
    :goto_26
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_ad

    .line 1521
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v7, 0x2c

    if-ne p1, v7, :cond_4d

    .line 1535
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1536
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1537
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    :cond_4d
    const/16 v8, 0x7d

    if-ne p1, v8, :cond_aa

    .line 1542
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x3

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v7, :cond_6c

    const/16 p1, 0x10

    .line 1544
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1545
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1546
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_6c
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_80

    const/16 p1, 0xf

    .line 1548
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1549
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1550
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_80
    if-ne p1, v8, :cond_92

    const/16 p1, 0xd

    .line 1552
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1553
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1554
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_92
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_a7

    const/16 p1, 0x14

    .line 1556
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1557
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1558
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_a3
    const/4 p1, 0x4

    .line 1563
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    .line 1560
    :cond_a7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1565
    :cond_aa
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_ad
    const/16 v3, 0x41

    if-lt p1, v3, :cond_b8

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_b8

    add-int/lit8 v3, p1, 0x20

    goto :goto_b9

    :cond_b8
    move v3, p1

    :goto_b9
    int-to-long v8, v3

    xor-long/2addr v5, v8

    const-wide v8, 0x100000001b3L

    mul-long v5, v5, v8

    const/16 v3, 0x5c

    if-ne p1, v3, :cond_c9

    .line 1529
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_c9
    move v3, v7

    goto/16 :goto_26
.end method

.method public final scanFalse()V
    .registers 4

    .line 4743
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    const-string v2, "error parse false"

    if-ne v0, v1, :cond_86

    .line 4746
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4748
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_80

    .line 4751
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4753
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_7a

    .line 4756
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4758
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x73

    if-ne v0, v1, :cond_74

    .line 4761
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4763
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_6e

    .line 4766
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4768
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_6a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_62

    goto :goto_6a

    .line 4782
    :cond_62
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :goto_6a
    const/4 v0, 0x7

    .line 4780
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4764
    :cond_6e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4759
    :cond_74
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4754
    :cond_7a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4749
    :cond_80
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4744
    :cond_86
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBigInteger([C)Ljava/math/BigInteger;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 3809
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3811
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    const/4 v1, -0x2

    .line 3812
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3816
    :cond_12
    array-length v3, v1

    .line 3817
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    if-ne v5, v7, :cond_22

    const/4 v9, 0x1

    goto :goto_23

    :cond_22
    const/4 v9, 0x0

    :goto_23
    if-eqz v9, :cond_2f

    .line 3820
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    move v6, v3

    :cond_2f
    const/16 v3, 0x2d

    if-ne v5, v3, :cond_35

    const/4 v3, 0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_42

    .line 3825
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    move v6, v10

    :cond_42
    const/16 v12, 0x7d

    const/16 v13, 0x2c

    const/16 v14, 0x30

    const/4 v15, -0x1

    if-lt v5, v14, :cond_13e

    const/16 v2, 0x39

    if-gt v5, v2, :cond_13e

    sub-int/2addr v5, v14

    move-object/from16 v16, v4

    int-to-long v4, v5

    const/16 v17, 0x1

    .line 3834
    :goto_55
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v6, 0x1

    add-int/2addr v8, v6

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-lt v8, v14, :cond_77

    if-gt v8, v2, :cond_77

    const-wide/16 v19, 0xa

    mul-long v19, v19, v4

    add-int/lit8 v2, v8, -0x30

    int-to-long v10, v2

    add-long v10, v19, v10

    cmp-long v2, v10, v4

    if-gez v2, :cond_71

    const/4 v2, 0x1

    goto :goto_78

    :cond_71
    move-wide v4, v10

    move/from16 v6, v18

    const/16 v2, 0x39

    goto :goto_55

    :cond_77
    const/4 v2, 0x0

    :goto_78
    if-eqz v9, :cond_96

    if-eq v8, v7, :cond_7f

    .line 3851
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3854
    :cond_7f
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v6, 0x2

    add-int v7, v7, v18

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 3856
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v7, v6

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x2

    move/from16 v18, v6

    goto :goto_9f

    .line 3859
    :cond_96
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v6

    add-int v6, v6, v18

    sub-int/2addr v6, v1

    add-int/lit8 v7, v6, -0x1

    :goto_9f
    const/16 v6, 0x14

    if-nez v2, :cond_b3

    if-lt v7, v6, :cond_ab

    if-eqz v3, :cond_b3

    const/16 v2, 0x15

    if-ge v7, v2, :cond_b3

    :cond_ab
    if-eqz v3, :cond_ae

    neg-long v4, v4

    .line 3864
    :cond_ae
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_c4

    :cond_b3
    const v2, 0xffff

    if-gt v7, v2, :cond_136

    .line 3873
    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3874
    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    :goto_c4
    if-ne v8, v13, :cond_da

    .line 3916
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v18

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3917
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 3918
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v2, 0x10

    .line 3919
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v1

    :cond_da
    const/16 v2, 0x10

    if-ne v8, v12, :cond_133

    .line 3924
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v18, 0x1

    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v13, :cond_f8

    .line 3926
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3927
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3928
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_12c

    :cond_f8
    const/16 v2, 0x5d

    if-ne v3, v2, :cond_10c

    const/16 v2, 0xf

    .line 3930
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3931
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3932
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_12c

    :cond_10c
    if-ne v3, v12, :cond_11e

    const/16 v2, 0xd

    .line 3934
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3935
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3936
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_12c

    :cond_11e
    const/16 v2, 0x1a

    if-ne v3, v2, :cond_130

    .line 3938
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3939
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v18

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3940
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_12c
    const/4 v2, 0x4

    .line 3945
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    .line 3942
    :cond_130
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3947
    :cond_133
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3870
    :cond_136
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scanInteger overflow"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13e
    move-object/from16 v16, v4

    const/16 v17, 0x1

    const/16 v1, 0x6e

    if-ne v5, v1, :cond_1c3

    .line 3876
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    .line 3877
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1c3

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    .line 3878
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1c3

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    .line 3879
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1c3

    const/4 v1, 0x5

    .line 3880
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v2, v6, 0x3

    .line 3883
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, 0x4

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v9, :cond_184

    if-ne v2, v7, :cond_184

    .line 3886
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    :goto_183
    move v4, v6

    :cond_184
    if-ne v2, v13, :cond_198

    .line 3891
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3892
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3893
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v3, 0x10

    .line 3894
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v16

    :cond_198
    const/16 v3, 0x10

    if-ne v2, v12, :cond_1ae

    .line 3897
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3898
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3899
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v5, 0xd

    .line 3900
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v16

    :cond_1ae
    const/16 v5, 0xd

    .line 3902
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 3903
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_183

    .line 3908
    :cond_1c0
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3911
    :cond_1c3
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16
.end method

.method public scanFieldBoolean([C)Z
    .registers 13

    const/4 v0, 0x0

    .line 2240
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2242
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p1, -0x2

    .line 2243
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2247
    :cond_d
    array-length p1, p1

    .line 2248
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x74

    const/16 v4, 0x65

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v1, v3, :cond_4f

    .line 2252
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-eq v1, v2, :cond_30

    .line 2253
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2256
    :cond_30
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, p1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x75

    if-eq v1, v3, :cond_40

    .line 2257
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2260
    :cond_40
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_4d

    .line 2261
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_4d
    const/4 v1, 0x1

    goto :goto_92

    :cond_4f
    const/16 v3, 0x66

    if-ne v1, v3, :cond_10e

    .line 2267
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_63

    .line 2268
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2271
    :cond_63
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, p1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_73

    .line 2272
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2275
    :cond_73
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-eq v1, v2, :cond_83

    .line 2276
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2279
    :cond_83
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x5

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_91

    .line 2280
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_91
    const/4 v1, 0x0

    .line 2290
    :goto_92
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x10

    const/16 v8, 0x2c

    if-ne v2, v8, :cond_b2

    .line 2292
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2293
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 2294
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2295
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    :cond_b2
    const/16 v9, 0x7d

    if-ne v2, v9, :cond_10b

    .line 2301
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, p1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_cf

    .line 2303
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2304
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2305
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_105

    :cond_cf
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_e3

    const/16 p1, 0xf

    .line 2307
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2308
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2309
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_105

    :cond_e3
    if-ne v2, v9, :cond_f5

    const/16 p1, 0xd

    .line 2311
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2312
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2313
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_105

    :cond_f5
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_108

    const/16 v0, 0x14

    .line 2315
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2316
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2317
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2322
    :goto_105
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    .line 2319
    :cond_108
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2324
    :cond_10b
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2286
    :cond_10e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .registers 16

    const/4 v0, 0x0

    .line 3955
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3957
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/4 p1, -0x2

    .line 3958
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 3964
    :cond_e
    array-length v1, p1

    .line 3965
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v3, v5, :cond_a5

    .line 3969
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v3, p1

    add-int/2addr v1, v3

    add-int/2addr v1, v7

    .line 3970
    invoke-virtual {p0, v5, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    if-eq v1, v6, :cond_9c

    .line 3975
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v8, p1

    add-int/2addr v3, v8

    add-int/2addr v3, v7

    sub-int v8, v1, v3

    .line 3976
    invoke-virtual {p0, v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x5c

    .line 3977
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v6, :cond_6a

    :goto_3c
    add-int/lit8 v3, v1, -0x1

    const/4 v9, 0x0

    :goto_3f
    if-ltz v3, :cond_4c

    .line 3981
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_4c

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3f

    .line 3987
    :cond_4c
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_63

    .line 3993
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, p1

    add-int/2addr v5, v3

    add-int/2addr v5, v7

    sub-int v5, v1, v5

    .line 3994
    array-length v8, p1

    add-int/2addr v3, v8

    add-int/2addr v3, v7

    invoke-virtual {p0, v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v3

    .line 3996
    invoke-static {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_6a

    :cond_63
    add-int/lit8 v1, v1, 0x1

    .line 3990
    invoke-virtual {p0, v5, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    goto :goto_3c

    .line 3999
    :cond_6a
    :goto_6a
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr p1, v5

    add-int/2addr p1, v7

    sub-int/2addr v1, p1

    add-int/2addr v1, v7

    add-int/2addr v4, v1

    add-int/lit8 p1, v4, 0x1

    add-int/2addr v5, v4

    .line 4000
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 4002
    new-instance v4, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 4004
    :try_start_7e
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 4005
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 4006
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_97

    .line 4012
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto/16 :goto_f8

    .line 4008
    :cond_91
    :try_start_91
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_97

    .line 4012
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    return-object v2

    :catchall_97
    move-exception p1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 4013
    throw p1

    .line 3972
    :cond_9c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a5
    const/16 p1, 0x2d

    const/16 v5, 0x39

    const/16 v8, 0x30

    if-eq v3, p1, :cond_b5

    if-lt v3, v8, :cond_b2

    if-gt v3, v5, :cond_b2

    goto :goto_b5

    .line 4046
    :cond_b2
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_b5
    :goto_b5
    if-ne v3, p1, :cond_c2

    .line 4019
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v4, v1

    const/4 v0, 0x1

    :cond_c2
    const-wide/16 v9, 0x0

    if-lt v3, v8, :cond_e6

    if-gt v3, v5, :cond_e6

    add-int/lit8 v3, v3, -0x30

    int-to-long v11, v3

    .line 4026
    :goto_cb
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-lt p1, v8, :cond_e2

    if-gt p1, v5, :cond_e2

    const-wide/16 v3, 0xa

    mul-long v11, v11, v3

    add-int/lit8 p1, p1, -0x30

    int-to-long v3, p1

    add-long/2addr v11, v3

    move v4, v1

    goto :goto_cb

    :cond_e2
    move v13, v1

    move v1, p1

    move p1, v13

    goto :goto_e9

    :cond_e6
    move v1, v3

    move p1, v4

    move-wide v11, v9

    :goto_e9
    cmp-long v3, v11, v9

    if-gez v3, :cond_f0

    .line 4036
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_f0
    if-eqz v0, :cond_f3

    neg-long v11, v11

    .line 4044
    :cond_f3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    :goto_f8
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_10b

    .line 4051
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4052
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 4053
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v0

    :cond_10b
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_166

    .line 4058
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_12a

    const/16 p1, 0x10

    .line 4060
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4061
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4062
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15f

    :cond_12a
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_13e

    const/16 p1, 0xf

    .line 4064
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4065
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4066
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15f

    :cond_13e
    if-ne v1, v4, :cond_150

    const/16 p1, 0xd

    .line 4068
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4069
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4070
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15f

    :cond_150
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_163

    const/16 v1, 0x14

    .line 4072
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4073
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4074
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_15f
    const/4 p1, 0x4

    .line 4079
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v0

    .line 4076
    :cond_163
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 4081
    :cond_166
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2
.end method

.method public scanFieldDecimal([C)Ljava/math/BigDecimal;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 3646
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3648
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    const/4 v1, -0x2

    .line 3649
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3653
    :cond_12
    array-length v3, v1

    .line 3654
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    if-ne v5, v7, :cond_22

    const/4 v9, 0x1

    goto :goto_23

    :cond_22
    const/4 v9, 0x0

    :goto_23
    if-eqz v9, :cond_2f

    .line 3657
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    move v6, v3

    :cond_2f
    const/16 v3, 0x2d

    if-ne v5, v3, :cond_3d

    .line 3662
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    move v6, v10

    :cond_3d
    const/16 v10, 0xd

    const/16 v11, 0x10

    const/16 v12, 0x7d

    const/16 v13, 0x2c

    const/16 v14, 0x30

    const/4 v15, -0x1

    move-object/from16 v16, v4

    if-lt v5, v14, :cond_16c

    const/16 v4, 0x39

    if-gt v5, v4, :cond_16c

    .line 3668
    :goto_50
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-lt v5, v14, :cond_60

    if-gt v5, v4, :cond_60

    move/from16 v6, v17

    goto :goto_50

    :cond_60
    const/16 v18, 0x1

    const/16 v8, 0x2e

    if-ne v5, v8, :cond_87

    .line 3678
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v6, 0x2

    add-int v5, v5, v17

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-lt v5, v14, :cond_84

    if-gt v5, v4, :cond_84

    .line 3681
    :goto_74
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-lt v5, v14, :cond_87

    if-gt v5, v4, :cond_87

    move/from16 v6, v17

    goto :goto_74

    .line 3689
    :cond_84
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_87
    const/16 v6, 0x65

    if-eq v5, v6, :cond_8f

    const/16 v6, 0x45

    if-ne v5, v6, :cond_be

    .line 3696
    :cond_8f
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v5, v5, v17

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v8, 0x2b

    if-eq v5, v8, :cond_a3

    if-ne v5, v3, :cond_a0

    goto :goto_a3

    :cond_a0
    move/from16 v17, v6

    goto :goto_ad

    .line 3698
    :cond_a3
    :goto_a3
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_ac
    move v5, v3

    :goto_ad
    if-lt v5, v14, :cond_be

    if-gt v5, v4, :cond_be

    .line 3702
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v17, v5

    goto :goto_ac

    :cond_be
    if-eqz v9, :cond_dc

    if-eq v5, v7, :cond_c5

    .line 3712
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3715
    :cond_c5
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3717
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x2

    move/from16 v17, v4

    goto :goto_e5

    .line 3720
    :cond_dc
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v3

    add-int v3, v3, v17

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    :goto_e5
    const v4, 0xffff

    if-gt v3, v4, :cond_164

    .line 3728
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 3729
    new-instance v3, Ljava/math/BigDecimal;

    array-length v4, v1

    sget-object v6, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v3, v1, v2, v4, v6}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    if-ne v5, v13, :cond_10a

    .line 3770
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3771
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 3772
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3773
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_10a
    if-ne v5, v12, :cond_161

    .line 3778
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v17, 0x1

    add-int v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_126

    .line 3780
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3781
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3782
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15a

    :cond_126
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_13a

    const/16 v1, 0xf

    .line 3784
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3785
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3786
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15a

    :cond_13a
    if-ne v1, v12, :cond_14a

    .line 3788
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3789
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3790
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_15a

    :cond_14a
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_15e

    const/16 v1, 0x14

    .line 3792
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3793
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3794
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_15a
    const/4 v1, 0x4

    .line 3799
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v3

    .line 3796
    :cond_15e
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3801
    :cond_161
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3725
    :cond_164
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "scan decimal overflow"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16c
    const/16 v18, 0x1

    const/16 v1, 0x6e

    if-ne v5, v1, :cond_1e8

    .line 3730
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    .line 3731
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1e8

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    .line 3732
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1e8

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    .line 3733
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1e8

    const/4 v1, 0x5

    .line 3734
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v2, v6, 0x3

    .line 3737
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, 0x4

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v9, :cond_1b0

    if-ne v2, v7, :cond_1b0

    .line 3740
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v6

    :cond_1b0
    :goto_1b0
    if-ne v2, v13, :cond_1c2

    .line 3745
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3746
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3747
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3748
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v16

    :cond_1c2
    if-ne v2, v12, :cond_1d4

    .line 3751
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3752
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3753
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3754
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v16

    .line 3756
    :cond_1d4
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 3757
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v3

    goto :goto_1b0

    .line 3762
    :cond_1e5
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 3765
    :cond_1e8
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16
.end method

.method public final scanFieldDouble([C)D
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 3472
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3474
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_13

    const/4 v1, -0x2

    .line 3475
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v4

    .line 3479
    :cond_13
    array-length v3, v1

    .line 3480
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v8, 0x22

    if-ne v6, v8, :cond_23

    const/4 v10, 0x1

    goto :goto_24

    :cond_23
    const/4 v10, 0x0

    :goto_24
    if-eqz v10, :cond_30

    .line 3483
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    move v7, v3

    :cond_30
    const/16 v3, 0x2d

    if-ne v6, v3, :cond_36

    const/4 v11, 0x1

    goto :goto_37

    :cond_36
    const/4 v11, 0x0

    :goto_37
    if-eqz v11, :cond_43

    .line 3488
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    move v7, v12

    :cond_43
    const/16 v15, 0x2c

    const/4 v2, -0x1

    move-wide/from16 v17, v4

    const/16 v4, 0x30

    if-lt v6, v4, :cond_197

    const/16 v5, 0x39

    if-gt v6, v5, :cond_197

    sub-int/2addr v6, v4

    move/from16 v20, v10

    const/16 v19, 0x1

    int-to-long v9, v6

    .line 3496
    :goto_56
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v21, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const-wide/16 v22, 0xa

    if-lt v6, v4, :cond_6e

    if-gt v6, v5, :cond_6e

    mul-long v9, v9, v22

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v9, v6

    move/from16 v7, v21

    goto :goto_56

    :cond_6e
    const/16 v12, 0x2e

    if-ne v6, v12, :cond_a2

    .line 3508
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x2

    add-int v6, v6, v21

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v4, :cond_9f

    if-gt v6, v5, :cond_9f

    mul-long v9, v9, v22

    sub-int/2addr v6, v4

    int-to-long v13, v6

    add-long/2addr v9, v13

    move-wide/from16 v13, v22

    .line 3513
    :goto_87
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v21, v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v4, :cond_a4

    if-gt v6, v5, :cond_a4

    mul-long v9, v9, v22

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v9, v6

    mul-long v13, v13, v22

    move/from16 v7, v21

    goto :goto_87

    .line 3523
    :cond_9f
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v17

    :cond_a2
    const-wide/16 v13, 0x1

    :cond_a4
    const/16 v7, 0x65

    if-eq v6, v7, :cond_b0

    const/16 v7, 0x45

    if-ne v6, v7, :cond_ad

    goto :goto_b0

    :cond_ad
    const/16 v16, 0x0

    goto :goto_b2

    :cond_b0
    :goto_b0
    const/16 v16, 0x1

    :goto_b2
    if-eqz v16, :cond_e3

    .line 3530
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v21, 0x1

    add-int v6, v6, v21

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v12, 0x2b

    if-eq v6, v12, :cond_c8

    if-ne v6, v3, :cond_c5

    goto :goto_c8

    :cond_c5
    move/from16 v21, v7

    goto :goto_d2

    .line 3532
    :cond_c8
    :goto_c8
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v21, v21, 0x2

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_d1
    move v6, v3

    :goto_d2
    if-lt v6, v4, :cond_e3

    if-gt v6, v5, :cond_e3

    .line 3536
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v21, 0x1

    add-int v3, v3, v21

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v21, v6

    goto :goto_d1

    :cond_e3
    if-eqz v20, :cond_101

    if-eq v6, v8, :cond_ea

    .line 3546
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v17

    .line 3549
    :cond_ea
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v21, 0x1

    add-int v3, v3, v21

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3551
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x2

    move/from16 v21, v4

    goto :goto_10a

    .line 3554
    :cond_101
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v3

    add-int v3, v3, v21

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    :goto_10a
    if-nez v16, :cond_117

    const/16 v4, 0x11

    if-ge v3, v4, :cond_117

    long-to-double v3, v9

    long-to-double v7, v13

    div-double/2addr v3, v7

    if-eqz v11, :cond_11f

    neg-double v3, v3

    goto :goto_11f

    .line 3564
    :cond_117
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3565
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :cond_11f
    :goto_11f
    if-ne v6, v15, :cond_135

    .line 3607
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v21

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3608
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 3609
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v12, 0x10

    .line 3610
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v3

    :cond_135
    const/16 v1, 0x7d

    const/16 v12, 0x10

    if-ne v6, v1, :cond_194

    .line 3615
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v21, 0x1

    add-int v1, v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_155

    .line 3617
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3618
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3619
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_18d

    :cond_155
    const/16 v6, 0x5d

    if-ne v1, v6, :cond_169

    const/16 v1, 0xf

    .line 3621
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3622
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3623
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_18d

    :cond_169
    const/16 v6, 0x7d

    if-ne v1, v6, :cond_17d

    const/16 v6, 0xd

    .line 3625
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3626
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3627
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_18d

    :cond_17d
    const/16 v5, 0x1a

    if-ne v1, v5, :cond_191

    const/16 v1, 0x14

    .line 3629
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3630
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v21

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3631
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_18d
    const/4 v1, 0x4

    .line 3636
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v3

    .line 3633
    :cond_191
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v17

    .line 3638
    :cond_194
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v17

    :cond_197
    move/from16 v20, v10

    const/16 v19, 0x1

    const/16 v1, 0x6e

    if-ne v6, v1, :cond_21e

    .line 3567
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    .line 3568
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x75

    if-ne v1, v3, :cond_21e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    .line 3569
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_21e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x2

    .line 3570
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_21e

    const/4 v1, 0x5

    .line 3571
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v3, v7, 0x3

    .line 3574
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v7, 0x4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-eqz v20, :cond_1dd

    if-ne v3, v8, :cond_1dd

    .line 3577
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_1dc
    move v5, v7

    :cond_1dd
    if-ne v3, v15, :cond_1f1

    .line 3582
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3583
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3584
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v12, 0x10

    .line 3585
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v17

    :cond_1f1
    const/16 v6, 0x7d

    const/16 v12, 0x10

    if-ne v3, v6, :cond_209

    .line 3588
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3589
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3590
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v4, 0xd

    .line 3591
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v17

    :cond_209
    const/16 v4, 0xd

    .line 3593
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 3594
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_1dc

    .line 3599
    :cond_21b
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v17

    .line 3602
    :cond_21e
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v17
.end method

.method public final scanFieldFloat([C)F
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2512
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2514
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    const/4 v1, -0x2

    .line 2515
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v4

    .line 2519
    :cond_12
    array-length v3, v1

    .line 2520
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    if-ne v5, v7, :cond_22

    const/4 v9, 0x1

    goto :goto_23

    :cond_22
    const/4 v9, 0x0

    :goto_23
    if-eqz v9, :cond_2f

    .line 2524
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    move v6, v3

    :cond_2f
    const/16 v3, 0x2d

    if-ne v5, v3, :cond_35

    const/4 v10, 0x1

    goto :goto_36

    :cond_35
    const/4 v10, 0x0

    :goto_36
    if-eqz v10, :cond_42

    .line 2529
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    move v6, v11

    :cond_42
    const/16 v14, 0x2c

    const/4 v15, -0x1

    const/16 v2, 0x30

    const/16 v17, 0x0

    if-lt v5, v2, :cond_197

    const/16 v4, 0x39

    if-gt v5, v4, :cond_197

    sub-int/2addr v5, v2

    move/from16 v19, v9

    const/16 v18, 0x1

    int-to-long v8, v5

    .line 2536
    :goto_55
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const-wide/16 v21, 0xa

    if-lt v5, v2, :cond_6d

    if-gt v5, v4, :cond_6d

    mul-long v8, v8, v21

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long/2addr v8, v5

    move/from16 v6, v20

    goto :goto_55

    :cond_6d
    const/16 v11, 0x2e

    if-ne v5, v11, :cond_a1

    .line 2548
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v6, 0x2

    add-int v5, v5, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_9e

    if-gt v5, v4, :cond_9e

    mul-long v8, v8, v21

    sub-int/2addr v5, v2

    int-to-long v12, v5

    add-long/2addr v8, v12

    move-wide/from16 v12, v21

    .line 2553
    :goto_86
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_a3

    if-gt v5, v4, :cond_a3

    mul-long v8, v8, v21

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long/2addr v8, v5

    mul-long v12, v12, v21

    move/from16 v6, v20

    goto :goto_86

    .line 2563
    :cond_9e
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v17

    :cond_a1
    const-wide/16 v12, 0x1

    :cond_a3
    const/16 v6, 0x65

    if-eq v5, v6, :cond_af

    const/16 v6, 0x45

    if-ne v5, v6, :cond_ac

    goto :goto_af

    :cond_ac
    const/16 v16, 0x0

    goto :goto_b1

    :cond_af
    :goto_af
    const/16 v16, 0x1

    :goto_b1
    if-eqz v16, :cond_e2

    .line 2570
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v20, 0x1

    add-int v5, v5, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v11, 0x2b

    if-eq v5, v11, :cond_c7

    if-ne v5, v3, :cond_c4

    goto :goto_c7

    :cond_c4
    move/from16 v20, v6

    goto :goto_d1

    .line 2572
    :cond_c7
    :goto_c7
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v20, 0x2

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_d0
    move v5, v3

    :goto_d1
    if-lt v5, v2, :cond_e2

    if-gt v5, v4, :cond_e2

    .line 2576
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v20, 0x1

    add-int v3, v3, v20

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v20, v5

    goto :goto_d0

    :cond_e2
    if-eqz v19, :cond_100

    if-eq v5, v7, :cond_e9

    .line 2586
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v17

    .line 2589
    :cond_e9
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v20, 0x1

    add-int v2, v2, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 2591
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x2

    move/from16 v20, v3

    goto :goto_109

    .line 2594
    :cond_100
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v2

    add-int v2, v2, v20

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_109
    if-nez v16, :cond_117

    const/16 v3, 0x11

    if-ge v2, v3, :cond_117

    long-to-double v1, v8

    long-to-double v3, v12

    div-double/2addr v1, v3

    double-to-float v1, v1

    if-eqz v10, :cond_11f

    neg-float v1, v1

    goto :goto_11f

    .line 2604
    :cond_117
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2605
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_11f
    :goto_11f
    if-ne v5, v14, :cond_135

    .line 2644
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v20

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2645
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2646
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v11, 0x10

    .line 2647
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    :cond_135
    const/16 v2, 0x7d

    const/16 v11, 0x10

    if-ne v5, v2, :cond_194

    .line 2652
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v20, 0x1

    add-int v2, v2, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_155

    .line 2654
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2655
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2656
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_18d

    :cond_155
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_169

    const/16 v2, 0xf

    .line 2658
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2659
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2660
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_18d

    :cond_169
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_17d

    const/16 v4, 0xd

    .line 2662
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2663
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2664
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_18d

    :cond_17d
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_191

    .line 2666
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v20

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 2667
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2668
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_18d
    const/4 v2, 0x4

    .line 2673
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    .line 2670
    :cond_191
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v17

    .line 2675
    :cond_194
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v17

    :cond_197
    move/from16 v19, v9

    const/16 v18, 0x1

    const/16 v1, 0x6e

    if-ne v5, v1, :cond_21e

    .line 2607
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_21e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_21e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_21e

    const/4 v1, 0x5

    .line 2608
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v2, v6, 0x3

    .line 2611
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, 0x4

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v19, :cond_1dd

    if-ne v2, v7, :cond_1dd

    .line 2614
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    :goto_1dc
    move v4, v6

    :cond_1dd
    if-ne v2, v14, :cond_1f1

    .line 2619
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2620
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2621
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v11, 0x10

    .line 2622
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v17

    :cond_1f1
    const/16 v3, 0x7d

    const/16 v11, 0x10

    if-ne v2, v3, :cond_209

    .line 2625
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2626
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2627
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v5, 0xd

    .line 2628
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v17

    :cond_209
    const/16 v5, 0xd

    .line 2630
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_21b

    .line 2631
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_1dc

    .line 2636
    :cond_21b
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v17

    .line 2639
    :cond_21e
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v17
.end method

.method public final scanFieldFloatArray([C)[F
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3128
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3130
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_10

    .line 3131
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_10
    move-object/from16 v2, p1

    .line 3135
    array-length v2, v2

    .line 3136
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v7, 0x5b

    if-eq v5, v7, :cond_23

    .line 3138
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 3141
    :cond_23
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x10

    .line 3143
    new-array v6, v5, [F

    const/4 v7, 0x0

    .line 3147
    :goto_31
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v9, v8, v2

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/16 v11, 0x2d

    if-ne v3, v11, :cond_3d

    const/4 v12, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v12, 0x0

    :goto_3e
    if-eqz v12, :cond_4c

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v8, v2

    .line 3151
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v19, v3

    move v3, v2

    move/from16 v2, v19

    :cond_4c
    const/4 v8, -0x1

    const/16 v13, 0x30

    if-lt v3, v13, :cond_1af

    const/16 v14, 0x39

    if-gt v3, v14, :cond_1af

    add-int/lit8 v3, v3, -0x30

    .line 3157
    :goto_57
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v2, 0x1

    add-int/2addr v15, v2

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    if-lt v15, v13, :cond_6c

    if-gt v15, v14, :cond_6c

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v15, v15, -0x30

    add-int/2addr v3, v15

    move/from16 v2, v16

    goto :goto_57

    :cond_6c
    move-object/from16 v17, v4

    const/16 v4, 0x2e

    const/16 p1, 0x1

    const/16 v10, 0xa

    if-ne v15, v4, :cond_a5

    .line 3169
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int v4, v4, v16

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_a2

    if-gt v4, v14, :cond_a2

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    const/16 v4, 0xa

    .line 3174
    :goto_8b
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v2, 0x1

    add-int/2addr v15, v2

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    if-lt v15, v13, :cond_a6

    if-gt v15, v14, :cond_a6

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v15, v15, -0x30

    add-int/2addr v3, v15

    mul-int/lit8 v4, v4, 0xa

    move/from16 v2, v16

    goto :goto_8b

    .line 3185
    :cond_a2
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v17

    :cond_a5
    const/4 v4, 0x1

    :cond_a6
    const/16 v2, 0x65

    if-eq v15, v2, :cond_b1

    const/16 v2, 0x45

    if-ne v15, v2, :cond_af

    goto :goto_b1

    :cond_af
    const/4 v2, 0x0

    goto :goto_b2

    :cond_b1
    :goto_b1
    const/4 v2, 0x1

    :goto_b2
    if-eqz v2, :cond_e4

    .line 3192
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v16, 0x1

    add-int v15, v15, v16

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    const/16 v8, 0x2b

    if-eq v15, v8, :cond_c8

    if-ne v15, v11, :cond_c5

    goto :goto_c8

    :cond_c5
    move/from16 v16, v18

    goto :goto_d3

    .line 3194
    :cond_c8
    :goto_c8
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v16, 0x2

    add-int v8, v8, v18

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    move v15, v8

    :goto_d3
    if-lt v15, v13, :cond_e4

    if-gt v15, v14, :cond_e4

    .line 3198
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v16, 0x1

    add-int v8, v8, v16

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    move/from16 v16, v11

    goto :goto_d3

    .line 3205
    :cond_e4
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v8, v16

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    if-nez v2, :cond_f6

    if-ge v8, v10, :cond_f6

    int-to-float v2, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    if-eqz v12, :cond_fe

    neg-float v2, v2

    goto :goto_fe

    .line 3214
    :cond_f6
    invoke-virtual {v0, v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 3215
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 3218
    :cond_fe
    :goto_fe
    array-length v3, v6

    const/4 v4, 0x3

    if-lt v7, v3, :cond_10d

    .line 3219
    array-length v3, v6

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [F

    .line 3220
    invoke-static {v6, v1, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v3

    :cond_10d
    add-int/lit8 v3, v7, 0x1

    .line 3223
    aput v2, v6, v7

    const/16 v2, 0x2c

    if-ne v15, v2, :cond_123

    .line 3226
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v2, v2, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v15, v2

    move v2, v4

    goto/16 :goto_1a9

    :cond_123
    const/16 v7, 0x5d

    if-ne v15, v7, :cond_1a7

    .line 3228
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v16, 0x1

    add-int v8, v8, v16

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 3238
    array-length v10, v6

    if-eq v3, v10, :cond_13a

    .line 3239
    new-array v10, v3, [F

    .line 3240
    invoke-static {v6, v1, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v10

    :cond_13a
    if-ne v8, v2, :cond_14a

    .line 3245
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3246
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3247
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3248
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v6

    :cond_14a
    const/16 v1, 0x7d

    if-ne v8, v1, :cond_1a3

    .line 3253
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_165

    .line 3255
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3256
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3257
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_19b

    :cond_165
    if-ne v3, v7, :cond_177

    const/16 v1, 0xf

    .line 3259
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3260
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3261
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_19b

    :cond_177
    if-ne v3, v1, :cond_189

    const/16 v1, 0xd

    .line 3263
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3264
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3265
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_19b

    :cond_189
    const/16 v1, 0x1a

    if-ne v3, v1, :cond_19f

    .line 3267
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v2, v2, v16

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 3268
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3269
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_19b
    const/4 v1, 0x4

    .line 3274
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    :cond_19f
    const/4 v2, -0x1

    .line 3271
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v17

    :cond_1a3
    const/4 v2, -0x1

    .line 3276
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v17

    :cond_1a7
    move/from16 v2, v16

    :goto_1a9
    move v7, v3

    move v3, v15

    move-object/from16 v4, v17

    goto/16 :goto_31

    :cond_1af
    move-object/from16 v17, v4

    const/4 v2, -0x1

    .line 3232
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v17
.end method

.method public final scanFieldFloatArray2([C)[[F
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3284
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3286
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_13

    .line 3287
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3288
    move-object v1, v4

    check-cast v1, [[F

    return-object v4

    :cond_13
    move-object/from16 v2, p1

    .line 3291
    array-length v2, v2

    .line 3292
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v7, 0x5b

    if-eq v5, v7, :cond_29

    .line 3295
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3296
    move-object v1, v4

    check-cast v1, [[F

    return-object v4

    .line 3298
    :cond_29
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x10

    .line 3300
    new-array v6, v5, [[F

    const/4 v8, 0x0

    :goto_37
    const/4 v11, -0x1

    const/4 v13, 0x1

    if-ne v3, v7, :cond_1a3

    .line 3305
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v2, 0x1

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3307
    new-array v3, v5, [F

    move-object/from16 v16, v4

    const/4 v15, 0x0

    .line 3311
    :goto_49
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v17, v4, v14

    add-int/lit8 v7, v17, -0x1

    const/16 v17, 0x1

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_58

    const/16 v18, 0x1

    goto :goto_5a

    :cond_58
    const/16 v18, 0x0

    :goto_5a
    if-eqz v18, :cond_65

    add-int/lit8 v2, v14, 0x1

    add-int/2addr v4, v14

    .line 3314
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v14, v2

    move v2, v4

    :cond_65
    const/16 v4, 0x30

    if-lt v2, v4, :cond_19b

    const/16 v5, 0x39

    if-gt v2, v5, :cond_19b

    add-int/lit8 v2, v2, -0x30

    const/16 v19, 0x3

    .line 3320
    :goto_71
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v14, 0x1

    add-int/2addr v10, v14

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-lt v10, v4, :cond_86

    if-gt v10, v5, :cond_86

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v2, v10

    move/from16 v14, v20

    goto :goto_71

    :cond_86
    const/16 v9, 0x2e

    const/16 v12, 0xa

    if-ne v10, v9, :cond_bf

    .line 3332
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v14, 0x2

    add-int v9, v9, v20

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-lt v9, v4, :cond_b8

    if-gt v9, v5, :cond_b8

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v2, v9

    const/16 v9, 0xa

    .line 3338
    :goto_a1
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v14, 0x1

    add-int/2addr v10, v14

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-lt v10, v4, :cond_c0

    if-gt v10, v5, :cond_c0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v2, v10

    mul-int/lit8 v9, v9, 0xa

    move/from16 v14, v20

    goto :goto_a1

    .line 3349
    :cond_b8
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3350
    move-object/from16 v4, v16

    check-cast v4, [[F

    return-object v16

    :cond_bf
    const/4 v9, 0x1

    :cond_c0
    const/16 v14, 0x65

    if-eq v10, v14, :cond_cb

    const/16 v14, 0x45

    if-ne v10, v14, :cond_c9

    goto :goto_cb

    :cond_c9
    const/4 v14, 0x0

    goto :goto_cc

    :cond_cb
    :goto_cb
    const/4 v14, 0x1

    :goto_cc
    if-eqz v14, :cond_fd

    .line 3356
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v21, v20, 0x1

    add-int v10, v10, v20

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_e2

    if-ne v10, v13, :cond_df

    goto :goto_e2

    :cond_df
    move/from16 v20, v21

    goto :goto_ec

    .line 3358
    :cond_e2
    :goto_e2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v20, 0x2

    add-int v10, v10, v21

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    :goto_ec
    if-lt v10, v4, :cond_fd

    if-gt v10, v5, :cond_fd

    .line 3362
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v20, 0x1

    add-int v10, v10, v20

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    move/from16 v20, v11

    goto :goto_ec

    .line 3369
    :cond_fd
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v4, v20

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, -0x1

    if-nez v14, :cond_10f

    if-ge v4, v12, :cond_10f

    int-to-float v2, v2

    int-to-float v4, v9

    div-float/2addr v2, v4

    if-eqz v18, :cond_117

    neg-float v2, v2

    goto :goto_117

    .line 3377
    :cond_10f
    invoke-virtual {v0, v7, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 3378
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 3381
    :cond_117
    :goto_117
    array-length v4, v3

    if-lt v15, v4, :cond_125

    .line 3382
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [F

    .line 3383
    invoke-static {v3, v1, v4, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :cond_125
    add-int/lit8 v4, v15, 0x1

    .line 3386
    aput v2, v3, v15

    const/16 v2, 0x2c

    if-ne v10, v2, :cond_139

    .line 3389
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v20, 0x1

    add-int v2, v2, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v14, v5

    goto :goto_192

    :cond_139
    const/16 v2, 0x5d

    if-ne v10, v2, :cond_18f

    .line 3391
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v20, 0x1

    add-int v2, v2, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3401
    array-length v7, v3

    if-eq v4, v7, :cond_150

    .line 3402
    new-array v7, v4, [F

    .line 3403
    invoke-static {v3, v1, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    .line 3407
    :cond_150
    array-length v7, v6

    if-lt v8, v7, :cond_15d

    .line 3408
    array-length v6, v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [[F

    .line 3409
    invoke-static {v3, v1, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15d
    add-int/lit8 v4, v8, 0x1

    .line 3412
    aput-object v3, v6, v8

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_172

    .line 3415
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v20, 0x2

    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v2

    move/from16 v2, v20

    goto :goto_186

    :cond_172
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_184

    .line 3417
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v20, 0x2

    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v8, v3

    move v3, v2

    move v2, v8

    move v8, v4

    goto :goto_1a9

    :cond_184
    move v3, v2

    move v2, v5

    :goto_186
    move v8, v4

    move-object/from16 v4, v16

    const/16 v5, 0x10

    const/16 v7, 0x5b

    goto/16 :goto_37

    :cond_18f
    move v2, v10

    move/from16 v14, v20

    :goto_192
    move v15, v4

    const/16 v5, 0x10

    const/16 v7, 0x5b

    const/4 v11, -0x1

    const/4 v13, 0x1

    goto/16 :goto_49

    :cond_19b
    const/4 v1, -0x1

    .line 3395
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3396
    move-object/from16 v4, v16

    check-cast v4, [[F

    return-object v16

    :cond_1a3
    move-object/from16 v16, v4

    const/16 v17, 0x1

    const/16 v19, 0x3

    .line 3426
    :goto_1a9
    array-length v4, v6

    if-eq v8, v4, :cond_1b2

    .line 3427
    new-array v4, v8, [[F

    .line 3428
    invoke-static {v6, v1, v4, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v4

    :cond_1b2
    const/16 v1, 0x2c

    if-ne v3, v1, :cond_1c8

    .line 3433
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3434
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/4 v1, 0x3

    .line 3435
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0x10

    .line 3436
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v6

    :cond_1c8
    const/16 v1, 0x10

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_21f

    .line 3441
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_1e4

    .line 3443
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3444
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3445
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_213

    :cond_1e4
    const/16 v1, 0x5d

    if-ne v3, v1, :cond_1f5

    const/16 v1, 0xf

    .line 3447
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3448
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3449
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_213

    :cond_1f5
    if-ne v3, v4, :cond_204

    const/16 v1, 0xd

    .line 3451
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3452
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3453
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_213

    :cond_204
    const/16 v1, 0x1a

    if-ne v3, v1, :cond_217

    .line 3455
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 3456
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3457
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_213
    const/4 v1, 0x4

    .line 3462
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v6

    :cond_217
    const/4 v1, -0x1

    .line 3459
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3460
    move-object/from16 v4, v16

    check-cast v4, [[F

    return-object v16

    :cond_21f
    const/4 v1, -0x1

    .line 3464
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3465
    move-object/from16 v4, v16

    check-cast v4, [[F

    return-object v16
.end method

.method public scanFieldInt([C)I
    .registers 13

    const/4 v0, 0x0

    .line 1907
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1909
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p1, -0x2

    .line 1910
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1914
    :cond_d
    array-length v1, p1

    .line 1915
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    if-eqz v4, :cond_2b

    .line 1919
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v1

    :cond_2b
    const/16 v1, 0x30

    const/4 v6, -0x1

    if-lt v2, v1, :cond_e1

    const/16 v7, 0x39

    if-gt v2, v7, :cond_e1

    sub-int/2addr v2, v1

    .line 1926
    :goto_35
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x1

    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-lt v8, v1, :cond_49

    if-gt v8, v7, :cond_49

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v2, v8

    move v3, v9

    goto :goto_35

    :cond_49
    const/16 v1, 0x2e

    if-ne v8, v1, :cond_50

    .line 1930
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_50
    if-ltz v2, :cond_57

    .line 1936
    array-length p1, p1

    add-int/lit8 p1, p1, 0xe

    if-le v9, p1, :cond_63

    :cond_57
    const/high16 p1, -0x80000000

    if-ne v2, p1, :cond_de

    const/16 p1, 0x11

    if-ne v9, p1, :cond_de

    if-nez v4, :cond_63

    goto/16 :goto_de

    :cond_63
    const/16 p1, 0x10

    const/16 v1, 0x2c

    if-ne v8, v1, :cond_7d

    .line 1951
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1952
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v0, 0x3

    .line 1953
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1954
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v4, :cond_d7

    neg-int p1, v2

    return p1

    :cond_7d
    const/16 v7, 0x7d

    if-ne v8, v7, :cond_db

    .line 1959
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v3, 0x2

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_9a

    .line 1961
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1962
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1963
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d0

    :cond_9a
    const/16 p1, 0x5d

    if-ne v8, p1, :cond_ae

    const/16 p1, 0xf

    .line 1965
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1966
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1967
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d0

    :cond_ae
    if-ne v8, v7, :cond_c0

    const/16 p1, 0xd

    .line 1969
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1970
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1971
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d0

    :cond_c0
    const/16 p1, 0x1a

    if-ne v8, p1, :cond_d8

    const/16 v0, 0x14

    .line 1973
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1974
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1975
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_d0
    const/4 p1, 0x4

    .line 1980
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v4, :cond_d7

    neg-int p1, v2

    return p1

    :cond_d7
    return v2

    .line 1977
    :cond_d8
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1982
    :cond_db
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1941
    :cond_de
    :goto_de
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 1946
    :cond_e1
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public final scanFieldIntArray([C)[I
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1990
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1992
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_10

    .line 1993
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_10
    move-object/from16 v2, p1

    .line 1997
    array-length v2, v2

    .line 1998
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v7, 0x5b

    if-eq v5, v7, :cond_23

    .line 2001
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 2004
    :cond_23
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v2, 0x2

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v6, 0x10

    .line 2006
    new-array v7, v6, [I

    const/16 v8, 0x2c

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/16 v11, 0x5d

    const/4 v12, 0x1

    if-ne v3, v11, :cond_46

    .line 2010
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v10

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move-object/from16 v16, v4

    const/4 v14, 0x0

    goto/16 :goto_ae

    :cond_46
    const/4 v2, 0x0

    :goto_47
    const/16 v13, 0x2d

    if-ne v3, v13, :cond_57

    .line 2015
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v5, v13

    const/4 v13, 0x1

    goto :goto_58

    :cond_57
    const/4 v13, 0x0

    :goto_58
    const/16 v14, 0x30

    if-lt v3, v14, :cond_11e

    const/16 v15, 0x39

    if-gt v3, v15, :cond_11e

    add-int/lit8 v3, v3, -0x30

    move-object/from16 v16, v4

    .line 2021
    :goto_64
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v14, :cond_79

    if-gt v4, v15, :cond_79

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    move/from16 v5, v17

    goto :goto_64

    .line 2030
    :cond_79
    array-length v14, v7

    if-lt v2, v14, :cond_87

    .line 2031
    array-length v14, v7

    mul-int/lit8 v14, v14, 0x3

    div-int/lit8 v14, v14, 0x2

    new-array v14, v14, [I

    .line 2032
    invoke-static {v7, v1, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v14

    :cond_87
    add-int/lit8 v14, v2, 0x1

    if-eqz v13, :cond_8c

    neg-int v3, v3

    .line 2035
    :cond_8c
    aput v3, v7, v2

    if-ne v4, v8, :cond_9d

    .line 2038
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x2

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v3, v2

    goto/16 :goto_119

    :cond_9d
    if-ne v4, v11, :cond_116

    .line 2040
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v5, 0x2

    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    .line 2051
    :goto_ae
    array-length v4, v7

    if-eq v14, v4, :cond_b7

    .line 2052
    new-array v4, v14, [I

    .line 2053
    invoke-static {v7, v1, v4, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v4

    :cond_b7
    if-ne v3, v8, :cond_c7

    .line 2058
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sub-int/2addr v2, v12

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2059
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 2060
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2061
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v7

    :cond_c7
    const/16 v1, 0x7d

    if-ne v3, v1, :cond_113

    .line 2066
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_df

    .line 2068
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2069
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2070
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_10c

    :cond_df
    if-ne v3, v11, :cond_ee

    const/16 v1, 0xf

    .line 2072
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2073
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2074
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_10c

    :cond_ee
    if-ne v3, v1, :cond_fd

    const/16 v1, 0xd

    .line 2076
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2077
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2078
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_10c

    :cond_fd
    const/16 v1, 0x1a

    if-ne v3, v1, :cond_110

    .line 2080
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x14

    .line 2081
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2082
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_10c
    const/4 v1, 0x4

    .line 2087
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v7

    .line 2084
    :cond_110
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 2089
    :cond_113
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_116
    move v3, v4

    move/from16 v5, v17

    :goto_119
    move v2, v14

    move-object/from16 v4, v16

    goto/16 :goto_47

    :cond_11e
    move-object/from16 v16, v4

    .line 2044
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16
.end method

.method public scanFieldLong([C)J
    .registers 16

    const/4 v0, 0x0

    .line 2332
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2334
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_f

    const/4 p1, -0x2

    .line 2335
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2339
    :cond_f
    array-length v1, p1

    .line 2340
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ne v4, v6, :cond_29

    .line 2344
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move v5, v1

    const/4 v0, 0x1

    :cond_29
    const/16 v1, 0x30

    const/4 v6, -0x1

    if-lt v4, v1, :cond_e3

    const/16 v8, 0x39

    if-gt v4, v8, :cond_e3

    sub-int/2addr v4, v1

    int-to-long v9, v4

    .line 2352
    :goto_34
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v1, :cond_4b

    if-gt v4, v8, :cond_4b

    const-wide/16 v12, 0xa

    mul-long v9, v9, v12

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v9, v4

    move v5, v11

    goto :goto_34

    :cond_4b
    const/16 v1, 0x2e

    if-ne v4, v1, :cond_52

    .line 2356
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2363
    :cond_52
    array-length p1, p1

    sub-int p1, v11, p1

    const/16 v1, 0x15

    if-ge p1, v1, :cond_e0

    cmp-long p1, v9, v2

    if-gez p1, :cond_65

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long p1, v9, v12

    if-nez p1, :cond_e0

    if-eqz v0, :cond_e0

    :cond_65
    const/16 p1, 0x10

    const/16 v1, 0x2c

    if-ne v4, v1, :cond_7f

    .line 2375
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v11

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2376
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 2377
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2378
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v0, :cond_d9

    neg-long v0, v9

    return-wide v0

    :cond_7f
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_dd

    .line 2383
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v5, 0x2

    add-int/2addr v4, v11

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_9c

    .line 2385
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2386
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v12

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2387
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d2

    :cond_9c
    const/16 p1, 0x5d

    if-ne v4, p1, :cond_b0

    const/16 p1, 0xf

    .line 2389
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2390
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v12

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2391
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d2

    :cond_b0
    if-ne v4, v8, :cond_c2

    const/16 p1, 0xd

    .line 2393
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2394
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v12

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2395
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_d2

    :cond_c2
    const/16 p1, 0x1a

    if-ne v4, p1, :cond_da

    const/16 v1, 0x14

    .line 2397
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2398
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2399
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_d2
    const/4 p1, 0x4

    .line 2404
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v0, :cond_d9

    neg-long v0, v9

    return-wide v0

    :cond_d9
    return-wide v9

    .line 2401
    :cond_da
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2406
    :cond_dd
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2366
    :cond_e0
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    .line 2370
    :cond_e3
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    .line 1244
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1246
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 p1, -0x2

    .line 1247
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1248
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1253
    :cond_11
    array-length v1, p1

    .line 1254
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const/4 v4, -0x1

    if-eq v1, v2, :cond_27

    .line 1257
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1259
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1264
    :cond_27
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, p1

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    .line 1265
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    if-eq v1, v4, :cond_103

    .line 1270
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v6, p1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    sub-int v6, v1, v5

    .line 1271
    invoke-virtual {p0, v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5c

    .line 1272
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v4, :cond_77

    :goto_47
    add-int/lit8 v5, v1, -0x1

    const/4 v7, 0x0

    :goto_4a
    if-ltz v5, :cond_57

    .line 1276
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_57

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_4a

    .line 1282
    :cond_57
    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_70

    .line 1288
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v2, p1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    sub-int v2, v1, v2

    .line 1289
    array-length v5, p1

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v0

    .line 1291
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v5

    goto :goto_77

    :cond_70
    add-int/lit8 v1, v1, 0x1

    .line 1285
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    goto :goto_47

    .line 1294
    :cond_77
    :goto_77
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length p1, p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    add-int/lit8 p1, v3, 0x1

    add-int/2addr v0, v3

    .line 1295
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9b

    .line 1300
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1301
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1302
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    :cond_9b
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_fc

    .line 1307
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_ba

    const/16 p1, 0x10

    .line 1309
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1310
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1311
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f1

    :cond_ba
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_ce

    const/16 p1, 0xf

    .line 1313
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1314
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1315
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f1

    :cond_ce
    if-ne p1, v2, :cond_e0

    const/16 p1, 0xd

    .line 1317
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1318
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1319
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_f1

    :cond_e0
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_f5

    const/16 p1, 0x14

    .line 1321
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1322
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1323
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_f1
    const/4 p1, 0x4

    .line 1328
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 1325
    :cond_f5
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1326
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1330
    :cond_fc
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1331
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1267
    :cond_103
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1671
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1673
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/4 p1, -0x2

    .line 1674
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1678
    :cond_e
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p2

    .line 1694
    array-length p1, p1

    .line 1695
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    const/4 v5, -0x1

    if-eq v1, v4, :cond_24

    .line 1698
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1702
    :cond_24
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_2d
    const/16 v3, 0x2c

    const/16 v4, 0x5d

    const/16 v6, 0x22

    if-ne v1, v6, :cond_96

    .line 1707
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, p1

    .line 1708
    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    if-eq v1, v5, :cond_8d

    .line 1713
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, p1

    sub-int v8, v1, v7

    .line 1714
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5c

    .line 1715
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v5, :cond_7a

    :goto_4f
    add-int/lit8 v7, v1, -0x1

    const/4 v9, 0x0

    :goto_52
    if-ltz v7, :cond_5f

    .line 1719
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_5f

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_52

    .line 1725
    :cond_5f
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_73

    .line 1731
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v7, v6, p1

    sub-int v7, v1, v7

    add-int/2addr v6, p1

    .line 1732
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 1734
    invoke-static {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v7

    goto :goto_7a

    :cond_73
    add-int/lit8 v1, v1, 0x1

    .line 1728
    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v1

    goto :goto_4f

    .line 1737
    :cond_7a
    :goto_7a
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v6, p1

    sub-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v6, p1

    .line 1738
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    .line 1740
    invoke-interface {p2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    .line 1710
    :cond_8d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "unclosed str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_96
    const/16 v6, 0x6e

    if-ne v1, v6, :cond_eb

    .line 1741
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, p1

    .line 1742
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x75

    if-ne v6, v7, :cond_eb

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x1

    .line 1743
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_eb

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x2

    .line 1744
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_eb

    add-int/lit8 v1, p1, 0x3

    .line 1746
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x4

    add-int/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1747
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v11, v1

    move v1, p1

    move p1, v11

    :goto_ce
    if-ne p1, v3, :cond_dc

    .line 1756
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move p1, v3

    goto/16 :goto_2d

    :cond_dc
    if-ne p1, v4, :cond_e8

    .line 1761
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    goto :goto_fd

    .line 1765
    :cond_e8
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_eb
    if-ne v1, v4, :cond_16a

    .line 1748
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_16a

    .line 1749
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    move v0, v1

    :goto_fd
    if-ne p1, v3, :cond_10e

    .line 1770
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1771
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1772
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p2

    :cond_10e
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_167

    .line 1777
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v3, :cond_12d

    const/16 p1, 0x10

    .line 1779
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1780
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1781
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_160

    :cond_12d
    if-ne p1, v4, :cond_13f

    const/16 p1, 0xf

    .line 1783
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1784
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1785
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_160

    :cond_13f
    if-ne p1, v1, :cond_151

    const/16 p1, 0xd

    .line 1787
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1788
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1789
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_160

    :cond_151
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_164

    .line 1791
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 p1, 0x14

    .line 1792
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1793
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_160
    const/4 p1, 0x4

    .line 1798
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p2

    .line 1795
    :cond_164
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1800
    :cond_167
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1752
    :cond_16a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "illega str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .registers 4

    .line 5339
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public scanFieldSymbol([C)J
    .registers 12

    const/4 v0, 0x0

    .line 1431
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1433
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_f

    const/4 p1, -0x2

    .line 1434
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1438
    :cond_f
    array-length p1, p1

    .line 1439
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x22

    const/4 v4, -0x1

    if-eq p1, v0, :cond_21

    .line 1442
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_21
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1448
    :goto_26
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_ad

    .line 1450
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v7, 0x2c

    if-ne p1, v7, :cond_4d

    .line 1464
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1465
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 1466
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    :cond_4d
    const/16 v8, 0x7d

    if-ne p1, v8, :cond_aa

    .line 1471
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x3

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v7, :cond_6c

    const/16 p1, 0x10

    .line 1473
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1474
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1475
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_6c
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_80

    const/16 p1, 0xf

    .line 1477
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1478
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1479
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_80
    if-ne p1, v8, :cond_92

    const/16 p1, 0xd

    .line 1481
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1482
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1483
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a3

    :cond_92
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_a7

    const/16 p1, 0x14

    .line 1485
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1486
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1487
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_a3
    const/4 p1, 0x4

    .line 1492
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v5

    .line 1489
    :cond_a7
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    .line 1494
    :cond_aa
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_ad
    int-to-long v8, p1

    xor-long/2addr v5, v8

    const-wide v8, 0x100000001b3L

    mul-long v5, v5, v8

    const/16 v3, 0x5c

    if-ne p1, v3, :cond_bd

    .line 1458
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v1

    :cond_bd
    move v3, v7

    goto/16 :goto_26
.end method

.method public scanFieldUUID([C)Ljava/util/UUID;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 4225
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4227
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-nez v3, :cond_12

    .line 4228
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v5

    .line 4234
    :cond_12
    array-length v3, v1

    .line 4235
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v8, 0x22

    const/4 v10, -0x1

    if-ne v6, v8, :cond_1f2

    .line 4239
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v6, v1

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    .line 4240
    invoke-virtual {v0, v8, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    if-eq v3, v10, :cond_1e9

    .line 4245
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v8, v1

    add-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x1

    sub-int v8, v3, v6

    const/16 v12, 0x24

    const/16 v15, 0x46

    const/16 v2, 0x66

    move-object/from16 v16, v5

    const/16 v5, 0x41

    const/16 v13, 0x39

    const/16 v14, 0x61

    const/16 v19, 0x4

    const/16 v11, 0x30

    if-ne v8, v12, :cond_155

    const/4 v8, 0x0

    const-wide/16 v20, 0x0

    :goto_4c
    const/16 v10, 0x8

    if-ge v8, v10, :cond_75

    add-int v10, v6, v8

    .line 4250
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-lt v10, v11, :cond_5d

    if-gt v10, v13, :cond_5d

    add-int/lit8 v10, v10, -0x30

    goto :goto_6a

    :cond_5d
    if-lt v10, v14, :cond_64

    if-gt v10, v2, :cond_64

    add-int/lit8 v10, v10, -0x57

    goto :goto_6a

    :cond_64
    if-lt v10, v5, :cond_72

    if-gt v10, v15, :cond_72

    add-int/lit8 v10, v10, -0x37

    :goto_6a
    shl-long v20, v20, v19

    int-to-long v9, v10

    or-long v20, v20, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    .line 4259
    :cond_72
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_75
    const/16 v8, 0x9

    :goto_77
    const/16 v9, 0xd

    if-ge v8, v9, :cond_a0

    add-int v9, v6, v8

    .line 4267
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-lt v9, v11, :cond_88

    if-gt v9, v13, :cond_88

    add-int/lit8 v9, v9, -0x30

    goto :goto_95

    :cond_88
    if-lt v9, v14, :cond_8f

    if-gt v9, v2, :cond_8f

    add-int/lit8 v9, v9, -0x57

    goto :goto_95

    :cond_8f
    if-lt v9, v5, :cond_9d

    if-gt v9, v15, :cond_9d

    add-int/lit8 v9, v9, -0x37

    :goto_95
    shl-long v20, v20, v19

    int-to-long v9, v9

    or-long v20, v20, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 4276
    :cond_9d
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_a0
    const/16 v8, 0xe

    move-wide/from16 v9, v20

    :goto_a4
    const/16 v12, 0x12

    if-ge v8, v12, :cond_d2

    add-int v12, v6, v8

    .line 4284
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    if-lt v12, v11, :cond_b5

    if-gt v12, v13, :cond_b5

    add-int/lit8 v12, v12, -0x30

    goto :goto_c2

    :cond_b5
    if-lt v12, v14, :cond_bc

    if-gt v12, v2, :cond_bc

    add-int/lit8 v12, v12, -0x57

    goto :goto_c2

    :cond_bc
    if-lt v12, v5, :cond_cf

    if-gt v12, v15, :cond_cf

    add-int/lit8 v12, v12, -0x37

    :goto_c2
    shl-long v9, v9, v19

    move/from16 v21, v6

    int-to-long v5, v12

    or-long/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v21

    const/16 v5, 0x41

    goto :goto_a4

    .line 4293
    :cond_cf
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_d2
    move/from16 v21, v6

    const/16 v5, 0x13

    const-wide/16 v17, 0x0

    :goto_d8
    const/16 v6, 0x17

    if-ge v5, v6, :cond_107

    add-int v6, v21, v5

    .line 4301
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_e9

    if-gt v6, v13, :cond_e9

    add-int/lit8 v6, v6, -0x30

    goto :goto_f8

    :cond_e9
    if-lt v6, v14, :cond_f0

    if-gt v6, v2, :cond_f0

    add-int/lit8 v6, v6, -0x57

    goto :goto_f8

    :cond_f0
    const/16 v8, 0x41

    if-lt v6, v8, :cond_104

    if-gt v6, v15, :cond_104

    add-int/lit8 v6, v6, -0x37

    :goto_f8
    shl-long v17, v17, v19

    move v12, v3

    int-to-long v2, v6

    or-long v17, v17, v2

    add-int/lit8 v5, v5, 0x1

    move v3, v12

    const/16 v2, 0x66

    goto :goto_d8

    .line 4310
    :cond_104
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_107
    move v12, v3

    const/16 v2, 0x18

    move-wide/from16 v5, v17

    :goto_10c
    const/16 v3, 0x24

    if-ge v2, v3, :cond_13c

    add-int v8, v21, v2

    .line 4318
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-lt v8, v11, :cond_11d

    if-gt v8, v13, :cond_11d

    add-int/lit8 v8, v8, -0x30

    goto :goto_12e

    :cond_11d
    if-lt v8, v14, :cond_126

    const/16 v3, 0x66

    if-gt v8, v3, :cond_126

    add-int/lit8 v8, v8, -0x57

    goto :goto_12e

    :cond_126
    const/16 v3, 0x41

    if-lt v8, v3, :cond_139

    if-gt v8, v15, :cond_139

    add-int/lit8 v8, v8, -0x37

    :goto_12e
    shl-long v5, v5, v19

    int-to-long v14, v8

    or-long/2addr v5, v14

    add-int/lit8 v2, v2, 0x1

    const/16 v14, 0x61

    const/16 v15, 0x46

    goto :goto_10c

    .line 4327
    :cond_139
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 4334
    :cond_13c
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v9, v10, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    .line 4336
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v12, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v7, v1

    add-int/lit8 v1, v7, 0x1

    add-int/2addr v3, v7

    .line 4337
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto/16 :goto_22b

    :cond_155
    move v12, v3

    move/from16 v21, v6

    const/16 v2, 0x20

    if-ne v8, v2, :cond_1e5

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    :goto_15f
    const/16 v6, 0x10

    if-ge v5, v6, :cond_18f

    add-int v6, v21, v5

    .line 4341
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_170

    if-gt v6, v13, :cond_170

    add-int/lit8 v6, v6, -0x30

    goto :goto_185

    :cond_170
    const/16 v10, 0x61

    if-lt v6, v10, :cond_17b

    const/16 v10, 0x66

    if-gt v6, v10, :cond_17b

    add-int/lit8 v6, v6, -0x57

    goto :goto_185

    :cond_17b
    const/16 v10, 0x41

    if-lt v6, v10, :cond_18c

    const/16 v3, 0x46

    if-gt v6, v3, :cond_18c

    add-int/lit8 v6, v6, -0x37

    :goto_185
    shl-long v8, v8, v19

    int-to-long v14, v6

    or-long/2addr v8, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_15f

    .line 4350
    :cond_18c
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_18f
    const/16 v6, 0x10

    const-wide/16 v14, 0x0

    :goto_193
    if-ge v6, v2, :cond_1cd

    add-int v5, v21, v6

    .line 4358
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-lt v5, v11, :cond_1a8

    if-gt v5, v13, :cond_1a8

    add-int/lit8 v5, v5, -0x30

    const/16 v2, 0x41

    const/16 v3, 0x46

    const/16 v10, 0x61

    goto :goto_1c1

    :cond_1a8
    const/16 v10, 0x61

    if-lt v5, v10, :cond_1b7

    const/16 v2, 0x66

    if-gt v5, v2, :cond_1b7

    add-int/lit8 v5, v5, -0x57

    const/16 v2, 0x41

    const/16 v3, 0x46

    goto :goto_1c1

    :cond_1b7
    const/16 v2, 0x41

    if-lt v5, v2, :cond_1ca

    const/16 v3, 0x46

    if-gt v5, v3, :cond_1ca

    add-int/lit8 v5, v5, -0x37

    :goto_1c1
    shl-long v14, v14, v19

    int-to-long v2, v5

    or-long/2addr v14, v2

    add-int/lit8 v6, v6, 0x1

    const/16 v2, 0x20

    goto :goto_193

    .line 4367
    :cond_1ca
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 4375
    :cond_1cd
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v8, v9, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    .line 4377
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v12, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v7, v1

    add-int/lit8 v1, v7, 0x1

    add-int/2addr v3, v7

    .line 4378
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_22b

    :cond_1e5
    const/4 v1, -0x1

    .line 4380
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 4242
    :cond_1e9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f2
    move-object/from16 v16, v5

    const/16 v19, 0x4

    const/16 v1, 0x6e

    if-ne v6, v1, :cond_2a3

    .line 4383
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x2

    add-int/2addr v1, v7

    .line 4384
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v4, 0x75

    if-ne v1, v4, :cond_2a3

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x3

    add-int/2addr v1, v2

    .line 4385
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_2a3

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x4

    add-int/2addr v1, v4

    .line 4386
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2a3

    .line 4388
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x5

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v1, v2

    move-object/from16 v2, v16

    :goto_22b
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_23e

    .line 4395
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4396
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x3

    .line 4397
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_23e
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_29f

    .line 4402
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_25e

    const/16 v6, 0x10

    .line 4404
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4405
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4406
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_25c
    const/4 v1, 0x4

    goto :goto_298

    :cond_25e
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_272

    const/16 v1, 0xf

    .line 4408
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4409
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4410
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_25c

    :cond_272
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_286

    const/16 v1, 0xd

    .line 4412
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4413
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4414
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_25c

    :cond_286
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_29b

    const/16 v3, 0x14

    .line 4416
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4417
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v1, 0x1a

    .line 4418
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_25c

    .line 4423
    :goto_298
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_29b
    const/4 v1, -0x1

    .line 4420
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_29f
    const/4 v1, -0x1

    .line 4425
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_2a3
    const/4 v1, -0x1

    .line 4390
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16
.end method

.method public final scanFloat(C)F
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2683
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2686
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x22

    if-ne v2, v4, :cond_12

    const/4 v5, 0x1

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_1e

    .line 2689
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x1

    :goto_1f
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_25

    const/4 v9, 0x1

    goto :goto_26

    :cond_25
    const/4 v9, 0x0

    :goto_26
    if-eqz v9, :cond_32

    .line 2694
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v10

    :cond_32
    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_125

    const/16 v14, 0x39

    if-gt v2, v14, :cond_125

    sub-int/2addr v2, v13

    int-to-long v1, v2

    const/16 v16, 0x1

    .line 2701
    :goto_3f
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const-wide/16 v18, 0xa

    if-lt v3, v13, :cond_59

    if-gt v3, v14, :cond_59

    mul-long v1, v1, v18

    add-int/lit8 v3, v3, -0x30

    const/16 v20, 0x2

    int-to-long v6, v3

    add-long/2addr v1, v6

    move/from16 v7, v17

    goto :goto_3f

    :cond_59
    const/16 v20, 0x2

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_93

    .line 2713
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x2

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_8e

    if-gt v3, v14, :cond_8e

    mul-long v1, v1, v18

    sub-int/2addr v3, v13

    const/16 v21, 0x0

    int-to-long v10, v3

    add-long/2addr v1, v10

    move-wide/from16 v10, v18

    .line 2718
    :goto_76
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v7, 0x1

    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-lt v3, v13, :cond_97

    if-gt v3, v14, :cond_97

    mul-long v1, v1, v18

    add-int/lit8 v3, v3, -0x30

    int-to-long v6, v3

    add-long/2addr v1, v6

    mul-long v10, v10, v18

    move/from16 v7, v17

    goto :goto_76

    :cond_8e
    const/16 v21, 0x0

    .line 2728
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v21

    :cond_93
    const/16 v21, 0x0

    const-wide/16 v10, 0x1

    :cond_97
    const/16 v6, 0x65

    if-eq v3, v6, :cond_a2

    const/16 v6, 0x45

    if-ne v3, v6, :cond_a0

    goto :goto_a2

    :cond_a0
    const/4 v15, 0x0

    goto :goto_a3

    :cond_a2
    :goto_a2
    const/4 v15, 0x1

    :goto_a3
    if-eqz v15, :cond_d1

    .line 2735
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v7, 0x2b

    if-eq v3, v7, :cond_b9

    if-ne v3, v8, :cond_b6

    goto :goto_b9

    :cond_b6
    :goto_b6
    move/from16 v17, v6

    goto :goto_c2

    .line 2737
    :cond_b9
    :goto_b9
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_c2
    if-lt v3, v13, :cond_d1

    if-gt v3, v14, :cond_d1

    .line 2741
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto :goto_b6

    :cond_d1
    if-eqz v5, :cond_ed

    if-eq v3, v4, :cond_d8

    .line 2766
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v21

    .line 2769
    :cond_d8
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2771
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v5, v4

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    move/from16 v17, v4

    goto :goto_f4

    .line 2774
    :cond_ed
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v6, v17

    sub-int/2addr v4, v6

    add-int/lit8 v5, v4, -0x1

    :goto_f4
    if-nez v15, :cond_102

    const/16 v4, 0x11

    if-ge v5, v4, :cond_102

    long-to-double v1, v1

    long-to-double v4, v10

    div-double/2addr v1, v4

    double-to-float v1, v1

    if-eqz v9, :cond_10a

    neg-float v1, v1

    goto :goto_10a

    .line 2784
    :cond_102
    invoke-virtual {v0, v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2785
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_10a
    :goto_10a
    move/from16 v2, p1

    if-ne v3, v2, :cond_122

    .line 2824
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v17

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2825
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 2826
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 2827
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v1

    .line 2830
    :cond_122
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v1

    :cond_125
    const/16 v16, 0x1

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v1, 0x6e

    if-ne v2, v1, :cond_1af

    .line 2787
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1af

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1af

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1af

    const/4 v1, 0x5

    .line 2788
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v2, v7, 0x3

    .line 2791
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x4

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_16d

    if-ne v2, v4, :cond_16d

    .line 2794
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v1

    add-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v8, v7

    :cond_16d
    :goto_16d
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_183

    .line 2799
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2800
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2801
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v6, 0x10

    .line 2802
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v21

    :cond_183
    const/16 v6, 0x10

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_19b

    .line 2805
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2806
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2807
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2808
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v21

    .line 2810
    :cond_19b
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 2811
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v8, 0x1

    add-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v8, v3

    goto :goto_16d

    .line 2816
    :cond_1ac
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v21

    .line 2819
    :cond_1af
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v21
.end method

.method public final scanHex()V
    .registers 6

    .line 5104
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x78

    const-string v2, "illegal state. "

    if-ne v0, v1, :cond_73

    .line 5107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5108
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_5f

    .line 5112
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5113
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5115
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x1a

    if-ne v0, v1, :cond_24

    .line 5116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5117
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 5122
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_30

    const/16 v4, 0x39

    if-le v0, v4, :cond_38

    :cond_30
    const/16 v4, 0x41

    if-lt v0, v4, :cond_3f

    const/16 v4, 0x46

    if-gt v0, v4, :cond_3f

    .line 5124
    :cond_38
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_24

    :cond_3f
    if-ne v0, v1, :cond_4d

    .line 5127
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5134
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 5131
    :cond_4d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5109
    :cond_5f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5105
    :cond_73
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanIdent()V
    .registers 3

    .line 4787
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 4788
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4791
    :goto_9
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4793
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4794
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_9

    .line 4798
    :cond_1b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 4800
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v0, 0x8

    .line 4801
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4802
    :cond_2c
    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v0, 0x9

    .line 4803
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4804
    :cond_39
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v0, 0x6

    .line 4805
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4806
    :cond_46
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v0, 0x7

    .line 4807
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4808
    :cond_52
    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const/16 v0, 0x17

    .line 4809
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4810
    :cond_60
    const-string v1, "Set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/16 v0, 0x15

    .line 4811
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4812
    :cond_6d
    const-string v1, "TreeSet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const/16 v0, 0x16

    .line 4813
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_7a
    const/16 v0, 0x12

    .line 4815
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void
.end method

.method public scanInt(C)I
    .registers 14

    const/4 v0, 0x0

    .line 2152
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2155
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    const/4 v5, 0x2

    if-eqz v4, :cond_1d

    .line 2159
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/4 v6, 0x2

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x1

    :goto_1e
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_24

    const/4 v7, 0x1

    goto :goto_25

    :cond_24
    const/4 v7, 0x0

    :goto_25
    if-eqz v7, :cond_31

    .line 2164
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v6, v8

    :cond_31
    const/16 v8, 0x10

    const/16 v9, 0x30

    const/4 v10, -0x1

    if-lt v1, v9, :cond_8c

    const/16 v11, 0x39

    if-gt v1, v11, :cond_8c

    sub-int/2addr v1, v9

    .line 2171
    :goto_3d
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v9, :cond_51

    if-gt v2, v11, :cond_51

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    move v6, v3

    goto :goto_3d

    :cond_51
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_58

    .line 2175
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_58
    if-gez v1, :cond_5d

    .line 2182
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    :cond_5d
    :goto_5d
    if-ne v2, p1, :cond_73

    .line 2223
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2224
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 p1, 0x3

    .line 2225
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2226
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v7, :cond_8b

    neg-int p1, v1

    return p1

    .line 2229
    :cond_73
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2230
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    move v2, v0

    goto :goto_5d

    .line 2233
    :cond_85
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-eqz v7, :cond_8b

    neg-int p1, v1

    return p1

    :cond_8b
    return v1

    :cond_8c
    const/16 p1, 0x6e

    if-ne v1, p1, :cond_10a

    .line 2185
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x75

    if-ne p1, v1, :cond_10a

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_10a

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_10a

    const/4 p1, 0x5

    .line 2186
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v1, v6, 0x3

    .line 2189
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x4

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-eqz v4, :cond_cc

    if-ne v1, v3, :cond_cc

    .line 2192
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, p1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v5, v6

    :cond_cc
    :goto_cc
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_e0

    .line 2197
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2198
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2199
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2200
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0

    :cond_e0
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_f6

    .line 2203
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2204
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2205
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 p1, 0xf

    .line 2206
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0

    .line 2208
    :cond_f6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 2209
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v5, v2

    goto :goto_cc

    .line 2214
    :cond_107
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0

    .line 2217
    :cond_10a
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public scanLong(C)J
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2414
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2417
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x22

    if-ne v2, v4, :cond_12

    const/4 v5, 0x1

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    :goto_13
    if-eqz v5, :cond_1e

    .line 2420
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v7, 0x2

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x1

    :goto_1f
    const/16 v8, 0x2d

    if-ne v2, v8, :cond_24

    const/4 v1, 0x1

    :cond_24
    if-eqz v1, :cond_30

    .line 2425
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v7, v8

    :cond_30
    const/16 v8, 0x10

    const/16 v9, 0x30

    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    if-lt v2, v9, :cond_bb

    const/16 v13, 0x39

    if-gt v2, v13, :cond_bb

    sub-int/2addr v2, v9

    int-to-long v2, v2

    .line 2432
    :goto_3f
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v7, 0x1

    add-int/2addr v14, v7

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    if-lt v14, v9, :cond_58

    if-gt v14, v13, :cond_58

    const-wide/16 v16, 0xa

    mul-long v2, v2, v16

    add-int/lit8 v14, v14, -0x30

    const/16 v16, 0x2

    int-to-long v6, v14

    add-long/2addr v2, v6

    move v7, v15

    goto :goto_3f

    :cond_58
    const/16 v16, 0x2

    const/16 v6, 0x2e

    if-ne v14, v6, :cond_61

    .line 2436
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11

    :cond_61
    cmp-long v6, v2, v11

    if-gez v6, :cond_7a

    const-wide/high16 v17, -0x8000000000000000L

    cmp-long v6, v2, v17

    if-nez v6, :cond_6e

    if-eqz v1, :cond_6e

    goto :goto_7a

    .line 2444
    :cond_6e
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 2445
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7a
    :goto_7a
    if-eqz v5, :cond_8e

    if-eq v14, v4, :cond_81

    .line 2485
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11

    .line 2488
    :cond_81
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v15

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move/from16 v4, p1

    move v15, v7

    goto :goto_90

    :cond_8e
    move/from16 v4, p1

    :goto_90
    if-ne v14, v4, :cond_a7

    .line 2494
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v15

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2495
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v4, 0x3

    .line 2496
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2497
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-eqz v1, :cond_a6

    neg-long v1, v2

    return-wide v1

    :cond_a6
    return-wide v2

    .line 2500
    :cond_a7
    invoke-static {v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 2501
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v15, 0x1

    add-int/2addr v5, v15

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move v15, v6

    goto :goto_90

    .line 2505
    :cond_b8
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v2

    :cond_bb
    const/16 v16, 0x2

    const/16 v1, 0x6e

    if-ne v2, v1, :cond_13c

    .line 2447
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_13c

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_13c

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_13c

    const/4 v1, 0x5

    .line 2448
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    add-int/lit8 v2, v7, 0x3

    .line 2451
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x4

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eqz v5, :cond_fe

    if-ne v2, v4, :cond_fe

    .line 2454
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v6, v7

    :cond_fe
    :goto_fe
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_112

    .line 2459
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2460
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2461
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2462
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v11

    :cond_112
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_128

    .line 2465
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2466
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2467
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 v1, 0xf

    .line 2468
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-wide v11

    .line 2470
    :cond_128
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_139

    .line 2471
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v6, v3

    goto :goto_fe

    .line 2476
    :cond_139
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11

    .line 2479
    :cond_13c
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-wide v11
.end method

.method public final scanNullOrNew()V
    .registers 2

    const/4 v0, 0x1

    .line 4675
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew(Z)V

    return-void
.end method

.method public final scanNullOrNew(Z)V
    .registers 15

    .line 4679
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_ac

    .line 4682
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4684
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    const/16 v2, 0xc

    const/16 v3, 0x1a

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x5d

    const/16 v7, 0x7d

    const/16 v8, 0x2c

    const/16 v9, 0x20

    const/16 v10, 0x8

    const/16 v11, 0x9

    if-ne v0, v1, :cond_6c

    .line 4685
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4686
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse null"

    const/16 v12, 0x6c

    if-ne v0, v12, :cond_66

    .line 4689
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4691
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v12, :cond_60

    .line 4694
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4697
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_5d

    if-eq v0, v8, :cond_5d

    if-eq v0, v7, :cond_5d

    if-eq v0, v6, :cond_5d

    if-eq v0, v5, :cond_5d

    if-eq v0, v4, :cond_5d

    if-eq v0, v11, :cond_5d

    if-eq v0, v3, :cond_5d

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_50

    if-nez p1, :cond_5d

    :cond_50
    if-eq v0, v2, :cond_5d

    if-ne v0, v10, :cond_55

    goto :goto_5d

    .line 4711
    :cond_55
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "scan null error"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4709
    :cond_5d
    :goto_5d
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4692
    :cond_60
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4687
    :cond_66
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    const/16 p1, 0x65

    .line 4716
    const-string v1, "error parse new"

    if-ne v0, p1, :cond_a6

    .line 4719
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4721
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x77

    if-ne p1, v0, :cond_a0

    .line 4724
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4726
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq p1, v9, :cond_9d

    if-eq p1, v8, :cond_9d

    if-eq p1, v7, :cond_9d

    if-eq p1, v6, :cond_9d

    if-eq p1, v5, :cond_9d

    if-eq p1, v4, :cond_9d

    if-eq p1, v11, :cond_9d

    if-eq p1, v3, :cond_9d

    if-eq p1, v2, :cond_9d

    if-ne p1, v10, :cond_95

    goto :goto_9d

    .line 4738
    :cond_95
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "scan new error"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4736
    :cond_9d
    :goto_9d
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4722
    :cond_a0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4717
    :cond_a6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4680
    :cond_ac
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "error parse null or new"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanNumber()V
    .registers 11

    .line 5138
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5140
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v1, 0x1

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_13

    .line 5141
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5142
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5146
    :cond_13
    :goto_13
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x39

    const/16 v4, 0x30

    if-lt v0, v4, :cond_26

    if-gt v0, v3, :cond_26

    .line 5147
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5151
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_13

    :cond_26
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_43

    .line 5157
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5158
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5162
    :goto_32
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_41

    if-gt v0, v3, :cond_41

    .line 5163
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5167
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_32

    :cond_41
    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    .line 5171
    :goto_44
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const v6, 0xffff

    if-gt v5, v6, :cond_ca

    .line 5175
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_58

    add-int/2addr v5, v1

    .line 5176
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5177
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_8d

    :cond_58
    const/16 v7, 0x53

    if-ne v6, v7, :cond_63

    add-int/2addr v5, v1

    .line 5179
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5180
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_8d

    :cond_63
    const/16 v7, 0x42

    if-ne v6, v7, :cond_6e

    add-int/2addr v5, v1

    .line 5182
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5183
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_8d

    :cond_6e
    const/16 v7, 0x46

    if-ne v6, v7, :cond_79

    add-int/2addr v5, v1

    .line 5185
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5186
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_c0

    :cond_79
    const/16 v8, 0x44

    if-ne v6, v8, :cond_84

    add-int/2addr v5, v1

    .line 5189
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5190
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_c0

    :cond_84
    const/16 v9, 0x65

    if-eq v6, v9, :cond_8f

    const/16 v9, 0x45

    if-ne v6, v9, :cond_8d

    goto :goto_8f

    :cond_8d
    :goto_8d
    move v1, v0

    goto :goto_c0

    :cond_8f
    :goto_8f
    add-int/2addr v5, v1

    .line 5193
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5194
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5196
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_9d

    if-ne v0, v2, :cond_a5

    .line 5197
    :cond_9d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5198
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 5202
    :cond_a5
    :goto_a5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_b4

    if-gt v0, v3, :cond_b4

    .line 5203
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5207
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_a5

    :cond_b4
    if-eq v0, v8, :cond_b8

    if-ne v0, v7, :cond_c0

    .line 5211
    :cond_b8
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 5212
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    :cond_c0
    :goto_c0
    if-eqz v1, :cond_c6

    const/4 v0, 0x3

    .line 5219
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    :cond_c6
    const/4 v0, 0x2

    .line 5221
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 5172
    :cond_ca
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scanNumber overflow"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanString(C)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    .line 1338
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1341
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v1, v2, :cond_50

    .line 1344
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4d

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_4d

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4d

    .line 1346
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_4a

    .line 1353
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1354
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1355
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1358
    :cond_4a
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    .line 1348
    :cond_4d
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v2

    :cond_50
    const/4 v2, 0x1

    :goto_51
    const/16 v6, 0x22

    if-ne v1, v6, :cond_e4

    .line 1366
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v2

    .line 1367
    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v7

    if-eq v7, v4, :cond_db

    .line 1372
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v8, v2

    sub-int v9, v7, v1

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5c

    .line 1373
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v4, :cond_98

    :goto_6f
    add-int/lit8 v8, v7, -0x1

    const/4 v10, 0x0

    :goto_72
    if-ltz v8, :cond_7f

    .line 1377
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_7f

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_72

    .line 1383
    :cond_7f
    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_91

    sub-int v0, v7, v1

    .line 1390
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v5

    invoke-virtual {p0, v6, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 1392
    invoke-static {v6, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v8

    goto :goto_98

    :cond_91
    add-int/lit8 v7, v7, 0x1

    .line 1386
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v7

    goto :goto_6f

    :cond_98
    :goto_98
    sub-int/2addr v7, v1

    add-int/2addr v7, v5

    add-int/2addr v2, v7

    .line 1396
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    :goto_a4
    if-ne v0, p1, :cond_b8

    .line 1411
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1412
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1413
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/16 p1, 0x10

    .line 1414
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v8

    .line 1416
    :cond_b8
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 1417
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_a4

    :cond_c9
    const/16 p1, 0x5d

    if-ne v0, p1, :cond_da

    .line 1421
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1422
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1423
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    :cond_da
    return-object v8

    .line 1369
    :cond_db
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v0, "unclosed str"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1399
    :cond_e4
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 1400
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v2, v6

    goto/16 :goto_51

    .line 1403
    :cond_f6
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1405
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final scanString()V
    .registers 13

    .line 881
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 882
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 885
    :goto_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x22

    if-ne v1, v3, :cond_19

    .line 1020
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1021
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return-void

    .line 891
    :cond_19
    const-string/jumbo v4, "unclosed string : "

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_3c

    .line 892
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 893
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_7

    .line 896
    :cond_2a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v1, v5, :cond_194

    .line 900
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    const/4 v7, 0x2

    if-nez v1, :cond_68

    .line 901
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 903
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v9, v8

    if-lt v1, v9, :cond_5e

    .line 904
    array-length v9, v8

    mul-int/lit8 v9, v9, 0x2

    if-le v1, v9, :cond_55

    goto :goto_56

    :cond_55
    move v1, v9

    .line 908
    :goto_56
    new-array v1, v1, [C

    .line 909
    array-length v9, v8

    invoke-static {v8, v0, v1, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 913
    :cond_5e
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v6

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v1, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 918
    :cond_68
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    if-eq v1, v3, :cond_18f

    const/16 v3, 0x27

    if-eq v1, v3, :cond_18a

    const/16 v3, 0x46

    if-eq v1, v3, :cond_183

    if-eq v1, v5, :cond_17e

    const/16 v5, 0x62

    if-eq v1, v5, :cond_177

    const/16 v5, 0x66

    if-eq v1, v5, :cond_183

    const/16 v8, 0x6e

    if-eq v1, v8, :cond_170

    const/16 v8, 0x72

    if-eq v1, v8, :cond_169

    const/16 v8, 0x78

    const/16 v9, 0x10

    if-eq v1, v8, :cond_112

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_1b4

    packed-switch v1, :pswitch_data_1ca

    .line 1002
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1003
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a9
    const/16 v1, 0xb

    .line 955
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 994
    :pswitch_b0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 995
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    .line 996
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 997
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v8

    .line 998
    new-instance v10, Ljava/lang/String;

    new-array v2, v2, [C

    aput-char v1, v2, v0

    aput-char v4, v2, v6

    aput-char v5, v2, v7

    aput-char v8, v2, v3

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    .line 999
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_d9
    const/16 v1, 0x9

    .line 949
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_e0
    const/4 v1, 0x7

    .line 943
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_e6
    const/4 v1, 0x6

    .line 940
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_ec
    const/4 v1, 0x5

    .line 937
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 934
    :pswitch_f2
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 931
    :pswitch_f7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 928
    :pswitch_fc
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 925
    :pswitch_101
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 922
    :pswitch_106
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :pswitch_10b
    const/16 v1, 0x2f

    .line 971
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 977
    :cond_112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 978
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    const/16 v4, 0x41

    const/16 v7, 0x39

    const/16 v8, 0x61

    const/16 v10, 0x30

    if-lt v1, v10, :cond_126

    if-le v1, v7, :cond_12e

    :cond_126
    if-lt v1, v8, :cond_12a

    if-le v1, v5, :cond_12e

    :cond_12a
    if-lt v1, v4, :cond_130

    if-gt v1, v3, :cond_130

    :cond_12e
    const/4 v11, 0x1

    goto :goto_131

    :cond_130
    const/4 v11, 0x0

    :goto_131
    if-lt v2, v10, :cond_135

    if-le v2, v7, :cond_13f

    :cond_135
    if-lt v2, v8, :cond_139

    if-le v2, v5, :cond_13f

    :cond_139
    if-lt v2, v4, :cond_13e

    if-gt v2, v3, :cond_13e

    goto :goto_13f

    :cond_13e
    const/4 v6, 0x0

    :cond_13f
    :goto_13f
    if-eqz v11, :cond_152

    if-eqz v6, :cond_152

    .line 990
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0x10

    aget v2, v3, v2

    add-int/2addr v1, v2

    int-to-char v1, v1

    .line 991
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 987
    :cond_152
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid escape character \\x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_169
    const/16 v1, 0xd

    .line 962
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_170
    const/16 v1, 0xa

    .line 952
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_177
    const/16 v1, 0x8

    .line 946
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 974
    :cond_17e
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_183
    const/16 v1, 0xc

    .line 959
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 968
    :cond_18a
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 965
    :cond_18f
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    .line 1008
    :cond_194
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_19f

    .line 1009
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_7

    .line 1013
    :cond_19f
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_1ab

    .line 1014
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_7

    :cond_1ab
    add-int/lit8 v4, v2, 0x1

    .line 1016
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v3, v2

    goto/16 :goto_7

    nop

    :pswitch_data_1b4
    .packed-switch 0x2f
        :pswitch_10b
        :pswitch_106
        :pswitch_101
        :pswitch_fc
        :pswitch_f7
        :pswitch_f2
        :pswitch_ec
        :pswitch_e6
        :pswitch_e0
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x74
        :pswitch_d9
        :pswitch_b0
        :pswitch_a9
    .end packed-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1808
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1811
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    const/4 v6, 0x3

    const/16 v7, 0x6c

    const/4 v8, 0x2

    const/16 v9, 0x6e

    if-ne v4, v9, :cond_4e

    .line 1813
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 1814
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_4e

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v8

    .line 1815
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_4e

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    .line 1816
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_4e

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x4

    .line 1817
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, v2, :cond_4e

    .line 1819
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1820
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1821
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    :cond_4e
    const/16 v10, 0x5b

    const/4 v11, -0x1

    if-eq v4, v10, :cond_56

    .line 1826
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1830
    :cond_56
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/4 v10, 0x2

    :goto_5f
    const/16 v12, 0x5d

    if-ne v4, v9, :cond_92

    .line 1833
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    .line 1834
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v5, :cond_92

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    add-int/lit8 v13, v13, 0x1

    .line 1835
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v7, :cond_92

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v10

    add-int/2addr v13, v8

    .line 1836
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    if-ne v13, v7, :cond_92

    add-int/lit8 v4, v10, 0x3

    .line 1838
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x4

    add-int/2addr v13, v4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/4 v13, 0x0

    .line 1839
    invoke-interface {v1, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_106

    :cond_92
    if-ne v4, v12, :cond_a5

    .line 1840
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v13

    if-nez v13, :cond_a5

    .line 1841
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    goto/16 :goto_127

    :cond_a5
    const/16 v13, 0x22

    if-eq v4, v13, :cond_ac

    .line 1844
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1847
    :cond_ac
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v10

    .line 1848
    invoke-virtual {v0, v13, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v14

    if-eq v14, v11, :cond_13d

    .line 1853
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v15, v10

    sub-int v3, v14, v4

    invoke-virtual {v0, v15, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x5c

    .line 1854
    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v11, :cond_f3

    :goto_c6
    add-int/lit8 v3, v14, -0x1

    const/4 v5, 0x0

    :goto_c9
    if-ltz v3, :cond_d8

    .line 1858
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v15, :cond_d8

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, -0x1

    const/16 v7, 0x6c

    goto :goto_c9

    .line 1864
    :cond_d8
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_ea

    sub-int v3, v14, v4

    .line 1871
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v10

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v4

    .line 1873
    invoke-static {v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_f3

    :cond_ea
    add-int/lit8 v14, v14, 0x1

    .line 1867
    invoke-virtual {v0, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v14

    const/16 v7, 0x6c

    goto :goto_c6

    .line 1876
    :cond_f3
    :goto_f3
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v4, v10

    sub-int/2addr v14, v5

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v10, v14

    add-int/lit8 v5, v10, 0x1

    add-int/2addr v4, v10

    .line 1877
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 1878
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v5

    :goto_106
    const/16 v3, 0x2c

    if-ne v4, v3, :cond_11c

    .line 1882
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v10, 0x1

    add-int/2addr v3, v10

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v10, v4

    const/16 v5, 0x75

    const/16 v7, 0x6c

    move v4, v3

    const/4 v3, 0x0

    goto/16 :goto_5f

    :cond_11c
    if-ne v4, v12, :cond_13a

    .line 1887
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    :goto_127
    if-ne v1, v2, :cond_137

    .line 1896
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1897
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1898
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1901
    :cond_137
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1891
    :cond_13a
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-void

    .line 1850
    :cond_13d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 6

    .line 600
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 602
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e

    .line 603
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 606
    :cond_e
    const-string/jumbo v1, "syntax error"

    const/16 v2, 0x27

    if-ne v0, v2, :cond_28

    .line 607
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 611
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 608
    :cond_22
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_35

    .line 615
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0xd

    .line 616
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_35
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_41

    .line 621
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    const/16 p1, 0x10

    .line 622
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    :cond_41
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_4a

    const/16 p1, 0x14

    .line 627
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-object v3

    .line 631
    :cond_4a
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 635
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 632
    :cond_57
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .registers 16

    .line 645
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v0, 0x0

    .line 646
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 650
    :goto_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, p2, :cond_32

    .line 794
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-nez v1, :cond_24

    .line 800
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1c

    const/4 p2, 0x0

    goto :goto_1d

    :cond_1c
    add-int/2addr p2, v5

    .line 805
    :goto_1d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    .line 807
    :cond_24
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    .line 810
    :goto_2c
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 811
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-object p1

    :cond_32
    const/16 v6, 0x1a

    if-eq v3, v6, :cond_1a3

    const/16 v6, 0x5c

    if-ne v3, v6, :cond_183

    const/4 v3, 0x2

    if-nez v1, :cond_5e

    .line 664
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v8, v7

    if-lt v1, v8, :cond_53

    .line 665
    array-length v8, v7

    mul-int/lit8 v8, v8, 0x2

    if-le v1, v8, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v8

    .line 669
    :goto_4b
    new-array v1, v1, [C

    .line 670
    array-length v8, v7

    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 671
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 676
    :cond_53
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v1, v5

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v1, v7, v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    const/4 v1, 0x1

    .line 679
    :cond_5e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_17b

    const/16 v8, 0x27

    if-eq v7, v8, :cond_173

    const/16 v8, 0x46

    if-eq v7, v8, :cond_169

    if-eq v7, v6, :cond_161

    const/16 v6, 0x62

    if-eq v7, v6, :cond_157

    const/16 v6, 0x66

    if-eq v7, v6, :cond_169

    const/16 v6, 0x6e

    if-eq v7, v6, :cond_14d

    const/16 v6, 0x72

    if-eq v7, v6, :cond_143

    const/16 v6, 0x78

    const/16 v8, 0x10

    if-eq v7, v6, :cond_125

    const/4 v6, 0x3

    packed-switch v7, :pswitch_data_1ac

    packed-switch v7, :pswitch_data_1c2

    .line 774
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 775
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "unclosed.str.lit"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_98
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xb

    add-int/2addr v2, v3

    .line 728
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    .line 765
    :pswitch_a2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    .line 766
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 767
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v10

    .line 768
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v11

    .line 769
    new-instance v12, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char v7, v4, v0

    aput-char v9, v4, v5

    aput-char v10, v4, v3

    aput-char v11, v4, v6

    invoke-direct {v12, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v12, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    int-to-char v3, v3

    .line 771
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_ce
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x9

    add-int/2addr v2, v3

    .line 720
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_d8
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x7

    .line 712
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_e1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x6

    .line 708
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_ea
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    const/4 v3, 0x5

    .line 704
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_f3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 700
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_fb
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 696
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_103
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 692
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_10b
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 688
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_113
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v7

    .line 684
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :pswitch_11b
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x2f

    add-int/2addr v2, v3

    .line 749
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    .line 756
    :cond_125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 757
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 759
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v3, v5, v3

    mul-int/lit8 v3, v3, 0x10

    aget v4, v5, v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    .line 762
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_143
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xd

    add-int/2addr v2, v3

    .line 737
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_14d
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xa

    add-int/2addr v2, v3

    .line 724
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_157
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    add-int/2addr v2, v3

    .line 716
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_161
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v6

    .line 753
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_169
    mul-int/lit8 v2, v2, 0x1f

    const/16 v3, 0xc

    add-int/2addr v2, v3

    .line 733
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_173
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v8

    .line 745
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_17b
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v8

    .line 741
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_183
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    if-nez v1, :cond_18f

    .line 783
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_9

    .line 787
    :cond_18f
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v6, v5

    if-ne v4, v6, :cond_19b

    .line 788
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_9

    :cond_19b
    add-int/lit8 v6, v4, 0x1

    .line 790
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v3, v5, v4

    goto/16 :goto_9

    .line 657
    :cond_1a3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "unclosed.str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_1ac
    .packed-switch 0x2f
        :pswitch_11b
        :pswitch_113
        :pswitch_10b
        :pswitch_103
        :pswitch_fb
        :pswitch_f3
        :pswitch_ea
        :pswitch_e1
        :pswitch_d8
    .end packed-switch

    :pswitch_data_1c2
    .packed-switch 0x74
        :pswitch_ce
        :pswitch_a2
        :pswitch_98
    .end packed-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 7

    .line 825
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    .line 826
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 828
    :cond_10
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 829
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 831
    array-length v3, v0

    if-ge v2, v3, :cond_39

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1c

    goto :goto_39

    .line 833
    :cond_1c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal identifier : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 837
    :cond_39
    :goto_39
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 841
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 842
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 845
    :goto_41
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    .line 847
    array-length v4, v0

    if-ge v3, v4, :cond_a3

    .line 848
    aget-boolean v4, v0, v3

    if-nez v4, :cond_a3

    .line 859
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v0, 0x12

    .line 860
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 863
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8f

    const v0, 0x33c587

    if-ne v2, v0, :cond_8f

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_8f

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_8f

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_8f

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x3

    .line 864
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_8f

    const/4 p1, 0x0

    return-object p1

    :cond_8f
    if-nez p1, :cond_9a

    .line 871
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 874
    :cond_9a
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    .line 855
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_41
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    .line 1582
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1585
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6e

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v1, v2, :cond_50

    .line 1588
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_4d

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_4d

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_4d

    .line 1590
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_4a

    .line 1597
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1598
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1599
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 1602
    :cond_4a
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    .line 1592
    :cond_4d
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_50
    const/16 v2, 0x22

    if-eq v1, v2, :cond_57

    .line 1608
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_57
    const/4 v1, 0x1

    .line 1616
    :goto_58
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v1, 0x1

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_9b

    .line 1620
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v2, v8

    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    .line 1622
    invoke-virtual {p0, v4, v2, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    .line 1623
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    :goto_77
    if-ne v0, p2, :cond_87

    .line 1637
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1638
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1639
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p1

    .line 1642
    :cond_87
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1643
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v1, v2

    goto :goto_77

    .line 1647
    :cond_98
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object p1

    :cond_9b
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v7

    const/16 v1, 0x5c

    if-ne v7, v1, :cond_a5

    .line 1630
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v4

    :cond_a5
    move v1, v8

    goto :goto_58
.end method

.method public final scanTrue()V
    .registers 4

    .line 4636
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    const-string v2, "error parse true"

    if-ne v0, v1, :cond_77

    .line 4639
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4641
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-ne v0, v1, :cond_71

    .line 4644
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4646
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_6b

    .line 4649
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4651
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_65

    .line 4654
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4656
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_61

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_61

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_61

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_61

    const/16 v1, 0xa

    if-eq v0, v1, :cond_61

    const/16 v1, 0xd

    if-eq v0, v1, :cond_61

    const/16 v1, 0x9

    if-eq v0, v1, :cond_61

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_61

    const/16 v1, 0xc

    if-eq v0, v1, :cond_61

    const/16 v1, 0x8

    if-eq v0, v1, :cond_61

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_61

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_59

    goto :goto_61

    .line 4670
    :cond_59
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    :goto_61
    const/4 v0, 0x6

    .line 4668
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void

    .line 4652
    :cond_65
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4647
    :cond_6b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4642
    :cond_71
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4637
    :cond_77
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    .line 1125
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1127
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 p1, -0x2

    return p1

    .line 1131
    :cond_d
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, v1

    add-int/2addr v2, v1

    .line 1133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_15
    const/4 v3, -0x1

    if-ge v0, v1, :cond_28

    .line 1135
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v2, v0

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_25

    return v3

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_28
    add-int/2addr v2, v1

    .line 1140
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_32

    return v3

    :cond_32
    add-int/lit8 p1, v2, 0x1

    .line 1144
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x10

    const/16 v4, 0x2c

    const/4 v5, 0x3

    if-ne v0, v4, :cond_4e

    add-int/lit8 v2, v2, 0x2

    .line 1147
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1148
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1149
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v5

    :cond_4e
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_92

    add-int/lit8 p1, v2, 0x2

    .line 1152
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_67

    .line 1154
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/2addr v2, v5

    .line 1155
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_65
    move p1, v2

    goto :goto_8d

    :cond_67
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_77

    const/16 p1, 0xf

    .line 1157
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/2addr v2, v5

    .line 1158
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_65

    :cond_77
    if-ne v0, v6, :cond_85

    const/16 p1, 0xd

    .line 1160
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    add-int/2addr v2, v5

    .line 1161
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_65

    :cond_85
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_91

    const/16 v0, 0x14

    .line 1163
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    :goto_8d
    const/4 v0, 0x4

    .line 1167
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_92

    :cond_91
    return v3

    .line 1170
    :cond_92
    :goto_92
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1171
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return p1
.end method

.method public scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public scanUUID(C)Ljava/util/UUID;
    .registers 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 4433
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4438
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v5, -0x1

    const/16 v8, 0x22

    if-ne v2, v8, :cond_1c9

    .line 4442
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v2, 0x1

    .line 4443
    invoke-virtual {v0, v8, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v2

    if-eq v2, v5, :cond_1c0

    .line 4448
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, 0x1

    sub-int v9, v2, v8

    const/16 v10, 0x24

    const/16 v13, 0x46

    const/4 v14, -0x2

    const/16 v15, 0x66

    const/16 v1, 0x41

    const/16 v16, 0x0

    const/16 v7, 0x39

    const/16 v11, 0x61

    const/16 v12, 0x30

    if-ne v9, v10, :cond_13a

    const/4 v9, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    :goto_38
    const/16 v6, 0x8

    if-ge v9, v6, :cond_64

    add-int v6, v8, v9

    .line 4453
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-lt v6, v12, :cond_49

    if-gt v6, v7, :cond_49

    add-int/lit8 v6, v6, -0x30

    goto :goto_56

    :cond_49
    if-lt v6, v11, :cond_50

    if-gt v6, v15, :cond_50

    add-int/lit8 v6, v6, -0x57

    goto :goto_56

    :cond_50
    if-lt v6, v1, :cond_61

    if-gt v6, v13, :cond_61

    add-int/lit8 v6, v6, -0x37

    :goto_56
    shl-long v19, v19, v21

    const/16 v22, 0x3

    int-to-long v4, v6

    or-long v19, v19, v4

    add-int/lit8 v9, v9, 0x1

    const/4 v5, -0x1

    goto :goto_38

    .line 4462
    :cond_61
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_64
    const/16 v22, 0x3

    const/16 v4, 0x9

    :goto_68
    const/16 v5, 0xd

    if-ge v4, v5, :cond_91

    add-int v5, v8, v4

    .line 4470
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-lt v5, v12, :cond_79

    if-gt v5, v7, :cond_79

    add-int/lit8 v5, v5, -0x30

    goto :goto_86

    :cond_79
    if-lt v5, v11, :cond_80

    if-gt v5, v15, :cond_80

    add-int/lit8 v5, v5, -0x57

    goto :goto_86

    :cond_80
    if-lt v5, v1, :cond_8e

    if-gt v5, v13, :cond_8e

    add-int/lit8 v5, v5, -0x37

    :goto_86
    shl-long v19, v19, v21

    int-to-long v5, v5

    or-long v19, v19, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 4479
    :cond_8e
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_91
    const/16 v4, 0xe

    move-wide/from16 v5, v19

    :goto_95
    const/16 v9, 0x12

    if-ge v4, v9, :cond_bf

    add-int v9, v8, v4

    .line 4487
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-lt v9, v12, :cond_a6

    if-gt v9, v7, :cond_a6

    add-int/lit8 v9, v9, -0x30

    goto :goto_b3

    :cond_a6
    if-lt v9, v11, :cond_ad

    if-gt v9, v15, :cond_ad

    add-int/lit8 v9, v9, -0x57

    goto :goto_b3

    :cond_ad
    if-lt v9, v1, :cond_bc

    if-gt v9, v13, :cond_bc

    add-int/lit8 v9, v9, -0x37

    :goto_b3
    shl-long v5, v5, v21

    move/from16 v20, v4

    int-to-long v3, v9

    or-long/2addr v5, v3

    add-int/lit8 v4, v20, 0x1

    goto :goto_95

    .line 4496
    :cond_bc
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_bf
    const/16 v3, 0x13

    const-wide/16 v17, 0x0

    :goto_c3
    const/16 v4, 0x17

    if-ge v3, v4, :cond_f2

    add-int v4, v8, v3

    .line 4504
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v12, :cond_d4

    if-gt v4, v7, :cond_d4

    add-int/lit8 v4, v4, -0x30

    goto :goto_e1

    :cond_d4
    if-lt v4, v11, :cond_db

    if-gt v4, v15, :cond_db

    add-int/lit8 v4, v4, -0x57

    goto :goto_e1

    :cond_db
    if-lt v4, v1, :cond_ef

    if-gt v4, v13, :cond_ef

    add-int/lit8 v4, v4, -0x37

    :goto_e1
    shl-long v17, v17, v21

    move/from16 v20, v2

    int-to-long v1, v4

    or-long v17, v17, v1

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v20

    const/16 v1, 0x41

    goto :goto_c3

    .line 4513
    :cond_ef
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_f2
    move/from16 v20, v2

    const/16 v1, 0x18

    move-wide/from16 v2, v17

    :goto_f8
    if-ge v1, v10, :cond_124

    add-int v4, v8, v1

    .line 4521
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-lt v4, v12, :cond_107

    if-gt v4, v7, :cond_107

    add-int/lit8 v4, v4, -0x30

    goto :goto_116

    :cond_107
    if-lt v4, v11, :cond_10e

    if-gt v4, v15, :cond_10e

    add-int/lit8 v4, v4, -0x57

    goto :goto_116

    :cond_10e
    const/16 v9, 0x41

    if-lt v4, v9, :cond_121

    if-gt v4, v13, :cond_121

    add-int/lit8 v4, v4, -0x37

    :goto_116
    shl-long v2, v2, v21

    int-to-long v10, v4

    or-long/2addr v2, v10

    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0x24

    const/16 v11, 0x61

    goto :goto_f8

    .line 4530
    :cond_121
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 4537
    :cond_124
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v5, v6, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 4539
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    sub-int v3, v20, v3

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v4

    .line 4540
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto/16 :goto_200

    :cond_13a
    move/from16 v20, v2

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v1, 0x20

    if-ne v9, v1, :cond_1bc

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_147
    const/16 v5, 0x10

    if-ge v2, v5, :cond_173

    add-int v5, v8, v2

    .line 4544
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-lt v5, v12, :cond_158

    if-gt v5, v7, :cond_158

    add-int/lit8 v5, v5, -0x30

    goto :goto_169

    :cond_158
    const/16 v6, 0x61

    if-lt v5, v6, :cond_161

    if-gt v5, v15, :cond_161

    add-int/lit8 v5, v5, -0x57

    goto :goto_169

    :cond_161
    const/16 v9, 0x41

    if-lt v5, v9, :cond_170

    if-gt v5, v13, :cond_170

    add-int/lit8 v5, v5, -0x37

    :goto_169
    shl-long v3, v3, v21

    int-to-long v5, v5

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_147

    .line 4553
    :cond_170
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_173
    const/16 v5, 0x10

    const-wide/16 v9, 0x0

    :goto_177
    if-ge v5, v1, :cond_1a7

    add-int v2, v8, v5

    .line 4561
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-lt v2, v12, :cond_18a

    if-gt v2, v7, :cond_18a

    add-int/lit8 v2, v2, -0x30

    const/16 v6, 0x61

    :goto_187
    const/16 v11, 0x41

    goto :goto_19b

    :cond_18a
    const/16 v6, 0x61

    if-lt v2, v6, :cond_193

    if-gt v2, v15, :cond_193

    add-int/lit8 v2, v2, -0x57

    goto :goto_187

    :cond_193
    const/16 v11, 0x41

    if-lt v2, v11, :cond_1a4

    if-gt v2, v13, :cond_1a4

    add-int/lit8 v2, v2, -0x37

    :goto_19b
    shl-long v9, v9, v21

    int-to-long v1, v2

    or-long/2addr v9, v1

    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x20

    goto :goto_177

    .line 4570
    :cond_1a4
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 4578
    :cond_1a7
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v3, v4, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    .line 4580
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    sub-int v3, v20, v3

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v4

    .line 4581
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_200

    :cond_1bc
    const/4 v1, -0x1

    .line 4583
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    .line 4445
    :cond_1c0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "unclosed str"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c9
    const/16 v16, 0x0

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v1, 0x6e

    if-ne v2, v1, :cond_27a

    .line 4586
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    .line 4587
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_27a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x2

    .line 4588
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_27a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x3

    .line 4589
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_27a

    .line 4591
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/4 v3, 0x5

    move-object/from16 v1, v16

    :goto_200
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_213

    .line 4598
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4599
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/4 v2, 0x3

    .line 4600
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    :cond_213
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_276

    .line 4605
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_235

    const/16 v5, 0x10

    .line 4607
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4608
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4609
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    :goto_233
    const/4 v2, 0x4

    goto :goto_26f

    :cond_235
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_249

    const/16 v2, 0xf

    .line 4611
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4612
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4613
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_233

    :cond_249
    const/16 v5, 0x7d

    if-ne v2, v5, :cond_25d

    const/16 v2, 0xd

    .line 4615
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4616
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4617
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_233

    :cond_25d
    const/16 v4, 0x1a

    if-ne v2, v4, :cond_272

    const/16 v2, 0x14

    .line 4619
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4620
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/16 v2, 0x1a

    .line 4621
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_233

    .line 4626
    :goto_26f
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v1

    :cond_272
    const/4 v1, -0x1

    .line 4623
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_276
    const/4 v1, -0x1

    .line 4628
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16

    :cond_27a
    const/4 v1, -0x1

    .line 4593
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return-object v16
.end method

.method public seekArrayToItem(I)Z
    .registers 2

    .line 1212
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public seekObjectToField(JZ)I
    .registers 4

    .line 1216
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public seekObjectToField([J)I
    .registers 2

    .line 1220
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public seekObjectToFieldDeepScan(J)I
    .registers 3

    .line 1224
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFeatures(I)V
    .registers 2

    .line 5351
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 2

    .line 1041
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2

    .line 1033
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setToken(I)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return-void
.end method

.method public skipArray()V
    .registers 2

    .line 1236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected skipComment()V
    .registers 5

    .line 568
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 569
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1b

    .line 571
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 572
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xa

    if-ne v0, v2, :cond_18

    .line 573
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    :cond_18
    if-ne v0, v1, :cond_b

    goto :goto_37

    :cond_1b
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_38

    .line 580
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 582
    :cond_22
    :goto_22
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_37

    if-ne v0, v3, :cond_33

    .line 584
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 585
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_22

    .line 586
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    return-void

    .line 592
    :cond_33
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_22

    :cond_37
    :goto_37
    return-void

    .line 595
    :cond_38
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipObject()V
    .registers 2

    .line 1228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skipObject(Z)V
    .registers 2

    .line 1232
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final skipWhitespace()V
    .registers 4

    .line 4932
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_29

    const/16 v2, 0x20

    if-eq v0, v2, :cond_25

    const/16 v2, 0xd

    if-eq v0, v2, :cond_25

    const/16 v2, 0xa

    if-eq v0, v2, :cond_25

    const/16 v2, 0x9

    if-eq v0, v2, :cond_25

    const/16 v2, 0xc

    if-eq v0, v2, :cond_25

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1f

    goto :goto_25

    :cond_1f
    if-ne v0, v1, :cond_29

    .line 4942
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 4939
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    :cond_29
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method protected abstract sub_chars(II)[C
.end method

.method public final token()I
    .registers 2

    .line 403
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .registers 2

    .line 407
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
