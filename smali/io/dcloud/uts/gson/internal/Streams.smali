###### Class io.dcloud.uts.gson.internal.Streams (io.dcloud.uts.gson.internal.Streams)
.class public final Lio/dcloud/uts/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static parse(Lio/dcloud/uts/gson/stream/JsonReader;)Lio/dcloud/uts/gson/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/dcloud/uts/gson/JsonParseException;
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lio/dcloud/uts/gson/stream/JsonReader;->peek()Lio/dcloud/uts/gson/stream/JsonToken;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_24
    .catch Lio/dcloud/uts/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_3} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_f

    const/4 v0, 0x0

    .line 48
    :try_start_4
    sget-object v1, Lio/dcloud/uts/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lio/dcloud/uts/gson/TypeAdapter;

    invoke-virtual {v1, p0}, Lio/dcloud/uts/gson/TypeAdapter;->read(Lio/dcloud/uts/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/dcloud/uts/gson/JsonElement;
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_c} :catch_d
    .catch Lio/dcloud/uts/gson/stream/MalformedJsonException; {:try_start_4 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_c} :catch_f

    return-object p0

    :catch_d
    move-exception p0

    goto :goto_26

    :catch_f
    move-exception p0

    .line 64
    new-instance v0, Lio/dcloud/uts/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_16
    move-exception p0

    .line 62
    new-instance v0, Lio/dcloud/uts/gson/JsonIOException;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1d
    move-exception p0

    .line 60
    new-instance v0, Lio/dcloud/uts/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_24
    move-exception p0

    const/4 v0, 0x1

    :goto_26
    if-eqz v0, :cond_2b

    .line 55
    sget-object p0, Lio/dcloud/uts/gson/JsonNull;->INSTANCE:Lio/dcloud/uts/gson/JsonNull;

    return-object p0

    .line 58
    :cond_2b
    new-instance v0, Lio/dcloud/uts/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static write(Lio/dcloud/uts/gson/JsonElement;Lio/dcloud/uts/gson/stream/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Lio/dcloud/uts/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lio/dcloud/uts/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lio/dcloud/uts/gson/TypeAdapter;->write(Lio/dcloud/uts/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 2

    .line 76
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    return-object p0

    :cond_7
    new-instance v0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;

    invoke-direct {v0, p0}, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method

###### Class io.dcloud.uts.gson.internal.Streams.AppendableWriter (io.dcloud.uts.gson.internal.Streams$AppendableWriter)
.class final Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;
.super Ljava/io/Writer;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppendableWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;
    }
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private final currentWrite:Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 85
    new-instance v0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;

    invoke-direct {v0}, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;-><init>()V

    iput-object v0, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;->currentWrite:Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 88
    iput-object p1, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;->currentWrite:Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;

    iput-object p1, v0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    .line 93
    iget-object p1, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    iget-object v0, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;->currentWrite:Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;

    add-int/2addr p3, p2

    invoke-interface {p1, v0, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method

###### Class io.dcloud.uts.gson.internal.Streams.AppendableWriter.CurrentWrite (io.dcloud.uts.gson.internal.Streams$AppendableWriter$CurrentWrite)
.class Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/uts/gson/internal/Streams$AppendableWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrentWrite"
.end annotation


# instance fields
.field chars:[C


# direct methods
.method constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3

    .line 112
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public length()I
    .registers 2

    .line 109
    iget-object v0, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5

    .line 115
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/uts/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
