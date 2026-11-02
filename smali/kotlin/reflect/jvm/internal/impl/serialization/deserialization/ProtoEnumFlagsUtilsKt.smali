###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt)
.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt;
.super Ljava/lang/Object;
.source "ProtoEnumFlagsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_9

    const/4 p0, -0x1

    goto :goto_11

    .line 31
    :cond_9
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_11
    const-string p1, "PRIVATE"

    packed-switch p0, :pswitch_data_4a

    .line 38
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 37
    :pswitch_1c
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->LOCAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    const-string p1, "LOCAL"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 36
    :pswitch_24
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    const-string p1, "PUBLIC"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 35
    :pswitch_2c
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    const-string p1, "PROTECTED"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 34
    :pswitch_34
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    const-string p1, "PRIVATE_TO_THIS"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 33
    :pswitch_3c
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 32
    :pswitch_42
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INTERNAL:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;

    const-string p1, "INTERNAL"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3c
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public static final memberKind(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_9

    const/4 p0, -0x1

    goto :goto_11

    .line 14
    :cond_9
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_11
    const/4 p1, 0x1

    if-eq p0, p1, :cond_29

    const/4 p1, 0x2

    if-eq p0, p1, :cond_26

    const/4 p1, 0x3

    if-eq p0, p1, :cond_23

    const/4 p1, 0x4

    if-eq p0, p1, :cond_20

    .line 19
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0

    .line 18
    :cond_20
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0

    .line 17
    :cond_23
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0

    .line 16
    :cond_26
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0

    .line 15
    :cond_29
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0
.end method

###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt.WhenMappings (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlagsUtilsKt$WhenMappings)
.class public final synthetic Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;
.super Ljava/lang/Object;
.source "ProtoEnumFlagsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    const/4 v4, 0x4

    :try_start_23
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->values()[Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_34
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4c
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

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
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6d
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_75} :catch_75

    :catch_75
    :try_start_75
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7d
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->LOCAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_8f} :catch_8f

    :catch_8f
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlagsUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
