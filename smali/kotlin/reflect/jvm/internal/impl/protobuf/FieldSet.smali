###### Class kotlin.reflect.jvm.internal.impl.protobuf.FieldSet (kotlin.reflect.jvm.internal.impl.protobuf.FieldSet)
.class final Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;


# instance fields
.field private final fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasLazyField:Z

.field private isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 102
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->DEFAULT_INSTANCE:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->hasLazyField:Z

    const/16 v0, 0x10

    .line 77
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->newFieldMap(I)Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->hasLazyField:Z

    .line 85
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->newFieldMap(I)Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    .line 86
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method private cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 491
    instance-of v0, p1, [B

    if-eqz v0, :cond_11

    .line 492
    check-cast p1, [B

    check-cast p1, [B

    .line 493
    array-length v0, p1

    new-array v0, v0, [B

    .line 494
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_11
    return-object p1
.end method

.method private static computeElementSize(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .registers 4

    .line 814
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    .line 815
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_a

    mul-int/lit8 p1, p1, 0x2

    .line 820
    :cond_a
    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeElementSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static computeElementSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .registers 3

    .line 835
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_f0

    .line 876
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 868
    :pswitch_13
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_22

    .line 869
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 872
    :cond_22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 861
    :pswitch_2d
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    if-eqz p0, :cond_38

    .line 862
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;)I

    move-result p0

    return p0

    .line 864
    :cond_38
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 847
    :pswitch_3f
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 858
    :pswitch_46
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 857
    :pswitch_51
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 856
    :pswitch_5c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 855
    :pswitch_67
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 854
    :pswitch_72
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 849
    :pswitch_7d
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    if-eqz p0, :cond_88

    .line 850
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 852
    :cond_88
    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result p0

    return p0

    .line 846
    :pswitch_91
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 845
    :pswitch_98
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result p0

    return p0

    .line 844
    :pswitch_a3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 843
    :pswitch_ae
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 842
    :pswitch_b9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 841
    :pswitch_c4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 840
    :pswitch_cf
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 839
    :pswitch_da
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result p0

    return p0

    .line 838
    :pswitch_e5
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result p0

    return p0

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_da
        :pswitch_cf
        :pswitch_c4
        :pswitch_b9
        :pswitch_ae
        :pswitch_a3
        :pswitch_98
        :pswitch_91
        :pswitch_7d
        :pswitch_72
        :pswitch_67
        :pswitch_5c
        :pswitch_51
        :pswitch_46
        :pswitch_3f
        :pswitch_2d
        :pswitch_13
    .end packed-switch
.end method

.method public static computeFieldSize(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 885
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 886
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 887
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 888
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    .line 890
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 891
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeElementSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    .line 893
    :cond_2b
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 898
    :cond_36
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 899
    invoke-static {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeElementSize(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3c

    :cond_4c
    return v2

    .line 904
    :cond_4d
    invoke-static {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeElementSize(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static emptySet()Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 99
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->DEFAULT_INSTANCE:Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    return-object v0
.end method

.method static getWireFormatForFieldType(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Z)I
    .registers 2

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    return p0

    .line 472
    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->getWireType()I

    move-result p0

    return p0
.end method

.method private isInitialized(Ljava/util/Map$Entry;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 435
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    .line 436
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_51

    .line 437
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 439
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    .line 440
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 445
    :cond_33
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 446
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    if-eqz v0, :cond_44

    .line 447
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_51

    return v1

    .line 450
    :cond_44
    instance-of p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    if-eqz p1, :cond_49

    return v3

    .line 453
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    return v3
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 504
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    .line 505
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 506
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    if-eqz v1, :cond_14

    .line 507
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;->getValue()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object p1

    .line 510
    :cond_14
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 511
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->getField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 515
    :cond_25
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 516
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 518
    :cond_40
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 519
    :cond_46
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_74

    .line 520
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->getField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 522
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 525
    :cond_5e
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;->toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;->build()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object p1

    .line 529
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 532
    :cond_74
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static newFieldSet()Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_b2

    .line 590
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 586
    :pswitch_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 581
    :pswitch_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 578
    :pswitch_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :pswitch_2b
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 574
    :pswitch_34
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readSInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 573
    :pswitch_3d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 572
    :pswitch_46
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readSFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 571
    :pswitch_4f
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 570
    :pswitch_58
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readBytes()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :pswitch_5d
    if-eqz p2, :cond_64

    .line 566
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 568
    :cond_64
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 564
    :pswitch_69
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readBool()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 563
    :pswitch_72
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 562
    :pswitch_7b
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 561
    :pswitch_84
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 560
    :pswitch_8d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 559
    :pswitch_96
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 558
    :pswitch_9f
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 557
    :pswitch_a8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_9f
        :pswitch_96
        :pswitch_8d
        :pswitch_84
        :pswitch_7b
        :pswitch_72
        :pswitch_69
        :pswitch_5d
        :pswitch_58
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method

.method private static verifyType(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 4

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_50

    goto :goto_44

    .line 390
    :pswitch_15
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    if-nez p0, :cond_31

    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    if-eqz p0, :cond_30

    goto :goto_31

    .line 385
    :pswitch_1e
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_31

    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_30

    goto :goto_31

    .line 381
    :pswitch_27
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    if-nez p0, :cond_31

    instance-of p0, p1, [B

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :cond_31
    :goto_31
    move v1, v0

    goto :goto_44

    .line 379
    :pswitch_33
    instance-of v1, p1, Ljava/lang/String;

    goto :goto_44

    .line 378
    :pswitch_36
    instance-of v1, p1, Ljava/lang/Boolean;

    goto :goto_44

    .line 377
    :pswitch_39
    instance-of v1, p1, Ljava/lang/Double;

    goto :goto_44

    .line 376
    :pswitch_3c
    instance-of v1, p1, Ljava/lang/Float;

    goto :goto_44

    .line 375
    :pswitch_3f
    instance-of v1, p1, Ljava/lang/Long;

    goto :goto_44

    .line 374
    :pswitch_42
    instance-of v1, p1, Ljava/lang/Integer;

    :goto_44
    if-eqz v1, :cond_47

    return-void

    .line 403
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_27
        :pswitch_1e
        :pswitch_15
    .end packed-switch
.end method

.method private static writeElement(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_a

    .line 658
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeGroup(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 660
    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->getWireFormatForFieldType(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeTag(II)V

    .line 661
    invoke-static {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElementNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    return-void
.end method

.method private static writeElementNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_ca

    return-void

    .line 705
    :pswitch_c
    instance-of p1, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;

    if-eqz p1, :cond_1a

    .line 706
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    return-void

    .line 708
    :cond_1a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    return-void

    .line 690
    :pswitch_24
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessageNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    return-void

    .line 689
    :pswitch_2a
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeGroupNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    return-void

    .line 702
    :pswitch_30
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    return-void

    .line 701
    :pswitch_3a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    return-void

    .line 700
    :pswitch_44
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    return-void

    .line 699
    :pswitch_4e
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    return-void

    .line 698
    :pswitch_58
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return-void

    .line 692
    :pswitch_62
    instance-of p1, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    if-eqz p1, :cond_6c

    .line 693
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeBytesNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void

    .line 695
    :cond_6c
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    return-void

    .line 688
    :pswitch_74
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    return-void

    .line 687
    :pswitch_7a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    return-void

    .line 686
    :pswitch_84
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return-void

    .line 685
    :pswitch_8e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return-void

    .line 684
    :pswitch_98
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    return-void

    .line 683
    :pswitch_a2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return-void

    .line 682
    :pswitch_ac
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    return-void

    .line 681
    :pswitch_b6
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    return-void

    .line 680
    :pswitch_c0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    return-void

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_b6
        :pswitch_ac
        :pswitch_a2
        :pswitch_98
        :pswitch_8e
        :pswitch_84
        :pswitch_7a
        :pswitch_74
        :pswitch_62
        :pswitch_58
        :pswitch_4e
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_c
    .end packed-switch
.end method

.method public static writeField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 720
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 721
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 722
    check-cast p1, Ljava/util/List;

    .line 723
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x2

    .line 724
    invoke-virtual {p2, v1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeTag(II)V

    .line 727
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 728
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeElementSizeNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1f

    .line 730
    :cond_2f
    invoke-virtual {p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 732
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 733
    invoke-static {p2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElementNoTag(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_36

    .line 736
    :cond_44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 737
    invoke-static {p2, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElement(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_48

    :cond_56
    return-void

    .line 741
    :cond_57
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    if-eqz p0, :cond_65

    .line 742
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;->getValue()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElement(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void

    .line 744
    :cond_65
    invoke-static {p2, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->writeElement(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 340
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 345
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->verifyType(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->getField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 353
    :cond_1e
    check-cast v0, Ljava/util/List;

    .line 356
    :goto_20
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 341
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->clone()Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 134
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->newFieldSet()Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    :goto_5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 136
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    .line 138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->setField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 141
    :cond_23
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->setField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2d

    .line 145
    :cond_47
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->hasLazyField:Z

    return-object v0
.end method

.method public getField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 225
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    if-eqz v0, :cond_10

    .line 226
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;->getValue()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method public getRepeatedField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 297
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 302
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->getField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 307
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 305
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 298
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 283
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->getField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return p1

    .line 287
    :cond_e
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 279
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSerializedSize()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 755
    :goto_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 756
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 758
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeFieldSize(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 761
    :cond_22
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 762
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->computeFieldSize(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2c

    :cond_48
    return v1
.end method

.method public hasField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 214
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1

    .line 210
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInitialized()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 418
    :goto_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 419
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 424
    :cond_1a
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 425
    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 197
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_14

    .line 198
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 201
    :cond_14
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .registers 2

    .line 107
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_5

    return-void

    .line 110
    :cond_5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->makeImmutable()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->isImmutable:Z

    return-void
.end method

.method public mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 481
    :goto_1
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 482
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    :cond_15
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 486
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public setField(Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 239
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 249
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->verifyType(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_18

    :cond_2a
    move-object p2, v0

    goto :goto_3b

    .line 240
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_34
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->verifyType(Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 256
    :goto_3b
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyField;

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->hasLazyField:Z

    .line 259
    :cond_42
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;->fields:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.protobuf.FieldSet$1)
.class synthetic Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

.field static final synthetic $SwitchMap$com$google$protobuf$WireFormat$JavaType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 556
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->values()[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->INT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->UINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->FIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->FIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    const/16 v8, 0x9

    :try_start_62
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->BYTES:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->UINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->SFIXED32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->SFIXED64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->SINT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->SINT64:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    .line 373
    :catch_d8
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->values()[Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    :try_start_e1
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->INT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_e9
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->LONG:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f3} :catch_f3

    :catch_f3
    :try_start_f3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_fd} :catch_fd

    :catch_fd
    :try_start_fd
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_107} :catch_107

    :catch_107
    :try_start_107
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_111} :catch_111

    :catch_111
    :try_start_111
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_11b} :catch_11b

    :catch_11b
    :try_start_11b
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->BYTE_STRING:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_125} :catch_125

    :catch_125
    :try_start_125
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_12f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_125 .. :try_end_12f} :catch_12f

    :catch_12f
    :try_start_12f
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_139
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12f .. :try_end_139} :catch_139

    :catch_139
    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.FieldDescriptorLite (kotlin.reflect.jvm.internal.impl.protobuf.FieldSet$FieldDescriptorLite)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite;
.super Ljava/lang/Object;
.source "FieldSet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FieldDescriptorLite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getLiteJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
.end method

.method public abstract getLiteType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
.end method

.method public abstract getNumber()I
.end method

.method public abstract internalMergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
.end method

.method public abstract isPacked()Z
.end method

.method public abstract isRepeated()Z
.end method
