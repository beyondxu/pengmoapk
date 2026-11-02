###### Class kotlin.reflect.jvm.internal.impl.protobuf.MessageLite (kotlin.reflect.jvm.internal.impl.protobuf.MessageLite)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract getParserForType()Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/Parser<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
.end method

.method public abstract toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract writeTo(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder (kotlin.reflect.jvm.internal.impl.protobuf.MessageLite$Builder)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
.end method

.method public abstract mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
