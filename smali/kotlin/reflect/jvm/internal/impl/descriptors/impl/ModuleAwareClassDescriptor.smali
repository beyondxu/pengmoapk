###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor)
.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;
.super Ljava/lang/Object;
.source "ModuleAwareClassDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .registers 2

    .line 20
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 2

    .line 20
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor.Companion (kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor$Companion;
.super Ljava/lang/Object;
.source "ModuleAwareClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRefinedMemberScopeIfPossible$descriptors(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeSubstitution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_22

    invoke-virtual {v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p3

    if-nez p3, :cond_21

    goto :goto_22

    :cond_21
    return-object p3

    :cond_22
    :goto_22
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    const-string p2, "getMemberScope(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getRefinedUnsubstitutedMemberScopeIfPossible$descriptors(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;->getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p2

    if-nez p2, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object p2

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    const-string p2, "getUnsubstitutedMemberScope(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
