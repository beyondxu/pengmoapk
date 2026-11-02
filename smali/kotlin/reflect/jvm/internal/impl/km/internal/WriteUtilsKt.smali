###### Class kotlin.reflect.jvm.internal.impl.km.internal.WriteUtilsKt (kotlin.reflect.jvm.internal.impl.km.internal.WriteUtilsKt)
.class public final Lkotlin/reflect/jvm/internal/impl/km/internal/WriteUtilsKt;
.super Ljava/lang/Object;
.source "WriteUtils.kt"


# direct methods
.method public static final getClassNameIndex(Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;Ljava/lang/String;)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/km/ClassNameKt;->isLocalClassName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "substring(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;->getQualifiedClassNameIndex(Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_1f
    const/4 v0, 0x0

    .line 114
    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;->getQualifiedClassNameIndex(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static final writeAnnotation(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Builder;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;->newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/WriteUtilsKt;->getClassNameIndex(Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Builder;->setId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Builder;

    .line 16
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;->getArguments()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;

    .line 17
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument;->newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Builder;

    move-result-object v3

    .line 18
    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;->getStringIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Builder;->setNameId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Builder;

    .line 19
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/WriteUtilsKt;->writeAnnotationArgument(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->build()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;

    move-result-object v1

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Builder;->setValue(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Builder;

    .line 17
    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Builder;->addArgument(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Builder;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Builder;

    goto :goto_25

    .line 14
    :cond_57
    const-string p0, "apply(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final writeAnnotationArgument(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value;->newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    move-result-object v0

    .line 27
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;

    if-eqz v1, :cond_27

    .line 28
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->BYTE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 29
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ByteValue;->getValue()Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 31
    :cond_27
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;

    if-eqz v1, :cond_40

    .line 32
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->CHAR:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 33
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$CharValue;->getValue()Ljava/lang/Character;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 35
    :cond_40
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;

    if-eqz v1, :cond_59

    .line 36
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->SHORT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 37
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ShortValue;->getValue()Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 39
    :cond_59
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;

    if-eqz v1, :cond_72

    .line 40
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->INT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 41
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$IntValue;->getValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 43
    :cond_72
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;

    if-eqz v1, :cond_8a

    .line 44
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->LONG:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 45
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$LongValue;->getValue()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 47
    :cond_8a
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;

    if-eqz v1, :cond_a2

    .line 48
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->FLOAT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 49
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$FloatValue;->getValue()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setFloatValue(F)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 51
    :cond_a2
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;

    if-eqz v1, :cond_ba

    .line 52
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 53
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$DoubleValue;->getValue()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setDoubleValue(D)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 55
    :cond_ba
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;

    if-eqz v1, :cond_d9

    .line 56
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 57
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$BooleanValue;->getValue()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d2

    const-wide/16 p0, 0x1

    goto :goto_d4

    :cond_d2
    const-wide/16 p0, 0x0

    :goto_d4
    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 59
    :cond_d9
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;

    const/4 v2, 0x1

    if-eqz v1, :cond_ff

    .line 60
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->BYTE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 61
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UByteValue;->getValue-w2LRezQ()B

    move-result p0

    int-to-long p0, p0

    const-wide/16 v3, 0xff

    and-long/2addr p0, v3

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 62
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_UNSIGNED:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->toFlags(Ljava/lang/Boolean;)I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 64
    :cond_ff
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;

    if-eqz v1, :cond_125

    .line 65
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->SHORT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 66
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UShortValue;->getValue-Mh2AYeg()S

    move-result p0

    int-to-long p0, p0

    const-wide/32 v3, 0xffff

    and-long/2addr p0, v3

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 67
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_UNSIGNED:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->toFlags(Ljava/lang/Boolean;)I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 69
    :cond_125
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;

    if-eqz v1, :cond_14d

    .line 70
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->INT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 71
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$UIntValue;->getValue-pVg5ArA()I

    move-result p0

    int-to-long p0, p0

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 72
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_UNSIGNED:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->toFlags(Ljava/lang/Boolean;)I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 74
    :cond_14d
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;

    if-eqz v1, :cond_16e

    .line 75
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->LONG:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 76
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ULongValue;->getValue-s-VKNKU()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setIntValue(J)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 77
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_UNSIGNED:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->toFlags(Ljava/lang/Boolean;)I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 79
    :cond_16e
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;

    if-eqz v1, :cond_186

    .line 80
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->STRING:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 81
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$StringValue;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;->getStringIndex(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setStringValue(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 83
    :cond_186
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;

    if-eqz v1, :cond_19e

    .line 84
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 85
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$KClassValue;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/WriteUtilsKt;->getClassNameIndex(Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setClassId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto/16 :goto_220

    .line 87
    :cond_19e
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;

    if-eqz v1, :cond_1bc

    .line 88
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 89
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/WriteUtilsKt;->getClassNameIndex(Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setClassId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 90
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayKClassValue;->getArrayDimensionCount()I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setArrayDimensionCount(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto :goto_220

    .line 92
    :cond_1bc
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;

    if-eqz v1, :cond_1de

    .line 93
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->ENUM:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 95
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;

    .line 94
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->getEnumClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/WriteUtilsKt;->getClassNameIndex(Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setClassId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 95
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$EnumValue;->getEnumEntryName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;->getStringIndex(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setEnumValueId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto :goto_220

    .line 97
    :cond_1de
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;

    if-eqz v1, :cond_1f9

    .line 98
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->ANNOTATION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 99
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$AnnotationValue;->getAnnotation()Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/WriteUtilsKt;->writeAnnotation(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotation;Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Builder;->build()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto :goto_220

    .line 101
    :cond_1f9
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;

    if-eqz v1, :cond_226

    .line 102
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;->ARRAY:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->setType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    .line 103
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument$ArrayValue;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_220

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;

    .line 104
    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/km/internal/WriteUtilsKt;->writeAnnotationArgument(Lkotlin/reflect/jvm/internal/impl/km/KmAnnotationArgument;Lkotlin/reflect/jvm/internal/impl/metadata/serialization/StringTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;->addArrayElement(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation$Argument$Value$Builder;

    goto :goto_20c

    .line 25
    :cond_220
    :goto_220
    const-string p0, "apply(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 26
    :cond_226
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
