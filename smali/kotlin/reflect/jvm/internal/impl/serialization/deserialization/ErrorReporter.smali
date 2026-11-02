###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# static fields
.field public static final DO_NOTHING:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;->DO_NOTHING:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

    return-void
.end method


# virtual methods
.method public abstract reportCannotInferVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
.end method

.method public abstract reportIncompleteHierarchy(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter$1)
.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string v3, "descriptor"

    aput-object v3, v0, v1

    goto :goto_10

    :cond_c
    const-string v3, "unresolvedSuperClasses"

    aput-object v3, v0, v1

    :goto_10
    const-string v1, "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1c

    const-string p0, "reportIncompleteHierarchy"

    aput-object p0, v0, v1

    goto :goto_20

    :cond_1c
    const-string p0, "reportCannotInferVisibility"

    aput-object p0, v0, v1

    :goto_20
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportCannotInferVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1;->$$$reportNull$$$0(I)V

    :cond_6
    return-void
.end method

.method public reportIncompleteHierarchy(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1;->$$$reportNull$$$0(I)V

    :cond_c
    return-void
.end method
