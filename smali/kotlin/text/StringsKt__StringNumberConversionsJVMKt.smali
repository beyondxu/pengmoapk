###### Class kotlin.text.StringsKt__StringNumberConversionsJVMKt (kotlin.text.StringsKt__StringNumberConversionsJVMKt)
.class Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.super Lkotlin/text/StringsKt__StringBuilderKt;
.source "StringNumberConversionsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,512:1\n267#1,7:513\n267#1,7:520\n267#1,7:527\n267#1,7:534\n1#2:541\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n166#1:513,7\n173#1:520,7\n253#1:527,7\n264#1:534,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\n\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000c\n\u0002\u0008\u000e\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u000f\u0010\u0007\u001a\u00020\u0008*\u0004\u0018\u00010\u0001H\u0087\u0008\u001a\r\u0010\t\u001a\u00020\u0002*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\t\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\n\u001a\u00020\u0005*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\n\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\u0004*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u000b\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\u000c\u001a\u00020\u0006*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u000c\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u000e*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000f\u001a\u00020\u0010*\u00020\u0001H\u0087\u0008\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0012\u001a\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0010*\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0014\u001a\r\u0010\u0015\u001a\u00020\u0016*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0015\u001a\u00020\u0016*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0008\u001a\u000e\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u00020\u0001H\u0007\u001a\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\r\u0010\u0018\u001a\u00020\u0019*\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0018\u001a\u00020\u0019*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0087\u0008\u001a\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u0019*\u00020\u0001H\u0007\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0019*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0007\u001a4\u0010\u001d\u001a\u0004\u0018\u0001H\u001e\"\u0004\u0008\u0000\u0010\u001e2\u0006\u0010\u001f\u001a\u00020\u00012\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u001e0!H\u0082\u0008\u00a2\u0006\u0004\u0008\"\u0010#\u001a\u0015\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u0001H\u0002\u00a2\u0006\u0002\u0008&\u001a \u0010\'\u001a\u0004\u0018\u00010\u00012\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004H\u0083\u0008\u00a2\u0006\u0002\u0008*\u001a\u0012\u0010+\u001a\u00020\u0008*\u00020,H\u0083\u0008\u00a2\u0006\u0002\u0008-\u001a\u0012\u0010.\u001a\u00020\u0008*\u00020,H\u0083\u0008\u00a2\u0006\u0002\u0008/\u001a\u0012\u00100\u001a\u00020\u0004*\u00020,H\u0083\u0008\u00a2\u0006\u0002\u00081\u001a6\u00102\u001a\u00020\u0004*\u00020\u00012\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00080!H\u0083\u0008\u00a2\u0006\u0002\u00084\u001a6\u00105\u001a\u00020\u0004*\u00020\u00012\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00080!H\u0083\u0008\u00a2\u0006\u0002\u00086\u001a>\u00107\u001a\u00020\u0004*\u00020\u00012\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u00082\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00080!H\u0083\u0008\u00a2\u0006\u0002\u00089\u00a8\u0006:"
    }
    d2 = {
        "toString",
        "",
        "",
        "radix",
        "",
        "",
        "",
        "toBoolean",
        "",
        "toByte",
        "toShort",
        "toInt",
        "toLong",
        "toFloat",
        "",
        "toDouble",
        "",
        "toFloatOrNull",
        "(Ljava/lang/String;)Ljava/lang/Float;",
        "toDoubleOrNull",
        "(Ljava/lang/String;)Ljava/lang/Double;",
        "toBigInteger",
        "Ljava/math/BigInteger;",
        "toBigIntegerOrNull",
        "toBigDecimal",
        "Ljava/math/BigDecimal;",
        "mathContext",
        "Ljava/math/MathContext;",
        "toBigDecimalOrNull",
        "screenFloatValue",
        "T",
        "str",
        "parse",
        "Lkotlin/Function1;",
        "screenFloatValue$StringsKt__StringNumberConversionsJVMKt",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "isValidFloat",
        "s",
        "isValidFloat$StringsKt__StringNumberConversionsJVMKt",
        "guessNamedFloatConstant",
        "start",
        "endInclusive",
        "guessNamedFloatConstant$StringsKt__StringNumberConversionsJVMKt",
        "isAsciiDigit",
        "",
        "isAsciiDigit$StringsKt__StringNumberConversionsJVMKt",
        "isHexLetter",
        "isHexLetter$StringsKt__StringNumberConversionsJVMKt",
        "asciiLetterToLowerCaseCode",
        "asciiLetterToLowerCaseCode$StringsKt__StringNumberConversionsJVMKt",
        "advanceWhile",
        "predicate",
        "advanceWhile$StringsKt__StringNumberConversionsJVMKt",
        "backtrackWhile",
        "backtrackWhile$StringsKt__StringNumberConversionsJVMKt",
        "advanceAndValidateMantissa",
        "hexFormat",
        "advanceAndValidateMantissa$StringsKt__StringNumberConversionsJVMKt",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x31
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/text/StringsKt__StringBuilderKt;-><init>()V

    return-void
.end method

.method private static final advanceAndValidateMantissa$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;IIZLkotlin/jvm/functions/Function1;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_1a

    .line 475
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    const/4 v3, -0x1

    if-le v0, p2, :cond_28

    if-eqz p3, :cond_27

    return v3

    :cond_27
    return v0

    .line 485
    :cond_28
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_53

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_33
    if-gt v4, p2, :cond_4c

    .line 490
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4c

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_4c
    if-eq v0, v4, :cond_50

    const/4 p4, 0x1

    goto :goto_51

    :cond_50
    const/4 p4, 0x0

    :goto_51
    move v0, v4

    goto :goto_54

    :cond_53
    const/4 p4, 0x0

    :goto_54
    if-nez p1, :cond_78

    if-nez p4, :cond_78

    if-eqz p3, :cond_5b

    return v3

    :cond_5b
    add-int/lit8 p1, v0, 0x2

    if-ne p2, p1, :cond_62

    .line 502
    const-string p1, "NaN"

    goto :goto_6a

    :cond_62
    add-int/lit8 p1, v0, 0x7

    if-ne p2, p1, :cond_69

    const-string p1, "Infinity"

    goto :goto_6a

    :cond_69
    const/4 p1, 0x0

    :goto_6a
    if-nez p1, :cond_6d

    return v3

    .line 506
    :cond_6d
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0, v1}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    if-ne p0, v0, :cond_77

    add-int/2addr p2, v2

    return p2

    :cond_77
    return v3

    :cond_78
    return v0
