###### Class com.alibaba.fastjson.support.spring.FastjsonSockJsMessageCodec (com.alibaba.fastjson.support.spring.FastjsonSockJsMessageCodec)
.class public Lcom/alibaba/fastjson/support/spring/FastjsonSockJsMessageCodec;
.super Lorg/springframework/web/socket/sockjs/frame/AbstractSockJsMessageCodec;
.source "FastjsonSockJsMessageCodec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lorg/springframework/web/socket/sockjs/frame/AbstractSockJsMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyJsonQuoting(Ljava/lang/String;)[C
    .registers 4

    .line 24
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 26
    :try_start_5
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 27
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toCharArrayForSpringWebSocket()[C

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 30
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    return-object p1

    :catchall_15
    move-exception p1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 31
    throw p1
.end method

.method public decode(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    const-class v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public decodeInputStream(Ljava/io/InputStream;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const-class v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method
