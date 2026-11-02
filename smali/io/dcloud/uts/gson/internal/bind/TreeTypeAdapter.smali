###### Class io.dcloud.uts.gson.internal.bind.TreeTypeAdapter (io.dcloud.uts.gson.internal.bind.TreeTypeAdapter)
.class public final Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;
.super Lio/dcloud/uts/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/dcloud/uts/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lio/dcloud/uts/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lio/dcloud/uts/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final gson:Lio/dcloud/uts/gson/Gson;

.field private final serializer:Lio/dcloud/uts/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lio/dcloud/uts/gson/TypeAdapterFactory;

.field private final typeToken:Lio/dcloud/uts/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/uts/gson/JsonSerializer;Lio/dcloud/uts/gson/JsonDeserializer;Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;Lio/dcloud/uts/gson/TypeAdapterFactory;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/JsonSerializer<",
            "TT;>;",
            "Lio/dcloud/uts/gson/JsonDeserializer<",
            "TT;>;",
            "Lio/dcloud/uts/gson/Gson;",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "TT;>;",
            "Lio/dcloud/uts/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lio/dcloud/uts/gson/TypeAdapter;-><init>()V

    .line 47
    new-instance v0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->context:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 54
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->serializer:Lio/dcloud/uts/gson/JsonSerializer;

    .line 55
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->deserializer:Lio/dcloud/uts/gson/JsonDeserializer;

    .line 56
    iput-object p3, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->gson:Lio/dcloud/uts/gson/Gson;

    .line 57
    iput-object p4, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->typeToken:Lio/dcloud/uts/gson/reflect/TypeToken;

    .line 58
    iput-object p5, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->skipPast:Lio/dcloud/uts/gson/TypeAdapterFactory;

    return-void
.end method

.method private delegate()Lio/dcloud/uts/gson/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->delegate:Lio/dcloud/uts/gson/TypeAdapter;

    if-eqz v0, :cond_5

    return-object v0

    .line 89
    :cond_5
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->gson:Lio/dcloud/uts/gson/Gson;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->skipPast:Lio/dcloud/uts/gson/TypeAdapterFactory;

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->typeToken:Lio/dcloud/uts/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/gson/Gson;->getDelegateAdapter(Lio/dcloud/uts/gson/TypeAdapterFactory;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->delegate:Lio/dcloud/uts/gson/TypeAdapter;

    return-object v0
.end method

.method public static newFactory(Lio/dcloud/uts/gson/reflect/TypeToken;Ljava/lang/Object;)Lio/dcloud/uts/gson/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lio/dcloud/uts/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 96
    new-instance v0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lio/dcloud/uts/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lio/dcloud/uts/gson/reflect/TypeToken;Ljava/lang/Object;)Lio/dcloud/uts/gson/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lio/dcloud/uts/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 107
    :goto_d
    new-instance v1, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lio/dcloud/uts/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lio/dcloud/uts/gson/TypeAdapterFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lio/dcloud/uts/gson/TypeAdapterFactory;"
        }
    .end annotation

    .line 116
    new-instance v0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lio/dcloud/uts/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->deserializer:Lio/dcloud/uts/gson/JsonDeserializer;

    if-nez v0, :cond_d

    .line 63
    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->delegate()Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/TypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :cond_d
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/Streams;->parse(Lio/dcloud/uts/gson/stream/JsonReader;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lio/dcloud/uts/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_19
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->deserializer:Lio/dcloud/uts/gson/JsonDeserializer;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->typeToken:Lio/dcloud/uts/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->context:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p1, v1, v2}, Lio/dcloud/uts/gson/JsonDeserializer;->deserialize(Lio/dcloud/uts/gson/JsonElement;Ljava/lang/reflect/Type;Lio/dcloud/uts/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->serializer:Lio/dcloud/uts/gson/JsonSerializer;

    if-nez v0, :cond_c

    .line 74
    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->delegate()Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/uts/gson/TypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_c
    if-nez p2, :cond_12

    .line 78
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->nullValue()Lio/dcloud/uts/gson/stream/JsonWriter;

    return-void

    .line 81
    :cond_12
    iget-object v1, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->typeToken:Lio/dcloud/uts/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->context:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lio/dcloud/uts/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lio/dcloud/uts/gson/JsonSerializationContext;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object p2

    .line 82
    invoke-static {p2, p1}, Lio/dcloud/uts/gson/internal/Streams;->write(Lio/dcloud/uts/gson/JsonElement;Lio/dcloud/uts/gson/stream/JsonWriter;)V

    return-void
.end method

###### Class io.dcloud.uts.gson.internal.bind.TreeTypeAdapter.AnonymousClass1 (io.dcloud.uts.gson.internal.bind.TreeTypeAdapter$1)
.class synthetic Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$1;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.uts.gson.internal.bind.TreeTypeAdapter.GsonContextImpl (io.dcloud.uts.gson.internal.bind.TreeTypeAdapter$GsonContextImpl)
.class final Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lio/dcloud/uts/gson/JsonSerializationContext;
.implements Lio/dcloud/uts/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;


# direct methods
.method private constructor <init>(Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$1;)V
    .registers 3

    .line 153
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/dcloud/uts/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/uts/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/dcloud/uts/gson/JsonParseException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->gson:Lio/dcloud/uts/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/uts/gson/Gson;->fromJson(Lio/dcloud/uts/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)Lio/dcloud/uts/gson/JsonElement;
    .registers 3

    .line 155
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->gson:Lio/dcloud/uts/gson/Gson;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lio/dcloud/uts/gson/JsonElement;
    .registers 4

    .line 158
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;->gson:Lio/dcloud/uts/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/uts/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lio/dcloud/uts/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

###### Class io.dcloud.uts.gson.internal.bind.TreeTypeAdapter.SingleTypeFactory (io.dcloud.uts.gson.internal.bind.TreeTypeAdapter$SingleTypeFactory)
.class final Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lio/dcloud/uts/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lio/dcloud/uts/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/JsonDeserializer<",
            "*>;"
        }
    .end annotation
