###### Class kotlin.reflect.jvm.internal.impl.protobuf.LazyFieldLite (kotlin.reflect.jvm.internal.impl.protobuf.LazyFieldLite)
.class public Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# instance fields
.field private bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field private extensionRegistry:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

.field private volatile isDirty:Z

.field protected volatile value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;


# virtual methods
.method protected ensureInitialized(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    if-eqz v0, :cond_5

    goto :goto_24

    .line 159
    :cond_5
    monitor-enter p0

    .line 160
    :try_start_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    if-eqz v0, :cond_c

    .line 161
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_25

    return-void

    .line 164
    :cond_c
    :try_start_c
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    if-eqz v0, :cond_21

    .line 165
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;->getParserForType()Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    move-result-object p1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->extensionRegistry:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    invoke-interface {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;->parseFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    goto :goto_23

    .line 168
    :cond_21
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_23} :catch_23
    .catchall {:try_start_c .. :try_end_23} :catchall_25

    .line 174
    :catch_23
    :goto_23
    :try_start_23
    monitor-exit p0

    :goto_24
    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public getSerializedSize()I
    .registers 2

    .line 131
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->isDirty:Z

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 134
    :cond_b
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method

.method public getValue(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
    .registers 2

    .line 86
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->ensureInitialized(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    .line 87
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    return-object p1
.end method

.method public setValue(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
    .registers 3

    .line 95
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    .line 96
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->value:Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->bytes:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyFieldLite;->isDirty:Z

    return-object v0
.end method
