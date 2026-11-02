###### Class kotlin.reflect.jvm.internal.impl.util.Check (kotlin.reflect.jvm.internal.impl.util.Check)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/util/Check;
.super Ljava/lang/Object;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/util/Check$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract check(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract invoke(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Ljava/lang/String;
.end method

###### Class kotlin.reflect.jvm.internal.impl.util.Check.DefaultImpls (kotlin.reflect.jvm.internal.impl.util.Check$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/util/Check$DefaultImpls;
.super Ljava/lang/Object;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static invoke(Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Ljava/lang/String;
    .registers 3

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/Check;->check(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/util/Check;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method