.end method

.method private static final advanceWhile$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-gt p1, p2, :cond_19

    .line 453
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p1
.end method

.method private static final asciiLetterToLowerCaseCode$StringsKt__StringNumberConversionsJVMKt(C)I
    .registers 1

    or-int/lit8 p0, p0, 0x20

    return p0
.end method

.method private static final backtrackWhile$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-le p2, p1, :cond_19

    .line 460
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_19
    return p2
.end method

.method private static final guessNamedFloatConstant$StringsKt__StringNumberConversionsJVMKt(II)Ljava/lang/String;
    .registers 3

    add-int/lit8 v0, p0, 0x2

    if-ne p1, v0, :cond_7

    .line 411
    const-string p0, "NaN"

    return-object p0

    :cond_7
    add-int/lit8 p0, p0, 0x7

    if-ne p1, p0, :cond_e

    .line 414
    const-string p0, "Infinity"

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final isAsciiDigit$StringsKt__StringNumberConversionsJVMKt(C)Z
    .registers 2

    add-int/lit8 p0, p0, -0x30

    const v0, 0xffff

    and-int/2addr p0, v0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static final isHexLetter$StringsKt__StringNumberConversionsJVMKt(C)Z
    .registers 2

    or-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0x61

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static final isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    const/16 v5, 0x20

    if-gt v4, v1, :cond_17

    .line 313
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_17

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    if-le v4, v1, :cond_1a

    return v3

    :cond_1a
    :goto_1a
    if-le v1, v4, :cond_25

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_25

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 322
    :cond_25
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_35

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_37

    :cond_35
    add-int/lit8 v4, v4, 0x1

    :cond_37
    if-le v4, v1, :cond_3a

    return v3

    .line 329
    :cond_3a
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2e

    const/16 v10, 0xa

    const/16 v11, 0x30

    const v12, 0xffff

    const/4 v13, -0x1

    if-ne v6, v11, :cond_c2

    add-int/lit8 v6, v4, 0x1

    if-le v6, v1, :cond_4f

    return v2

    .line 335
    :cond_4f
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/2addr v6, v5

    const/16 v14, 0x78

    if-ne v6, v14, :cond_c2

    add-int/lit8 v4, v4, 0x2

    move v6, v4

    :goto_5b
    const/4 v14, 0x6

    if-gt v6, v1, :cond_76

    .line 338
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v16, v15, -0x30

    const/16 v17, 0x1

    and-int v2, v16, v12

    if-ge v2, v10, :cond_6b

    goto :goto_72

    :cond_6b
    or-int/lit8 v2, v15, 0x20

    add-int/lit8 v2, v2, -0x61

    and-int/2addr v2, v12

    if-ge v2, v14, :cond_78

    :goto_72
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto :goto_5b

    :cond_76
    const/16 v17, 0x1

    :cond_78
    if-eq v4, v6, :cond_7c

    const/4 v2, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    if-le v6, v1, :cond_83

    const/4 v4, -0x1

    const/16 v18, 0x20

    goto :goto_ba

    :cond_83
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_b0

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    :goto_8c
    if-gt v4, v1, :cond_a7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v16, v15, -0x30

    const/16 v18, 0x20

    and-int v5, v16, v12

    if-ge v5, v10, :cond_9b

    goto :goto_a2

    :cond_9b
    or-int/lit8 v5, v15, 0x20

    add-int/lit8 v5, v5, -0x61

    and-int/2addr v5, v12

    if-ge v5, v14, :cond_a9

    :goto_a2
    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x20

    goto :goto_8c

    :cond_a7
    const/16 v18, 0x20

    :cond_a9
    if-eq v6, v4, :cond_ad

    const/4 v5, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v5, 0x0

    :goto_ae
    move v6, v4

    goto :goto_b3

    :cond_b0
    const/16 v18, 0x20

    const/4 v5, 0x0

    :goto_b3
    if-nez v2, :cond_b9

    if-nez v5, :cond_b9

    const/4 v4, -0x1

    goto :goto_ba

    :cond_b9
    move v4, v6

    :goto_ba
    if-eq v4, v13, :cond_c1

    if-le v4, v1, :cond_bf

    goto :goto_c1

    :cond_bf
    const/4 v2, 0x1

    goto :goto_c7

    :cond_c1
    :goto_c1
    return v3

    :cond_c2
    const/16 v17, 0x1

    const/16 v18, 0x20

    const/4 v2, 0x0

    :goto_c7
    if-nez v2, :cond_126

    move v5, v4

    :goto_ca
    if-gt v5, v1, :cond_d7

    .line 354
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v11

    and-int/2addr v6, v12

    if-ge v6, v10, :cond_d7

    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    :cond_d7
    if-eq v4, v5, :cond_db

    const/4 v4, 0x1

    goto :goto_dc

    :cond_db
    const/4 v4, 0x0

    :goto_dc
    if-le v5, v1, :cond_e0

    move v4, v5

    goto :goto_120

    :cond_e0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_fa

    add-int/lit8 v5, v5, 0x1

    move v6, v5

    :goto_e9
    if-gt v6, v1, :cond_f6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v11

    and-int/2addr v9, v12

    if-ge v9, v10, :cond_f6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e9

    :cond_f6
    if-eq v5, v6, :cond_fb

    const/4 v5, 0x1

    goto :goto_fc

    :cond_fa
    move v6, v5

    :cond_fb
    const/4 v5, 0x0

    :goto_fc
    if-nez v4, :cond_11f

    if-nez v5, :cond_11f

    add-int/lit8 v4, v6, 0x2

    if-ne v1, v4, :cond_107

    const-string v4, "NaN"

    goto :goto_10f

    :cond_107
    add-int/lit8 v4, v6, 0x7

    if-ne v1, v4, :cond_10e

    const-string v4, "Infinity"

    goto :goto_10f

    :cond_10e
    const/4 v4, 0x0

    :goto_10f
    if-nez v4, :cond_113

    :cond_111
    const/4 v4, -0x1

    goto :goto_120

    :cond_113
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v4, v6, v3}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v4

    if-ne v4, v6, :cond_111

    add-int/lit8 v4, v1, 0x1

    goto :goto_120

    :cond_11f
    move v4, v6

    :goto_120
    if-ne v4, v13, :cond_123

    return v3

    :cond_123
    if-le v4, v1, :cond_126

    return v17

    :cond_126
    add-int/lit8 v5, v4, 0x1

    .line 366
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/lit8 v6, v6, 0x20

    if-eqz v2, :cond_133

    const/16 v9, 0x70

    goto :goto_135

    :cond_133
    const/16 v9, 0x65

    :goto_135
    const/16 v13, 0x64

    const/16 v14, 0x66

    if-eq v6, v9, :cond_145

    if-nez v2, :cond_144

    if-eq v6, v14, :cond_141

    if-ne v6, v13, :cond_144

    :cond_141
    if-le v5, v1, :cond_144

    return v17

    :cond_144
    return v3

    :cond_145
    if-le v5, v1, :cond_148

    return v3

    .line 378
    :cond_148
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_154

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_159

    :cond_154
    add-int/lit8 v5, v4, 0x2

    if-le v5, v1, :cond_159

    return v3

    :cond_159
    :goto_159
    if-gt v5, v1, :cond_166

    .line 384
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v11

    and-int/2addr v2, v12

    if-ge v2, v10, :cond_166

    add-int/lit8 v5, v5, 0x1

    goto :goto_159

    :cond_166
    if-le v5, v1, :cond_169

    return v17

    :cond_169
    if-ne v5, v1, :cond_178

    .line 391
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/lit8 v0, v0, 0x20

    if-eq v0, v14, :cond_177

    if-ne v0, v13, :cond_176

    goto :goto_177

    :cond_176
    return v3

    :cond_177
    :goto_177
    return v17

    :cond_178
    return v3
