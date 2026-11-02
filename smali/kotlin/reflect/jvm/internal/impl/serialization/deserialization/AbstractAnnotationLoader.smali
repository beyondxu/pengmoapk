###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractAnnotationLoader (kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractAnnotationLoader)
.class public abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;
.super Ljava/lang/Object;
.source "AbstractAnnotationLoader.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader<",
        "TA;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractAnnotationLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractAnnotationLoader.kt\norg/jetbrains/kotlin/serialization/deserialization/AbstractAnnotationLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1563#2:105\n1634#2,3:106\n1563#2:109\n1634#2,3:110\n1563#2:114\n1634#2,3:115\n1563#2:118\n1634#2,3:119\n1563#2:122\n1634#2,3:123\n1563#2:126\n1634#2,3:127\n1563#2:130\n1634#2,3:131\n1563#2:134\n1634#2,3:135\n1563#2:138\n1634#2,3:139\n1#3:113\n*S KotlinDebug\n*F\n+ 1 AbstractAnnotationLoader.kt\norg/jetbrains/kotlin/serialization/deserialization/AbstractAnnotationLoader\n*L\n18#1:105\n18#1:106,3\n37#1:109\n37#1:110,3\n44#1:114\n44#1:115,3\n51#1:118\n51#1:119,3\n58#1:122\n58#1:123,3\n71#1:126\n71#1:127,3\n91#1:130\n91#1:131,3\n97#1:134\n97#1:135,3\n101#1:138\n101#1:139,3\n*E\n"
.end annotation


# instance fields
.field private final protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;)V
    .registers 3

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    return-void
.end method


# virtual methods
.method protected final getProtocol()Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;
    .registers 2

    .line 14
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    return-object v0
.end method

.method public loadCallableAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    if-eqz v0, :cond_22

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getConstructorAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_82

    .line 28
    :cond_22
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    if-eqz v0, :cond_35

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getFunctionAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_82

    .line 29
    :cond_35
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz v0, :cond_b6

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_74

    const/4 v0, 0x2

    if-eq p3, v0, :cond_65

    const/4 v0, 0x3

    if-ne p3, v0, :cond_59

    .line 32
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getPropertySetterAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_82

    :cond_59
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    const-string p2, "Unsupported callable kind with property proto"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_65
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getPropertyGetterAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_82

    .line 30
    :cond_74
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getPropertyAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_82
    if-nez p2, :cond_88

    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 37
    :cond_88
    check-cast p2, Ljava/lang/Iterable;

    .line 109
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 110
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 38
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 112
    :cond_b3
    check-cast p3, Ljava/util/List;

    return-object p3

    .line 33
    :cond_b6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown message: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadClassAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->getClassProto()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getClassAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 18
    :cond_1b
    check-cast v0, Ljava/lang/Iterable;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 107
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 18
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object v2

    .line 107
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 108
    :cond_46
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public loadEnumEntryAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getEnumEntryAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 58
    :cond_1c
    check-cast p2, Ljava/lang/Iterable;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 123
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 124
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 59
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 125
    :cond_47
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public loadExtensionReceiverParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getFunctionExtensionReceiverAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p3

    if-eqz p3, :cond_65

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    goto :goto_65

    .line 83
    :cond_26
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz v0, :cond_99

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_54

    const/4 v2, 0x2

    if-eq v0, v2, :cond_54

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3c

    goto :goto_54

    .line 85
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported callable kind with property proto for receiver annotations: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_54
    :goto_54
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getPropertyExtensionReceiverAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p3

    if-eqz p3, :cond_65

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    :cond_65
    :goto_65
    if-nez v1, :cond_6b

    .line 90
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 91
    :cond_6b
    check-cast v1, Ljava/lang/Iterable;

    .line 130
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {v1, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 131
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 92
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 133
    :cond_96
    check-cast p2, Ljava/util/List;

    return-object p2

    .line 87
    :cond_99
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown message: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadPropertyBackingFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getPropertyBackingFieldAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    if-nez p2, :cond_20

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 44
    :cond_20
    check-cast p2, Ljava/lang/Iterable;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 115
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 116
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 45
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 117
    :cond_4b
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public loadPropertyDelegateFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getPropertyDelegatedFieldAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    if-nez p2, :cond_20

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 51
    :cond_20
    check-cast p2, Ljava/lang/Iterable;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 119
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 120
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 52
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 121
    :cond_4b
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public loadTypeAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getTypeAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1c
    check-cast p1, Ljava/lang/Iterable;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 135
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 136
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 97
    invoke-virtual {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 137
    :cond_43
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public loadTypeParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;",
            "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getTypeParameterAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1c
    check-cast p1, Ljava/lang/Iterable;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 140
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 101
    invoke-virtual {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 141
    :cond_43
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public loadValueParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;ILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string p4, "container"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callableProto"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "proto"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->protocol:Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->getParameterAnnotation()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p2

    invoke-virtual {p5, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_26

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 71
    :cond_26
    check-cast p2, Ljava/lang/Iterable;

    .line 126
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p3, Ljava/util/Collection;

    .line 127
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_39
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_51

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 128
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 72
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;->getNameResolver()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-result-object p5

    invoke-virtual {p0, p4, p5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/lang/Object;

    move-result-object p4

    .line 128
    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 129
    :cond_51
    check-cast p3, Ljava/util/List;

    return-object p3
.end method

###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractAnnotationLoader.WhenMappings (kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractAnnotationLoader$WhenMappings)
.class public final synthetic Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader$WhenMappings;
.super Ljava/lang/Object;
.source "AbstractAnnotationLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->values()[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractAnnotationLoader$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
