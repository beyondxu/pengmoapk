###### Class kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.super Ljava/lang/Object;
.source "ValueParameterDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract copy(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;I)Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.end method

.method public abstract declaresDefaultValue()Z
.end method

.method public abstract getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.end method

.method public abstract getOverriddenDescriptors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVarargElementType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method

.method public abstract isCrossinline()Z
.end method

.method public abstract isNoinline()Z
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor.DefaultImpls (kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor$DefaultImpls;
.super Ljava/lang/Object;
.source "ValueParameterDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isLateInit(Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
