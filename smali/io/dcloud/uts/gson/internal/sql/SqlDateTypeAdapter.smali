###### Class io.dcloud.uts.gson.internal.sql.SqlDateTypeAdapter (io.dcloud.uts.gson.internal.sql.SqlDateTypeAdapter)
.class final Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;
.super Lio/dcloud/uts/gson/TypeAdapter;
.source "SqlDateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/TypeAdapter<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field static final FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;


# instance fields
.field private final format:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter$1;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter$1;-><init>()V

    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;->FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lio/dcloud/uts/gson/TypeAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter$1;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/sql/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_1
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->peek()Lio/dcloud/uts/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/gson/stream/JsonToken;->NULL:Lio/dcloud/uts/gson/stream/JsonToken;

    if-ne v0, v1, :cond_f

    .line 55
    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextNull()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    .line 56
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_f
    :try_start_f
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lio/dcloud/uts/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 60
    new-instance p1, Ljava/sql/Date;

    invoke-direct {p1, v0, v1}, Ljava/sql/Date;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_24
    .catchall {:try_start_f .. :try_end_22} :catchall_2b

    monitor-exit p0

    return-object p1

    :catch_24
    move-exception p1

    .line 62
    :try_start_25
    new-instance v0, Lio/dcloud/uts/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lio/dcloud/uts/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public bridge synthetic write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/sql/Date;)V

    return-void
.end method

.method public declared-synchronized write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/sql/Date;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_b

    .line 68
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    :goto_b
    invoke-virtual {p1, p2}, Lio/dcloud/uts/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/dcloud/uts/gson/stream/JsonWriter;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    .line 69
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

###### Class io.dcloud.uts.gson.internal.sql.SqlDateTypeAdapter.AnonymousClass1 (io.dcloud.uts.gson.internal.sql.SqlDateTypeAdapter$1)
.class Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter$1;
.super Ljava/lang/Object;
.source "SqlDateTypeAdapter.java"

# interfaces
.implements Lio/dcloud/uts/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lio/dcloud/uts/gson/Gson;Lio/dcloud/uts/gson/reflect/TypeToken;)Lio/dcloud/uts/gson/TypeAdapter;
    .registers 4
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

    .line 42
    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/sql/Date;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_f

    .line 43
    new-instance p1, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;

    invoke-direct {p1, v0}, Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter;-><init>(Lio/dcloud/uts/gson/internal/sql/SqlDateTypeAdapter$1;)V

    return-object p1

    :cond_f
    return-object v0
.end method
