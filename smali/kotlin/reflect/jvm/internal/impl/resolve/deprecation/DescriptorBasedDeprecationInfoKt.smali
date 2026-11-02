###### Class kotlin.reflect.jvm.internal.impl.resolve.deprecation.DescriptorBasedDeprecationInfoKt (kotlin.reflect.jvm.internal.impl.resolve.deprecation.DescriptorBasedDeprecationInfoKt)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;
.super Ljava/lang/Object;
.source "DescriptorBasedDeprecationInfo.kt"


# static fields
.field private static final DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt$DEPRECATED_FUNCTION_KEY$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt$DEPRECATED_FUNCTION_KEY$1;-><init>()V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;->DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;

    return-void
.end method

.method public static final getDEPRECATED_FUNCTION_KEY()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfo;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;->DEPRECATED_FUNCTION_KEY:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.deprecation.DescriptorBasedDeprecationInfoKt$DEPRECATED_FUNCTION_KEY$1 (kotlin.reflect.jvm.internal.impl.resolve.deprecation.DescriptorBasedDeprecationInfoKt$DEPRECATED_FUNCTION_KEY$1)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt$DEPRECATED_FUNCTION_KEY$1;
.super Ljava/lang/Object;
.source "DescriptorBasedDeprecationInfo.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfoKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/deprecation/DescriptorBasedDeprecationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
