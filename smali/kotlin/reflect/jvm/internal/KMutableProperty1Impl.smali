###### Class kotlin.reflect.jvm.internal.KMutableProperty1Impl (kotlin.reflect.jvm.internal.KMutableProperty1Impl)
.class public final Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;
.super Lkotlin/reflect/jvm/internal/KProperty1Impl;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/reflect/KMutableProperty1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KProperty1Impl<",
        "TT;TV;>;",
        "Lkotlin/reflect/KMutableProperty1<",
        "TT;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u001cB+\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rB\u0019\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u000c\u0010\u0010J\u001d\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u001bR \u0010\u0011\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;",
        "T",
        "V",
        "Lkotlin/reflect/jvm/internal/KProperty1Impl;",
        "Lkotlin/reflect/KMutableProperty1;",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "name",
        "",
        "signature",
        "boundReceiver",
        "",
        "<init>",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V",
        "_setter",
        "Lkotlin/Lazy;",
        "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;",
        "setter",
        "getSetter",
        "()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;",
        "set",
        "",
        "receiver",
        "value",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "Setter",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _setter:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/KProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$$Lambda$0;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->_setter:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KProperty1Impl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    .line 55
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$$Lambda$0;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->_setter:Lkotlin/Lazy;

    return-void
.end method

.method private static final _setter$lambda$0(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;
    .registers 2

    .line 55
    new-instance v0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;-><init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V

    return-object v0
.end method

.method static synthetic accessor$KMutableProperty1Impl$lambda0(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->_setter$lambda$0(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getSetter()Lkotlin/reflect/KMutableProperty$Setter;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->getSetter()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KMutableProperty$Setter;

    return-object v0
.end method

.method public bridge synthetic getSetter()Lkotlin/reflect/KMutableProperty1$Setter;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->getSetter()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KMutableProperty1$Setter;

    return-object v0
.end method

.method public getSetter()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter<",
            "TT;TV;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->_setter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->getSetter()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.KMutableProperty1Impl.Setter (kotlin.reflect.jvm.internal.KMutableProperty1Impl$Setter)
.class public final Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;
.super Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;
.source "KProperty1Impl.kt"

# interfaces
.implements Lkotlin/reflect/KMutableProperty1$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter<",
        "TV;>;",
        "Lkotlin/reflect/KMutableProperty1$Setter<",
        "TT;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u00022\u0006\u0010\u000e\u001a\u00028\u0003H\u0096\u0002\u00a2\u0006\u0002\u0010\u000fR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;",
        "T",
        "V",
        "Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;",
        "Lkotlin/reflect/KMutableProperty1$Setter;",
        "property",
        "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;",
        "<init>",
        "(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V",
        "getProperty",
        "()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;",
        "invoke",
        "",
        "receiver",
        "value",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl<",
            "TT;TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$Setter;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    return-void
.end method


# virtual methods
.method public bridge synthetic getProperty()Lkotlin/reflect/KProperty;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->getProperty()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    return-object v0
.end method

.method public getProperty()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/KMutableProperty1Impl<",
            "TT;TV;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->property:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    return-object v0
.end method

.method public bridge synthetic getProperty()Lkotlin/reflect/jvm/internal/KPropertyImpl;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->getProperty()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 61
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;->getProperty()Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.KMutableProperty1Impl$$Lambda$0 (kotlin.reflect.jvm.internal.KMutableProperty1Impl$$Lambda$0)
.class Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;->accessor$KMutableProperty1Impl$lambda0(Lkotlin/reflect/jvm/internal/KMutableProperty1Impl;)Lkotlin/reflect/jvm/internal/KMutableProperty1Impl$Setter;

    move-result-object v0

    return-object v0
.end method
