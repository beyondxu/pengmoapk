###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags)
.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;
.super Ljava/lang/Object;
.source "ProtoEnumFlags.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final classKind(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_c

    .line 49
    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_c
    packed-switch p1, :pswitch_data_24

    .line 56
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object p1

    .line 55
    :pswitch_12
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object p1

    .line 54
    :pswitch_15
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object p1

    .line 53
    :pswitch_18
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object p1

    .line 52
    :pswitch_1b
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object p1

    .line 51
    :pswitch_1e
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object p1

    .line 50
    :pswitch_21
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    return-object p1

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_c

    .line 14
    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_c
    const/4 v0, 0x1

    if-eq p1, v0, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    .line 19
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p1

    .line 18
    :cond_1b
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p1

    .line 17
    :cond_1e
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p1

    .line 16
    :cond_21
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p1

    .line 15
    :cond_24
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p1
.end method

.method public final variance(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .registers 5

    const-string v0, "projection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-eq v0, v1, :cond_33

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 83
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_33
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p1

    .line 80
    :cond_36
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p1

    .line 79
    :cond_39
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p1
.end method

.method public final variance(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .registers 3

    const-string v0, "variance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_19

    .line 75
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p1

    .line 72
    :cond_19
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 74
    :cond_1f
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p1

    .line 73
    :cond_22
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags.WhenMappings (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags$WhenMappings)
.class public final synthetic Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;
.super Ljava/lang/Object;
.source "ProtoEnumFlags.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I

.field public static final synthetic $EnumSwitchMapping$7:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    const/4 v4, 0x4

    :try_start_23
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->values()[Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_34
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4c
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5d
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->INTERNAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_65} :catch_65

    :catch_65
    :try_start_65
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6d
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_75} :catch_75

    :catch_75
    :try_start_75
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7d} :catch_7d

    :catch_7d
    const/4 v5, 0x5

    :try_start_7e
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_86} :catch_86

    :catch_86
    const/4 v6, 0x6

    :try_start_87
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->LOCAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_8f} :catch_8f

    :catch_8f
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_98
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a0} :catch_a0

    :catch_a0
    :try_start_a0
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b0
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b8} :catch_b8

    :catch_b8
    :try_start_b8
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ordinal()I

    move-result v7

    aput v5, v0, v7
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c8} :catch_c8

    :catch_c8
    :try_start_c8
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v0, v7
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d1} :catch_d1

    :catch_d1
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->values()[Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_da
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e2} :catch_e2

    :catch_e2
    :try_start_e2
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ordinal()I

    move-result v7

    aput v2, v0, v7
    :try_end_ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ea} :catch_ea

    :catch_ea
    :try_start_ea
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ordinal()I

    move-result v7

    aput v3, v0, v7
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ea .. :try_end_f2} :catch_f2

    :catch_f2
    :try_start_f2
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ordinal()I

    move-result v7

    aput v4, v0, v7
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fa} :catch_fa

    :catch_fa
    :try_start_fa
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ordinal()I

    move-result v7

    aput v5, v0, v7
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa .. :try_end_102} :catch_102

    :catch_102
    :try_start_102
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->OBJECT:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ordinal()I

    move-result v5

    aput v6, v0, v5
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_10a} :catch_10a

    :catch_10a
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_113
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->IN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11b} :catch_11b

    :catch_11b
    :try_start_11b
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->OUT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_123} :catch_123

    :catch_123
    :try_start_123
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->INV:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_12b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_12b} :catch_12b

    :catch_12b
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_134
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->IN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_13c} :catch_13c

    :catch_13c
    :try_start_13c
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->OUT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_144} :catch_144

    :catch_144
    :try_start_144
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->INV:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_14c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_14c} :catch_14c

    :catch_14c
    :try_start_14c
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->STAR:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_154} :catch_154

    :catch_154
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->values()[Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_15d
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15d .. :try_end_165} :catch_165

    :catch_165
    :try_start_165
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16d} :catch_16d

    :catch_16d
    :try_start_16d
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_175
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_175} :catch_175

    :catch_175
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags$WhenMappings;->$EnumSwitchMapping$7:[I

    return-void
.end method
