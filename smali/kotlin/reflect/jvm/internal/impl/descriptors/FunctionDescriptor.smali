###### Class kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.super Ljava/lang/Object;
.source "FunctionDescriptor.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    }
.end annotation


# virtual methods
.method public abstract getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
.end method

.method public abstract getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.end method

.method public abstract getOverriddenDescriptors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHiddenForResolutionEverywhereBesideSupercalls()Z
.end method

.method public abstract isHiddenToOvercomeSignatureClash()Z
.end method

.method public abstract isInfix()Z
.end method

.method public abstract isInline()Z
.end method

.method public abstract isOperator()Z
.end method

.method public abstract isSuspend()Z
.end method

.method public abstract isTailrec()Z
.end method

.method public abstract newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor.CopyBuilder (kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor$CopyBuilder)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
.super Ljava/lang/Object;
.source "FunctionDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CopyBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract putUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor$UserDataKey<",
            "TV;>;TV;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setAdditionalAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setCopyOverrides(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setDispatchReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setDropOriginalInContainingParts()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setExtensionReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setHiddenForResolutionEverywhereBesideSupercalls()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setHiddenToOvercomeSignatureClash()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setKind(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setModality(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setName(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setOriginal(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setPreserveSourceElement()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setSignatureChange()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setSubstitution(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setTypeParameters(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setValueParameters(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder<",
            "TD;>;"
        }
    .end annotation
.end method
