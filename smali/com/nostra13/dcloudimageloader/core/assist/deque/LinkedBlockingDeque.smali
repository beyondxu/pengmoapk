###### Class com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque (com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque)
.class public Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/assist/deque/BlockingDeque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;,
        Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Itr;,
        Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,
        Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lcom/nostra13/dcloudimageloader/core/assist/deque/BlockingDeque<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field transient first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x7fffffff

    .line 152
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 161
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    if-lez p1, :cond_1b

    .line 163
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    return-void

    .line 162
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 177
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V

    .line 178
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 181
    :try_start_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 184
    new-instance v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v2, v1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_f

    .line 185
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_39

    .line 188
    :cond_35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_39
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 189
    throw p1
.end method

.method private linkFirst(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;)Z"
        }
    .end annotation

    .line 200
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    if-lt v0, v1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 203
    iput-object v0, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 204
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 205
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_15

    .line 206
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_17

    .line 208
    :cond_15
    iput-object p1, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 209
    :goto_17
    iget p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 210
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    return v0
.end method

.method private linkLast(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;)Z"
        }
    .end annotation

    .line 219
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    if-lt v0, v1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 222
    iput-object v0, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 223
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 224
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_15

    .line 225
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_17

    .line 227
    :cond_15
    iput-object p1, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 228
    :goto_17
    iget p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 229
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    .line 1184
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    const/4 v0, 0x0

    .line 1185
    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1186
    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1190
    :goto_b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 1193
    :cond_12
    invoke-virtual {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 241
    :cond_6
    iget-object v2, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 242
    iget-object v3, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 243
    iput-object v1, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 244
    iput-object v0, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 245
    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v2, :cond_15

    .line 247
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_17

    .line 249
    :cond_15
    iput-object v1, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 250
    :goto_17
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 251
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-object v3
.end method

.method private unlinkLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 263
    :cond_6
    iget-object v2, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 264
    iget-object v3, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 265
    iput-object v1, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 266
    iput-object v0, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 267
    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v2, :cond_15

    .line 269
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_17

    .line 271
    :cond_15
    iput-object v1, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 272
    :goto_17
    iget v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 273
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-object v3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1161
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1164
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1166
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    :goto_a
    if-eqz v1, :cond_14

    .line 1167
    iget-object v2, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1166
    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    .line 1169
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    .line 1171
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1c
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1172
    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 615
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 307
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deque full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 315
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 316
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Deque full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 5

    .line 969
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 970
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 972
    :try_start_5
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    :goto_7
    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 973
    iput-object v2, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 974
    iget-object v3, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 975
    iput-object v2, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 976
    iput-object v2, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-object v1, v3

    goto :goto_7

    .line 979
    :cond_14
    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    const/4 v1, 0x0

    .line 980
    iput v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 981
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    .line 983
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 984
    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 805
    :cond_4
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 806
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 808
    :try_start_9
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    :goto_b
    if-eqz v2, :cond_1d

    .line 809
    iget-object v3, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_21

    if-eqz v3, :cond_1a

    .line 813
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    .line 808
    :cond_1a
    :try_start_1a
    iget-object v2, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_21

    goto :goto_b

    .line 813
    :cond_1d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_21
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 814
    throw p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1019
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 715
    invoke-virtual {p0, p1, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 726
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, p0, :cond_29

    .line 729
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 730
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 732
    :try_start_a
    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p2, :cond_20

    .line 734
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v2, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_24

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 739
    :cond_20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p2

    :catchall_24
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 740
    throw p1

    .line 728
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 534
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 543
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1001
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Itr;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 623
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 640
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 325
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 326
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 328
    :try_start_d
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 330
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_15
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    throw v0
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 389
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 391
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 392
    iget-object p3, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 393
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 395
    :goto_11
    :try_start_11
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result p4
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_2e

    if-nez p4, :cond_29

    const-wide/16 v1, 0x0

    cmp-long p4, p1, v1

    if-gtz p4, :cond_22

    .line 402
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    .line 398
    :cond_22
    :try_start_22
    iget-object p4, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p4, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2e

    goto :goto_11

    .line 402
    :cond_29
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_2e
    move-exception p1

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 403
    throw p1
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 340
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 341
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_d
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 345
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_15
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    throw v0
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 415
    iget-object p3, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 416
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 418
    :goto_11
    :try_start_11
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result p4
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_2e

    if-nez p4, :cond_29

    const-wide/16 v1, 0x0

    cmp-long p4, p1, v1

    if-gtz p4, :cond_22

    .line 425
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return p1

    .line 421
    :cond_22
    :try_start_22
    iget-object p4, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p4, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2e

    goto :goto_11

    .line 425
    :cond_29
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_2e
    move-exception p1

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 426
    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 684
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 549
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 551
    :try_start_5
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_d

    :cond_b
    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    .line 553
    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 559
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 561
    :try_start_5
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_d

    :cond_b
    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    .line 563
    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 564
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 666
    invoke-virtual {p0, p1, p2, p3}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 449
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 451
    :try_start_5
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 453
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 454
    throw v1
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 495
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 496
    iget-object p3, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 497
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 500
    :goto_9
    :try_start_9
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_25

    if-nez v0, :cond_21

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1a

    .line 507
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    .line 503
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_25

    goto :goto_9

    .line 507
    :cond_21
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_25
    move-exception p1

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    throw p1
.end method

.method public pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 459
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 461
    :try_start_5
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 463
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 464
    throw v1
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 513
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 514
    iget-object p3, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 515
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 518
    :goto_9
    :try_start_9
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_25

    if-nez v0, :cond_21

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1a

    .line 525
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    .line 521
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_25

    goto :goto_9

    .line 525
    :cond_21
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_25
    move-exception p1

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 526
    throw p1
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 757
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 750
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 356
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 357
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 359
    :goto_d
    :try_start_d
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 360
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1d

    goto :goto_d

    .line 362
    :cond_19
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1d
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 363
    throw v0
.end method

.method public putLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 373
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 374
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 376
    :goto_d
    :try_start_d
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 377
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1d

    goto :goto_d

    .line 379
    :cond_19
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1d
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 380
    throw v0
.end method

.method public remainingCapacity()I
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 700
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 702
    :try_start_5
    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    iget v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    sub-int/2addr v1, v2

    .line 704
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 705
    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 654
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 777
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 434
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 569
    :cond_4
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 570
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 572
    :try_start_9
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    :goto_b
    if-eqz v2, :cond_20

    .line 573
    iget-object v3, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 574
    invoke-virtual {p0, v2}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    .line 580
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    .line 572
    :cond_1d
    :try_start_1d
    iget-object v2, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_24

    goto :goto_b

    .line 580
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_24
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 581
    throw p1
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 443
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 586
    :cond_4
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 587
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 589
    :try_start_9
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    :goto_b
    if-eqz v2, :cond_20

    .line 590
    iget-object v3, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 591
    invoke-virtual {p0, v2}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    .line 597
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    .line 589
    :cond_1d
    :try_start_1d
    iget-object v2, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_24

    goto :goto_b

    .line 597
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_24
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 598
    throw p1
.end method

.method public size()I
    .registers 3

    .line 786
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 787
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 789
    :try_start_5
    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 791
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 792
    throw v1
.end method

.method public take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 469
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 473
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_15

    goto :goto_5

    .line 476
    :cond_11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 477
    throw v1
.end method

.method public takeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 482
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 485
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 486
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_15

    goto :goto_5

    .line 489
    :cond_11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 490
    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    .line 872
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 873
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 875
    :try_start_5
    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 877
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    const/4 v3, 0x0

    :goto_c
    if-eqz v2, :cond_18

    add-int/lit8 v4, v3, 0x1

    .line 878
    iget-object v5, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, v1, v3

    .line 877
    iget-object v2, v2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    move v3, v4

    goto :goto_c

    .line 881
    :cond_18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 882
    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 924
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 926
    :try_start_5
    array-length v1, p1

    iget v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    if-ge v1, v2, :cond_1a

    .line 928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 931
    :cond_1a
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    const/4 v2, 0x0

    :goto_1d
    if-eqz v1, :cond_29

    add-int/lit8 v3, v2, 0x1

    .line 932
    iget-object v4, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v4, p1, v2

    .line 931
    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move v2, v3

    goto :goto_1d

    .line 933
    :cond_29
    array-length v1, p1

    if-le v1, v2, :cond_2f

    const/4 v1, 0x0

    .line 934
    aput-object v1, p1, v2
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    .line 937
    :cond_2f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_33
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 938
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 942
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 943
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 945
    :try_start_5
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_f

    .line 947
    const-string v1, "[]"
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_3e

    .line 960
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 949
    :cond_f
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    .line 950
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    :goto_19
    iget-object v3, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-ne v3, p0, :cond_1f

    .line 953
    const-string v3, "(this Collection)"

    :cond_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 954
    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_33

    const/16 v1, 0x5d

    .line 956
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_3e

    .line 960
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_33
    const/16 v3, 0x2c

    .line 957
    :try_start_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_19

    :catchall_3e
    move-exception v1

    .line 960
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 961
    throw v1
.end method

.method unlink(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 283
    iget-object v1, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v0, :cond_a

    .line 285
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    return-void

    :cond_a
    if-nez v1, :cond_10

    .line 287
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    return-void

    .line 289
    :cond_10
    iput-object v1, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 290
    iput-object v0, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    const/4 v0, 0x0

    .line 291
    iput-object v0, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 294
    iget p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 295
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-void
.end method

###### Class com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque.AnonymousClass1 (com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque$1)
.class synthetic Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$1;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque.AbstractItr (com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque$AbstractItr)
.class abstract Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .registers 3

    .line 1049
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iget-object p1, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1052
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1054
    :try_start_a
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->firstNode()Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_16

    .line 1055
    :cond_14
    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    :goto_16
    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    .line 1057
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1c
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1058
    throw v0
.end method

.method private succ(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1069
    :goto_0
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextNode(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1072
    :cond_8
    iget-object v1, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    if-ne v0, p1, :cond_14

    .line 1075
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->firstNode()Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object p1

    return-object p1

    :cond_14
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method advance()V
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1086
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1089
    :try_start_7
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {p0, v1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->succ(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_15

    .line 1090
    :cond_13
    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    :goto_15
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1b

    .line 1092
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1093
    throw v1
.end method

.method abstract firstNode()Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    .line 1097
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_c

    .line 1103
    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1104
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1105
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->advance()V

    return-object v0

    .line 1102
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method abstract nextNode(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .registers 4

    .line 1110
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 1113
    iput-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->lastRet:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1114
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1115
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1117
    :try_start_e
    iget-object v2, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_17

    .line 1118
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    .line 1120
    :cond_17
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1b
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1121
    throw v0

    .line 1112
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

###### Class com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque.DescendingItr (com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque$DescendingItr)
.class Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;
.super Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque<",
        "TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .registers 2

    .line 1141
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$1;)V
    .registers 3

    .line 1141
    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method firstNode()Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method nextNode(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1147
    iget-object p1, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    return-object p1
.end method

###### Class com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque.Itr (com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque$Itr)
.class Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Itr;
.super Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque<",
        "TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .registers 2

    .line 1128
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Itr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$1;)V
    .registers 3

    .line 1128
    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Itr;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method firstNode()Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1130
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Itr;->this$0:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method nextNode(Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;)",
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation

    .line 1134
    iget-object p1, p1, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    return-object p1
.end method

###### Class com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque.Node (com.nostra13.dcloudimageloader.core.assist.deque.LinkedBlockingDeque$Node)
.class final Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field next:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field prev:Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    return-void
.end method
