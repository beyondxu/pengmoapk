###### Class com.facebook.soloader.MinElf (com.facebook.soloader.MinElf)
.class public final Lcom/facebook/soloader/MinElf;
.super Ljava/lang/Object;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/MinElf$ElfError;,
        Lcom/facebook/soloader/MinElf$ISA;
    }
.end annotation


# static fields
.field public static final DT_NEEDED:I = 0x1

.field public static final DT_NULL:I = 0x0

.field public static final DT_STRTAB:I = 0x5

.field public static final ELF_MAGIC:I = 0x464c457f

.field public static final PN_XNUM:I = 0xffff

.field public static final PT_DYNAMIC:I = 0x2

.field public static final PT_LOAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MinElf"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract_DT_NEEDED(Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    instance-of v0, p0, Lcom/facebook/soloader/ElfFileChannel;

    if-eqz v0, :cond_b

    .line 102
    check-cast p0, Lcom/facebook/soloader/ElfFileChannel;

    invoke-static {p0}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED_with_retries(Lcom/facebook/soloader/ElfFileChannel;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_b
    invoke-static {p0}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED_no_retries(Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extract_DT_NEEDED(Ljava/io/File;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/facebook/soloader/ElfFileChannel;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/ElfFileChannel;-><init>(Ljava/io/File;)V

    .line 56
    :try_start_5
    invoke-static {v0}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 57
    invoke-virtual {v0}, Lcom/facebook/soloader/ElfFileChannel;->close()V

    return-object p0

    :catchall_d
    move-exception p0

    .line 55
    :try_start_e
    invoke-virtual {v0}, Lcom/facebook/soloader/ElfFileChannel;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p0
.end method

.method private static extract_DT_NEEDED_no_retries(Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 113
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 117
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    .line 118
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    const-wide/32 v6, 0x464c457f

    cmp-long v8, v4, v6

    if-nez v8, :cond_1e1

    const-wide/16 v4, 0x4

    .line 127
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu8(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)S

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_24

    goto :goto_25

    :cond_24
    const/4 v8, 0x0

    :goto_25
    const-wide/16 v9, 0x5

    .line 128
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu8(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)S

    move-result v6

    const/4 v11, 0x2

    if-ne v6, v11, :cond_33

    .line 129
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_33
    const-wide/16 v11, 0x1c

    const-wide/16 v13, 0x20

    if-eqz v8, :cond_3e

    .line 136
    invoke-static {v0, v1, v11, v12}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v15

    goto :goto_42

    :cond_3e
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v15

    :goto_42
    move-wide/from16 v17, v2

    const-wide/16 v2, 0x2c

    if-eqz v8, :cond_50

    .line 138
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu16(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)I

    move-result v6

    move-wide/from16 v19, v2

    int-to-long v2, v6

    goto :goto_59

    :cond_50
    move-wide/from16 v19, v2

    const-wide/16 v2, 0x38

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu16(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)I

    move-result v2

    int-to-long v2, v2

    :goto_59
    move-wide/from16 v21, v4

    if-eqz v8, :cond_60

    const-wide/16 v4, 0x2a

    goto :goto_62

    :cond_60
    const-wide/16 v4, 0x36

    .line 141
    :goto_62
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu16(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)I

    move-result v4

    const-wide/32 v23, 0xffff

    const-wide/16 v5, 0x28

    cmp-long v25, v2, v23

    if-nez v25, :cond_88

    if-eqz v8, :cond_76

    .line 145
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    goto :goto_7a

    :cond_76
    invoke-static {v0, v1, v5, v6}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    :goto_7a
    if-eqz v8, :cond_82

    add-long/2addr v2, v11

    .line 149
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    goto :goto_88

    :cond_82
    add-long v2, v2, v19

    .line 150
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    :cond_88
    :goto_88
    move-wide v13, v15

    move-wide/from16 v11, v17

    :goto_8b
    const-wide/16 v19, 0x1

    const-wide/16 v23, 0x8

    cmp-long v25, v11, v2

    if-gez v25, :cond_bd

    if-eqz v8, :cond_9a

    .line 161
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v25

    goto :goto_9e

    .line 162
    :cond_9a
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v25

    :goto_9e
    const-wide/16 v27, 0x2

    cmp-long v29, v25, v27

    if-nez v29, :cond_b4

    if-eqz v8, :cond_ad

    add-long v13, v13, v21

    .line 167
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    goto :goto_bf

    :cond_ad
    add-long v13, v13, v23

    .line 168
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    goto :goto_bf

    :cond_b4
    move-wide/from16 v25, v5

    int-to-long v5, v4

    add-long/2addr v13, v5

    add-long v11, v11, v19

    move-wide/from16 v5, v25

    goto :goto_8b

    :cond_bd
    move-wide/from16 v11, v17

    :goto_bf
    move-wide/from16 v25, v5

    cmp-long v5, v11, v17

    if-eqz v5, :cond_1d9

    move-wide v5, v11

    move-wide/from16 v27, v17

    const/4 v13, 0x0

    :goto_c9
    if-eqz v8, :cond_d0

    .line 191
    invoke-static {v0, v1, v5, v6}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v29

    goto :goto_d4

    :cond_d0
    invoke-static {v0, v1, v5, v6}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v29

    :goto_d4
    const v14, 0x7fffffff

    .line 193
    const-string v7, "malformed DT_NEEDED section"

    cmp-long v31, v29, v19

    if-nez v31, :cond_e8

    if-eq v13, v14, :cond_e2

    add-int/lit8 v13, v13, 0x1

    goto :goto_fd

    .line 195
    :cond_e2
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v7}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e8
    cmp-long v31, v29, v9

    if-nez v31, :cond_fd

    if-eqz v8, :cond_f5

    add-long v9, v5, v21

    .line 201
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_fb

    :cond_f5
    add-long v9, v5, v23

    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    :goto_fb
    move-wide/from16 v27, v9

    :cond_fd
    :goto_fd
    if-eqz v8, :cond_102

    move-wide/from16 v33, v23

    goto :goto_104

    :cond_102
    const-wide/16 v33, 0x10

    :goto_104
    add-long v5, v5, v33

    cmp-long v33, v29, v17

    if-nez v33, :cond_1d5

    cmp-long v5, v27, v17

    if-eqz v5, :cond_1cd

    move-wide v5, v15

    const/4 v15, 0x0

    const-wide/16 v29, 0x10

    :goto_112
    int-to-long v9, v15

    cmp-long v16, v9, v2

    if-gez v16, :cond_171

    if-eqz v8, :cond_11e

    .line 219
    invoke-static {v0, v1, v5, v6}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_122

    .line 220
    :cond_11e
    invoke-static {v0, v1, v5, v6}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    :goto_122
    cmp-long v16, v9, v19

    if-nez v16, :cond_167

    if-eqz v8, :cond_12f

    add-long v9, v5, v23

    .line 225
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_135

    :cond_12f
    add-long v9, v5, v29

    .line 226
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    :goto_135
    if-eqz v8, :cond_142

    const-wide/16 v31, 0x14

    move/from16 v16, v15

    add-long v14, v5, v31

    .line 230
    invoke-static {v0, v1, v14, v15}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v14

    goto :goto_14a

    :cond_142
    move/from16 v16, v15

    add-long v14, v5, v25

    .line 231
    invoke-static {v0, v1, v14, v15}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v14

    :goto_14a
    cmp-long v31, v9, v27

    if-gtz v31, :cond_169

    add-long/2addr v14, v9

    cmp-long v31, v27, v14

    if-gez v31, :cond_169

    if-eqz v8, :cond_15c

    add-long v5, v5, v21

    .line 236
    invoke-static {v0, v1, v5, v6}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    goto :goto_162

    :cond_15c
    add-long v5, v5, v23

    .line 237
    invoke-static {v0, v1, v5, v6}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    :goto_162
    sub-long v27, v27, v9

    add-long v2, v2, v27

    goto :goto_173

    :cond_167
    move/from16 v16, v15

    :cond_169
    int-to-long v9, v4

    add-long/2addr v5, v9

    add-int/lit8 v15, v16, 0x1

    const v14, 0x7fffffff

    goto :goto_112

    :cond_171
    move-wide/from16 v2, v17

    :goto_173
    cmp-long v4, v2, v17

    if-eqz v4, :cond_1c5

    .line 251
    new-array v4, v13, [Ljava/lang/String;

    const/4 v5, 0x0

    :cond_17a
    if-eqz v8, :cond_181

    .line 257
    invoke-static {v0, v1, v11, v12}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_185

    :cond_181
    invoke-static {v0, v1, v11, v12}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    :goto_185
    cmp-long v6, v9, v19

    if-nez v6, :cond_1ad

    if-eqz v8, :cond_192

    add-long v14, v11, v21

    .line 261
    invoke-static {v0, v1, v14, v15}, Lcom/facebook/soloader/MinElf;->getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v14

    goto :goto_198

    :cond_192
    add-long v14, v11, v23

    invoke-static {v0, v1, v14, v15}, Lcom/facebook/soloader/MinElf;->get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v14

    :goto_198
    add-long/2addr v14, v2

    .line 263
    invoke-static {v0, v1, v14, v15}, Lcom/facebook/soloader/MinElf;->getSz(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_1a7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b0

    .line 265
    :cond_1a7
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v7}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ad
    const v6, 0x7fffffff

    :goto_1b0
    if-eqz v8, :cond_1b5

    move-wide/from16 v14, v23

    goto :goto_1b7

    :cond_1b5
    move-wide/from16 v14, v29

    :goto_1b7
    add-long/2addr v11, v14

    cmp-long v14, v9, v17

    if-nez v14, :cond_17a

    if-ne v5, v13, :cond_1bf

    return-object v4

    .line 275
    :cond_1bf
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v7}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1c5
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "did not find file offset of DT_STRTAB table"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1cd
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "Dynamic section string-table not found"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d5
    const-wide/16 v9, 0x5

    goto/16 :goto_c9

    .line 178
    :cond_1d9
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "ELF file does not contain dynamic linking information"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1e1
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file is not ELF: magic is 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", it should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extract_DT_NEEDED_with_retries(Lcom/facebook/soloader/ElfFileChannel;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    :goto_1
    :try_start_1
    invoke-static {p0}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED_no_retries(Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1a

    .line 84
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 85
    const-string v2, "MinElf"

    const-string v3, "retrying extract_DT_NEEDED due to ClosedByInterruptException"

    invoke-static {v2, v3, v1}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p0}, Lcom/facebook/soloader/ElfFileChannel;->openChannel()V

    goto :goto_1

    .line 76
    :cond_1a
    throw v1
.end method

.method private static get64(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 312
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 313
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getSz(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    .line 284
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/soloader/MinElf;->getu8(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)S

    move-result p2

    if-eqz p2, :cond_14

    int-to-char p2, p2

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v1

    goto :goto_5

    .line 288
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getu16(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 322
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static getu32(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 317
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long p0, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    return-wide p0
.end method

.method private static getu8(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;J)S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 327
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 328
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static read(Lcom/facebook/soloader/ElfByteChannel;Ljava/nio/ByteBuffer;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 294
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 296
    :goto_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_18

    .line 297
    invoke-interface {p0, p1, p3, p4}, Lcom/facebook/soloader/ElfByteChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_15

    goto :goto_18

    :cond_15
    int-to-long v1, p2

    add-long/2addr p3, v1

    goto :goto_7

    .line 304
    :cond_18
    :goto_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    if-gtz p0, :cond_22

    .line 308
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 305
    :cond_22
    new-instance p0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string p1, "ELF file truncated"

    invoke-direct {p0, p1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.facebook.soloader.MinElf.ElfError (com.facebook.soloader.MinElf$ElfError)
.class public Lcom/facebook/soloader/MinElf$ElfError;
.super Ljava/lang/UnsatisfiedLinkError;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/MinElf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ElfError"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 334
    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.soloader.MinElf.ISA (com.facebook.soloader.MinElf$ISA)
.class public interface abstract Lcom/facebook/soloader/MinElf$ISA;
.super Ljava/lang/Object;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/MinElf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISA"
.end annotation


# static fields
.field public static final AARCH64:Ljava/lang/String; = "arm64-v8a"

.field public static final ARM:Ljava/lang/String; = "armeabi-v7a"

.field public static final X86:Ljava/lang/String; = "x86"

.field public static final X86_64:Ljava/lang/String; = "x86_64"
