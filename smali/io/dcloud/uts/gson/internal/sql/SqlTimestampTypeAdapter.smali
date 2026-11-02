###### Class io.dcloud.uts.gson.internal.sql.SqlTimestampTypeAdapter (io.dcloud.uts.gson.internal.sql.SqlTimestampTypeAdapter)
.class Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;
.super Lio/dcloud/uts/gson/TypeAdapter;
.source "SqlTimestampTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/dcloud/uts/gson/TypeAdapter<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# static fields
.field static final FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;


# instance fields
.field private final dateTypeAdapter:Lio/dcloud/uts/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter$1;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter$1;-><init>()V

    sput-object v0, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;->FACTORY:Lio/dcloud/uts/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>(Lio/dcloud/uts/gson/TypeAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/gson/TypeAdapter<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lio/dcloud/uts/gson/TypeAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lio/dcloud/uts/gson/TypeAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/uts/gson/TypeAdapter;Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter$1;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;-><init>(Lio/dcloud/uts/gson/TypeAdapter;)V

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

    .line 14
    invoke-virtual {p0, p1}, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lio/dcloud/uts/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/gson/TypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_14

    .line 36
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;->dateTypeAdapter:Lio/dcloud/uts/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/uts/gson/TypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.uts.gson.internal.sql.SqlTimestampTypeAdapter.AnonymousClass1 (io.dcloud.uts.gson.internal.sql.SqlTimestampTypeAdapter$1)
.class Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter$1;
.super Ljava/lang/Object;
.source "SqlTimestampTypeAdapter.java"

# interfaces
.implements Lio/dcloud/uts/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
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

    .line 18
    invoke-virtual {p2}, Lio/dcloud/uts/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_15

    .line 19
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lio/dcloud/uts/gson/Gson;->getAdapter(Ljava/lang/Class;)Lio/dcloud/uts/gson/TypeAdapter;

    move-result-object p1

    .line 20
    new-instance p2, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;

    invoke-direct {p2, p1, v1}, Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter;-><init>(Lio/dcloud/uts/gson/TypeAdapter;Lio/dcloud/uts/gson/internal/sql/SqlTimestampTypeAdapter$1;)V

    return-object p2

    :cond_15
    return-object v1
.end method
