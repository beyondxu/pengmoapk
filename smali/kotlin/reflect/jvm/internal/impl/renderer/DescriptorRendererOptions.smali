###### Class kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions (kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;
.super Ljava/lang/Object;
.source "DescriptorRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getAnnotationArgumentsRenderingPolicy()Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;
.end method

.method public abstract getDebugMode()Z
.end method

.method public abstract getEnhancedTypes()Z
.end method

.method public abstract getExcludedTypeAnnotationClasses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAnnotationArgumentsRenderingPolicy(Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;)V
.end method

.method public abstract setClassifierNamePolicy(Lkotlin/reflect/jvm/internal/impl/renderer/ClassifierNamePolicy;)V
.end method

.method public abstract setDebugMode(Z)V
.end method

.method public abstract setExcludedTypeAnnotationClasses(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setModifiers(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setParameterNameRenderingPolicy(Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;)V
.end method

.method public abstract setReceiverAfterName(Z)V
.end method

.method public abstract setRenderCompanionObjectName(Z)V
.end method

.method public abstract setStartFromName(Z)V
.end method

.method public abstract setTextFormat(Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;)V
.end method

.method public abstract setVerbose(Z)V
.end method

.method public abstract setWithDefinedIn(Z)V
.end method

.method public abstract setWithoutSuperTypes(Z)V
.end method

.method public abstract setWithoutTypeParameters(Z)V
.end method

###### Class kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions.DefaultImpls (kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions$DefaultImpls;
.super Ljava/lang/Object;
.source "DescriptorRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getIncludeAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;)Z
    .registers 1

    .line 236
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;->getAnnotationArgumentsRenderingPolicy()Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;->getIncludeAnnotationArguments()Z

    move-result p0

    return p0
.end method

.method public static getIncludeEmptyAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;)Z
    .registers 1

    .line 237
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererOptions;->getAnnotationArgumentsRenderingPolicy()Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/renderer/AnnotationArgumentsRenderingPolicy;->getIncludeEmptyAnnotationArguments()Z

    move-result p0

    return p0
.end method