.end method

.method private static final screenFloatValue$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 268
    :try_start_1
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 269
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    :cond_c
    return-object v0
.end method

.method private static final toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toBigDecimal(Ljava/lang/String;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mathContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public static final toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 528
    :try_start_6
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 529
    new-instance v1, Ljava/math/BigDecimal;

    .line 253
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    :cond_12
    return-object v0
.end method

.method public static final toBigDecimalOrNull(Ljava/lang/String;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mathContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 535
    :try_start_b
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 536
    new-instance v1, Ljava/math/BigDecimal;

    .line 264
    invoke-direct {v1, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    :cond_17
    return-object v0
.end method

.method private static final toBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toBigInteger(Ljava/lang/String;I)Ljava/math/BigInteger;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final toBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 199
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->toBigIntegerOrNull(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static final toBigIntegerOrNull(Ljava/lang/String;I)Ljava/math/BigInteger;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2c

    .line 215
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    :goto_1c
    if-ge v2, v0, :cond_37

    .line 217
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v3

    if-gez v3, :cond_29

    return-object v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 213
    :cond_2c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lkotlin/text/CharsKt;->digitOf(CI)I

    move-result v0

    if-gez v0, :cond_37

    return-object v1

    .line 216
    :cond_37
    new-instance v0, Ljava/math/BigInteger;

    .line 222
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_41
    return-object v1
.end method

.method private static final toBoolean(Ljava/lang/String;)Z
    .registers 1

    .line 55
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final toByte(Ljava/lang/String;)B
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method private static final toByte(Ljava/lang/String;I)B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result p0

    return p0
.end method

.method private static final toDouble(Ljava/lang/String;)D
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 521
    :try_start_6
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 173
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    :cond_15
    return-object v0
.end method

.method private static final toFloat(Ljava/lang/String;)F
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static final toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 514
    :try_start_6
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->isValidFloat$StringsKt__StringNumberConversionsJVMKt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 166
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    :cond_15
    return-object v0
.end method

.method private static final toInt(Ljava/lang/String;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final toInt(Ljava/lang/String;I)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static final toLong(Ljava/lang/String;)J
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final toLong(Ljava/lang/String;I)J
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final toShort(Ljava/lang/String;)S
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method private static final toShort(Ljava/lang/String;I)S
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result p0

    return p0
.end method

.method private static final toString(BI)Ljava/lang/String;
    .registers 2

    .line 19
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final toString(II)Ljava/lang/String;
    .registers 2

    .line 37
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final toString(JI)Ljava/lang/String;
    .registers 3

    .line 46
    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final toString(SI)Ljava/lang/String;
    .registers 2

    .line 28
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
