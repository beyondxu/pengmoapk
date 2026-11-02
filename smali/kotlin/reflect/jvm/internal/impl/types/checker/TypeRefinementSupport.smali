###### Class kotlin.reflect.jvm.internal.impl.types.checker.TypeRefinementSupport (kotlin.reflect.jvm.internal.impl.types.checker.TypeRefinementSupport)
.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/TypeRefinementSupport;
.super Ljava/lang/Object;
.source "KotlinTypeRefiner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/TypeRefinementSupport$Enabled;
    }
.end annotation


# instance fields
.field private final isEnabled:Z


# virtual methods
.method public final isEnabled()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeRefinementSupport;->isEnabled:Z

    return v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.checker.TypeRefinementSupport.Enabled (kotlin.reflect.jvm.internal.impl.types.checker.TypeRefinementSupport$Enabled)
.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/TypeRefinementSupport$Enabled;
.super Lkotlin/reflect/jvm/internal/impl/types/checker/TypeRefinementSupport;
.source "KotlinTypeRefiner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/TypeRefinementSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enabled"
.end annotation


# instance fields
.field private final typeRefiner:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;


# virtual methods
.method public final getTypeRefiner()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
    .registers 2

    .line 88
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeRefinementSupport$Enabled;->typeRefiner:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    return-object v0
.end method