.end field

.field private final exactType:Lio/dcloud/uts/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lio/dcloud/uts/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/dcloud/uts/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    instance-of v0, p1, Lio/dcloud/uts/gson/JsonSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 129
    move-object v0, p1

    check-cast v0, Lio/dcloud/uts/gson/JsonSerializer;

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 130
    :goto_d
    iput-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lio/dcloud/uts/gson/JsonSerializer;

    .line 131
    instance-of v2, p1, Lio/dcloud/uts/gson/JsonDeserializer;

    if-eqz v2, :cond_16

    .line 132
    move-object v1, p1

    check-cast v1, Lio/dcloud/uts/gson/JsonDeserializer;

    .line 133
    :cond_16
    iput-object v1, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lio/dcloud/uts/gson/JsonDeserializer;

    if-nez v0, :cond_1f

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    .line 134
    :goto_20
    invoke-static {p1}, Lio/dcloud/uts/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 135
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lio/dcloud/uts/gson/reflect/TypeToken;

    .line 136
    iput-boolean p3, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    .line 137
    iput-object p4, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/uts/gson/Gson;",
            "Lio/dcloud/uts/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lio/dcloud/uts/gson/reflect/TypeToken;

    if-eqz v0, :cond_1f

    .line 144
    invoke-virtual {v0, p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lio/dcloud/uts/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lio/dcloud/uts/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_29

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    goto :goto_29

    .line 145
    :cond_1f
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_29
    if-eqz v0, :cond_38

    .line 147
    new-instance v1, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;

    iget-object v2, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lio/dcloud/uts/gson/JsonSerializer;

    iget-object v3, p0, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lio/dcloud/uts/gson/JsonDeserializer;

    move-object v6, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/dcloud/uts/gson/internal/bind/TreeTypeAdapter;-><init>(Lio/dcloud/uts/gson/JsonSerializer;Lio/dcloud/uts/gson/JsonDeserializer;Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;Lio/dcloud/uts/gson/TypeAdapterFactory;)V

    return-object v1

    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method
