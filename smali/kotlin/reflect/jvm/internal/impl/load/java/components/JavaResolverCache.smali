###### Class kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache (kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;
.super Ljava/lang/Object;
.source "JavaResolverCache.java"


# static fields
.field public static final EMPTY:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;->EMPTY:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;

    return-void
.end method


# virtual methods
.method public abstract getClassResolvedFromSource(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
.end method

.method public abstract recordClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V
.end method

.method public abstract recordConstructor(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;)V
.end method

.method public abstract recordField(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaField;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
.end method

.method public abstract recordMethod(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMember;Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)V
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache$1)
.class final Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;
.super Ljava/lang/Object;
.source "JavaResolverCache.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_52

    const-string v2, "fqName"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_c
    const-string v2, "javaClass"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_11
    const-string v2, "field"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_16
    const-string v2, "element"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_1b
    const-string v2, "descriptor"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_20
    const-string v2, "member"

    aput-object v2, v0, v1

    :goto_24
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_66

    const-string p0, "getClassResolvedFromSource"

    aput-object p0, v0, v1

    goto :goto_45

    :pswitch_32
    const-string p0, "recordClass"

    aput-object p0, v0, v1

    goto :goto_45

    :pswitch_37
    const-string p0, "recordField"

    aput-object p0, v0, v1

    goto :goto_45

    :pswitch_3c
    const-string p0, "recordConstructor"

    aput-object p0, v0, v1

    goto :goto_45

    :pswitch_41
    const-string p0, "recordMethod"

    aput-object p0, v0, v1

    :goto_45
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_1b
        :pswitch_11
        :pswitch_1b
        :pswitch_c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_41
        :pswitch_41
        :pswitch_3c
        :pswitch_3c
        :pswitch_37
        :pswitch_37
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassResolvedFromSource(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public recordClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_d

    const/16 p1, 0x8

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_d
    return-void
.end method

.method public recordConstructor(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_c
    return-void
.end method

.method public recordField(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaField;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x5

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_c
    return-void
.end method

.method public recordMethod(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMember;Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;->$$$reportNull$$$0(I)V

    :cond_c
    return-void
.end method
