###### Class io.dcloud.uts.gson.internal.bind.NumberTypeAdapter (io.dcloud.uts.gson.internal.bind.NumberTypeAdapter)
.class public final Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;
.super Lio/dcloud/uts/gson/TypeAdapter;
.source "NumberTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAZILY_PARSED_NUMBER_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;


# instance fields
.field private final toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    sget-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lio/dcloud/uts/gson/ToNumberPolicy;

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->newFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->LAZILY_PARSED_NUMBER_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>(Lio/dcloud/uts/gson/ToNumberStrategy;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lio/dcloud/uts/gson/TypeAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;

    return-void
.end method

.method public static getFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;
    .registers 2

    .line 58
    sget-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lio/dcloud/uts/gson/ToNumberPolicy;

    if-ne p0, v0, :cond_7

    .line 59
    sget-object p0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->LAZILY_PARSED_NUMBER_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    return-object p0

    .line 61
    :cond_7
    invoke-static {p0}, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->newFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;

    move-result-object p0

    return-object p0
.end method

.method private static newFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;
    .registers 2

    .line 48
    new-instance v0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;-><init>(Lio/dcloud/uts/gson/ToNumberStrategy;)V

    .line 49
    new-instance p0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$1;

    invoke-direct {p0, v0}, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$1;-><init>(Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;)V

    return-object p0
.end method


# virtual methods
.method public read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->peek()Lio/dcloud/uts/gson/stream/JsonToken;

    move-result-object v0

    .line 67
    sget-object v1, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    goto :goto_2a

    .line 75
    :cond_16
    new-instance p1, Lio/dcloud/uts/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expecting number, got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/dcloud/uts/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;

    invoke-interface {v0, p1}, Lio/dcloud/uts/gson/ToNumberStrategy;->readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 69
    :cond_31
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1, p2}, Lio/dcloud/uts/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/dcloud/uts/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method

###### Class io.dcloud.uts.gson.internal.bind.NumberTypeAdapter.AnonymousClass1 (io.dcloud.uts.gson.internal.bind.NumberTypeAdapter$1)
.class Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$1;
.super Ljava/lang/Object;
.source "NumberTypeAdapter.java"

# interfaces
.implements Lio/dcloud/uts/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;->newFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$1;->val$adapter:Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;
    .registers 3
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

    .line 52
    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/lang/Number;

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$1;->val$adapter:Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.uts.gson.internal.bind.NumberTypeAdapter.AnonymousClass2 (io.dcloud.uts.gson.internal.bind.NumberTypeAdapter$2)
.class synthetic Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$2;
.super Ljava/lang/Object;
.source "NumberTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 67
    invoke-static {}, Lio/dcloud/uts/gson/stream/JsonToken;->values()[Lio/dcloud/uts/gson/stream/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    :try_start_9
    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->NULL:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->NUMBER:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/uts/gson/internal/bind/NumberTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->STRING:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
