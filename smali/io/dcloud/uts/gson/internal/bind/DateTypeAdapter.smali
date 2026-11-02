###### Class io.dcloud.uts.gson.internal.bind.DateTypeAdapter (io.dcloud.uts.gson.internal.bind.DateTypeAdapter)
.class public final Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;
.super Lio/dcloud/uts/gson/TypeAdapter;
.source "DateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/TypeAdapter<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;


# instance fields
.field private final dateFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter$1;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter$1;-><init>()V

    sput-object v0, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;->FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 60
    invoke-direct {p0}, Lio/dcloud/uts/gson/TypeAdapter;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    .line 61
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 63
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_27
    invoke-static {}, Lio/dcloud/uts/gson/internal/JavaVersion;->isJava9OrLater()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 66
    invoke-static {v2, v2}, Lio/dcloud/uts/gson/internal/PreJava9DateFormatProvider;->getUSDateTimeFormat(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method private declared-synchronized deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2c

    .line 81
    :try_start_13
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_17} :catch_7
    .catchall {:try_start_13 .. :try_end_17} :catchall_2c

    monitor-exit p0

    return-object p1

    .line 85
    :cond_19
    :try_start_19
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lio/dcloud/uts/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1
    :try_end_23
    .catch Ljava/text/ParseException; {:try_start_19 .. :try_end_23} :catch_25
    .catchall {:try_start_19 .. :try_end_23} :catchall_2c

    monitor-exit p0

    return-object p1

    :catch_25
    move-exception v0

    .line 87
    :try_start_26
    new-instance v1, Lio/dcloud/uts/gson/JsonSyntaxException;

    invoke-direct {v1, p1, v0}, Lio/dcloud/uts/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2c

    throw p1
.end method


# virtual methods
.method public bridge synthetic read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->peek()Lio/dcloud/uts/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->NULL:Lio/dcloud/uts/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 72
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 75
    :cond_d
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/util/Date;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_8

    .line 93
    :try_start_3
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonWriter;->nullValue()Lio/dcloud/uts/gson/stream/JsonWriter;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    .line 94
    monitor-exit p0

    return-void

    .line 96
    :cond_8
    :try_start_8
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;->dateFormats:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Lio/dcloud/uts/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/dcloud/uts/gson/stream/JsonWriter;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1a

    .line 98
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

###### Class io.dcloud.uts.gson.internal.bind.DateTypeAdapter.AnonymousClass1 (io.dcloud.uts.gson.internal.bind.DateTypeAdapter$1)
.class Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter$1;
.super Ljava/lang/Object;
.source "DateTypeAdapter.java"

# interfaces
.implements Lio/dcloud/uts/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
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

    .line 50
    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/util/Date;

    if-ne p1, p2, :cond_e

    new-instance p1, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;

    invoke-direct {p1}, Lio/dcloud/uts/gson/internal/bind/DateTypeAdapter;-><init>()V

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method
