###### Class kotlin.reflect.jvm.internal.impl.types.model.TypeCheckerProviderContext$$Util (kotlin.reflect.jvm.internal.impl.types.model.TypeCheckerProviderContext$$Util)
.class public synthetic Lkotlin/reflect/jvm/internal/impl/types/model/TypeCheckerProviderContext$$Util;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic newTypeCheckerState$default(Lkotlin/reflect/jvm/internal/impl/types/model/TypeCheckerProviderContext;ZZZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    .line 117
    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeCheckerProviderContext;->newTypeCheckerState(ZZZ)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: newTypeCheckerState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
