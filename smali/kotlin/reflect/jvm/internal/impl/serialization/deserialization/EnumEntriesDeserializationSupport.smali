###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.EnumEntriesDeserializationSupport (kotlin.reflect.jvm.internal.impl.serialization.deserialization.EnumEntriesDeserializationSupport)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport;
.super Ljava/lang/Object;
.source "EnumEntriesDeserializationSupport.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport$Default;
    }
.end annotation


# virtual methods
.method public abstract canSynthesizeEnumEntries()Ljava/lang/Boolean;
.end method

###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.EnumEntriesDeserializationSupport.Default (kotlin.reflect.jvm.internal.impl.serialization.deserialization.EnumEntriesDeserializationSupport$Default)
.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport$Default;
.super Ljava/lang/Object;
.source "EnumEntriesDeserializationSupport.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport$Default;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport$Default;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport$Default;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/EnumEntriesDeserializationSupport$Default;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSynthesizeEnumEntries()Ljava/lang/Boolean;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
