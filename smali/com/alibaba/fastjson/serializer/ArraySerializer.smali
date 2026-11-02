###### Class com.alibaba.fastjson.serializer.ArraySerializer (com.alibaba.fastjson.serializer.ArraySerializer)
.class public Lcom/alibaba/fastjson/serializer/ArraySerializer;
.super Ljava/lang/Object;
.source "ArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object p4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_a

    .line 39
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 43
    :cond_a
    move-object p5, p2

    check-cast p5, [Ljava/lang/Object;

    check-cast p5, [Ljava/lang/Object;

    .line 44
    array-length v0, p5

    .line 46
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1, v1, p2, p3, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p3, 0x5b

    .line 50
    :try_start_18
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_7c

    :goto_1b
    if-ge v2, v0, :cond_71

    if-eqz v2, :cond_29

    const/16 p3, 0x2c

    .line 53
    :try_start_21
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v0

    move-object p2, v0

    move-object v4, p1

    goto :goto_7f

    .line 55
    :cond_29
    :goto_29
    :try_start_29
    aget-object v5, p5, v2
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_7c

    if-nez v5, :cond_46

    .line 58
    :try_start_2d
    sget-object p3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p3

    if-eqz p3, :cond_3f

    instance-of p3, p2, [Ljava/lang/String;

    if-eqz p3, :cond_3f

    .line 59
    const-string p3, ""

    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_44

    .line 61
    :cond_3f
    const-string p3, "null"

    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_25

    :goto_44
    move-object v4, p1

    goto :goto_6d

    .line 63
    :cond_46
    :try_start_46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    if-ne p3, v3, :cond_5b

    .line 64
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_7c

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    :try_start_57
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_6d

    :cond_5b
    move-object v4, p1

    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :goto_6d
    add-int/lit8 v2, v2, 0x1

    move-object p1, v4

    goto :goto_1b

    :cond_71
    move-object v4, p1

    const/16 p1, 0x5d

    .line 70
    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_77
    .catchall {:try_start_57 .. :try_end_77} :catchall_7a

    .line 72
    iput-object v1, v4, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_7a
    move-exception v0

    goto :goto_7e

    :catchall_7c
    move-exception v0

    move-object v4, p1

    :goto_7e
    move-object p2, v0

    :goto_7f
    iput-object v1, v4, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 73
    throw p2
.end method
