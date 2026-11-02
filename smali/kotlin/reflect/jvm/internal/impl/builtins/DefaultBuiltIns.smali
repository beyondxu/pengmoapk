###### Class kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns (kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;
.super Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
.source "DefaultBuiltIns.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$Companion;

.field private static final Instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->Companion:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$Companion;

    .line 30
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->Instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 21
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v1, "DefaultBuiltIns"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->createBuiltInsModule(Z)V

    :cond_12
    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 21
    :cond_5
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;-><init>(Z)V

    return-void
.end method

.method private static final Instance_delegate$lambda$0()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;
    .registers 4

    .line 31
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .registers 1

    .line 21
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->Instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method static synthetic accessor$DefaultBuiltIns$lambda0()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;
    .registers 1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->Instance_delegate$lambda$0()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns.Companion (kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns$Companion)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$Companion;
.super Ljava/lang/Object;
.source "DefaultBuiltIns.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;
    .registers 2

    .line 30
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns$$Lambda$0 (kotlin.reflect.jvm.internal.impl.builtins.DefaultBuiltIns$$Lambda$0)
.class Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns$$Lambda$0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->accessor$DefaultBuiltIns$lambda0()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    move-result-object v0

    return-object v0
.end method
