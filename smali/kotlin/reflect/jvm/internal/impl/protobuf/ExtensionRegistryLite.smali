###### Class kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite (kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite)
.class public Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;
    }
.end annotation


# static fields
.field private static final EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

.field private static volatile eagerlyParseMessageSets:Z = false


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 159
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 97
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    return-object v0
.end method

.method public static newInstance()Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 92
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final add(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findLiteExtensionByNumber(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;I)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite.ObjectIntPair (kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite$ObjectIntPair)
.class final Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectIntPair"
.end annotation


# instance fields
.field private final number:I

.field private final object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    .line 169
    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 178
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 181
    :cond_6
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 182
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    if-ne v0, v2, :cond_16

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 174
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method
