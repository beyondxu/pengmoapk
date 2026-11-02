###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope (kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.super Ljava/lang/Object;
.source "MemberScope.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;,
        Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$DefaultImpls;,
        Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;

    return-void
.end method


# virtual methods
.method public abstract getClassifierNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFunctionNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVariableNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope.Companion (kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;
.super Ljava/lang/Object;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;

.field private static final ALL_NAME_FILTER:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;

    .line 59
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;->ALL_NAME_FILTER:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final ALL_NAME_FILTER$lambda$0(Lkotlin/reflect/jvm/internal/impl/name/Name;)Z
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic accessor$MemberScope$Companion$lambda0(Lkotlin/reflect/jvm/internal/impl/name/Name;)Z
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;->ALL_NAME_FILTER$lambda$0(Lkotlin/reflect/jvm/internal/impl/name/Name;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getALL_NAME_FILTER()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;->ALL_NAME_FILTER:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$Companion$$Lambda$0 (kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$Companion$$Lambda$0)
.class Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion;->accessor$MemberScope$Companion$lambda0(Lkotlin/reflect/jvm/internal/impl/name/Name;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope.DefaultImpls (kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$DefaultImpls;
.super Ljava/lang/Object;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static recordLookup(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope$DefaultImpls;->recordLookup(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope.Empty (kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$Empty)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;
.super Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScopeImpl;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Empty"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScopeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassifierNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVariableNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
