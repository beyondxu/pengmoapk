###### Class io.dcloud.uts.gson.internal.bind.ObjectTypeAdapter (io.dcloud.uts.gson.internal.bind.ObjectTypeAdapter)
.class public final Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;
.super Lio/dcloud/uts/gson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DOUBLE_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lio/dcloud/uts/gson/Gson;

.field private final toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    sget-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->DOUBLE:Lio/dcloud/uts/gson/ToNumberPolicy;

    invoke-static {v0}, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->newFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/ToNumberStrategy;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Lio/dcloud/uts/gson/TypeAdapter;-><init>()V

    .line 53
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->gson:Lio/dcloud/uts/gson/Gson;

    .line 54
    iput-object p2, p0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/ToNumberStrategy;Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$1;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2}, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;-><init>(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/ToNumberStrategy;)V

    return-void
.end method

.method public static getFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;
    .registers 2

    .line 70
    sget-object v0, Lio/dcloud/uts/gson/ToNumberPolicy;->DOUBLE:Lio/dcloud/uts/gson/ToNumberPolicy;

    if-ne p0, v0, :cond_7

    .line 71
    sget-object p0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    return-object p0

    .line 73
    :cond_7
    invoke-static {p0}, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->newFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;

    move-result-object p0

    return-object p0
.end method

.method private static newFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;
    .registers 2

    .line 58
    new-instance v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$1;-><init>(Lio/dcloud/uts/gson/ToNumberStrategy;)V

    return-object v0
.end method


# virtual methods
.method public read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->peek()Lio/dcloud/uts/gson/stream/JsonToken;

    move-result-object v0

    .line 79
    sget-object v1, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_68

    .line 130
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 126
    :pswitch_15
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 123
    :pswitch_1a
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 120
    :pswitch_23
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;

    invoke-interface {v0, p1}, Lio/dcloud/uts/gson/ToNumberStrategy;->readNumber(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 117
    :pswitch_2a
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_2f
    new-instance v0, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 93
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->beginObject()V

    .line 94
    :goto_37
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 99
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_37

    .line 110
    :cond_49
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->endObject()V

    return-object v0

    .line 81
    :pswitch_4d
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 82
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->beginArray()V

    .line 83
    :goto_55
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 84
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSArray;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 86
    :cond_63
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->endArray()V

    return-object v0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_2f
        :pswitch_2a
        :pswitch_23
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 137
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->nullValue()Lio/dcloud/uts/gson/stream/JsonWriter;

    return-void

    .line 141
    :cond_6
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->gson:Lio/dcloud/uts/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/uts/gson/Gson;->getAdapter(Ljava/lang/Class;)Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object v0

    .line 142
    instance-of v1, v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1b

    .line 143
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->beginObject()Lio/dcloud/uts/gson/stream/JsonWriter;

    .line 144
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->endObject()Lio/dcloud/uts/gson/stream/JsonWriter;

    return-void

    .line 148
    :cond_1b
    invoke-virtual {v0, p1, p2}, Lio/dcloud/uts/gson/TypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.uts.gson.internal.bind.ObjectTypeAdapter.AnonymousClass1 (io.dcloud.uts.gson.internal.bind.ObjectTypeAdapter$1)
.class Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$1;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Lio/dcloud/uts/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;->newFactory(Lio/dcloud/uts/gson/ToNumberStrategy;)Lio/dcloud/uts/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;


# direct methods
.method constructor <init>(Lio/dcloud/uts/gson/ToNumberStrategy;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;
    .registers 5
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

    .line 61
    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_11

    .line 62
    new-instance p2, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;

    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lio/dcloud/uts/gson/ToNumberStrategy;

    invoke-direct {p2, p1, v0, v1}, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;-><init>(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/ToNumberStrategy;Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$1;)V

    return-object p2

    :cond_11
    return-object v1
.end method

###### Class io.dcloud.uts.gson.internal.bind.ObjectTypeAdapter.AnonymousClass2 (io.dcloud.uts.gson.internal.bind.ObjectTypeAdapter$2)
.class synthetic Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$2;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter;
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

    .line 79
    invoke-static {}, Lio/dcloud/uts/gson/stream/JsonToken;->values()[Lio/dcloud/uts/gson/stream/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    :try_start_9
    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->BEGIN_ARRAY:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->STRING:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->NUMBER:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->BOOLEAN:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/uts/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$io$dcloud$uts$gson$stream$JsonToken:[I

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->NULL:Lio/dcloud/uts/gson/stream/JsonToken;

    invoke-virtual {v1}, Lio/dcloud/uts/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
