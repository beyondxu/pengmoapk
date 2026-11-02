###### Class kotlin.reflect.jvm.internal.impl.descriptors.SourceFile (kotlin.reflect.jvm.internal.impl.descriptors.SourceFile)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;
.super Ljava/lang/Object;
.source "SourceFile.java"


# static fields
.field public static final NO_SOURCE_FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;->NO_SOURCE_FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.SourceFile.AnonymousClass1 (kotlin.reflect.jvm.internal.impl.descriptors.SourceFile$1)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;
.super Ljava/lang/Object;
.source "SourceFile.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
