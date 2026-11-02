###### Class kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
.super Ljava/lang/Object;
.source "ModuleDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
.end method

.method public abstract getCapability(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getExpectedByModules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
.end method

.method public abstract getSubPackagesOf(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldSeeInternalsOf(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Z
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor.DefaultImpls (kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor$DefaultImpls;
.super Ljava/lang/Object;
.source "ModuleDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static accept(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;->visitModuleDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getContainingDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
