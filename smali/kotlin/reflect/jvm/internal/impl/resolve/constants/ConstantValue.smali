###### Class kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue (kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue)
.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;
.super Ljava/lang/Object;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-eq p0, p1, :cond_1e

    .line 41
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    goto :goto_f

    :cond_e
    move-object p1, v2

    :goto_f
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    :cond_15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method public abstract getType(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 43
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 45
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
