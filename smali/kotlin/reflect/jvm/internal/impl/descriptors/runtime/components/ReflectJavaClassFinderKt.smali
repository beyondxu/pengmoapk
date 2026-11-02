###### Class kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinderKt (kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinderKt)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinderKt;
.super Ljava/lang/Object;
.source "ReflectJavaClassFinder.kt"


# direct methods
.method public static final tryLoadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    :try_start_b
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    const/4 p0, 0x0

    return-object p0
.end method
