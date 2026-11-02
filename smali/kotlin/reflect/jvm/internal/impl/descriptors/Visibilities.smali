###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.super Ljava/lang/Object;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;
    }
.end annotation


# static fields
.field private static final DEFAULT_VISIBILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;

.field private static final ORDERED_VISIBILITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;

    .line 56
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    .line 57
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->ORDERED_VISIBILITIES:Ljava/util/Map;

    .line 88
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->DEFAULT_VISIBILITY:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareLocal$compiler_common(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)Ljava/lang/Integer;
    .registers 4

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_12

    const/4 p1, 0x0

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 77
    :cond_12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->ORDERED_VISIBILITIES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 78
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    .line 79
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_39

    .line 81
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_39
    :goto_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)Z
    .registers 3

    const-string v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;

    if-eq p1, v0, :cond_10

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    if-ne p1, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x1

    return p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.Inherited (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$Inherited)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Inherited"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Inherited;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 37
    const-string v0, "inherited"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.Internal (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$Internal)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Internal"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 25
    const-string v0, "internal"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.InvisibleFake (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$InvisibleFake)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvisibleFake"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$InvisibleFake;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 43
    const-string v0, "invisible_fake"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.Local (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$Local)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Local"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Local;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 33
    const-string v0, "local"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.Private (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$Private)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Private"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 9
    const-string v0, "private"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.PrivateToThis (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$PrivateToThis)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateToThis"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 14
    const-string v0, "private_to_this"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getInternalDisplayName()Ljava/lang/String;
    .registers 2

    .line 16
    const-string v0, "private/*private to this*/"

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.Protected (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$Protected)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Protected"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 21
    const-string v0, "protected"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.Public (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$Public)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Public"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Public;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 29
    const-string v0, "public"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.Unknown (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$Unknown)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "Visibilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unknown"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Unknown;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 50
    const-string v0, "unknown"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
