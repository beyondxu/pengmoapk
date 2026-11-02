###### Class net.lingala.zip4j.tasks.AddStreamToZipTask (net.lingala.zip4j.tasks.AddStreamToZipTask)
.class public Lnet/lingala/zip4j/tasks/AddStreamToZipTask;
.super Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;
.source "AddStreamToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask<",
        "Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    return-void
.end method

.method private removeFileIfExists(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/Zip4jConfig;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 85
    invoke-static {p1, p3}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 87
    invoke-virtual {p0, p1, p4, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->removeFile(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 22
    check-cast p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->executeTask(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 34
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 38
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    iget-object v1, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->removeFileIfExists(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/Zip4jConfig;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 46
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/model/ZipParameters;->setWriteExtendedLocalFileHeader(Z)V

    .line 48
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p2

    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 50
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEntrySize(J)V

    .line 53
    :cond_47
    new-instance p2, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getSplitLength()J

    move-result-wide v1

    invoke-direct {p2, v0, v1, v2}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 54
    :try_start_5c
    iget-object v0, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {p0, p2, v0}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->initializeOutputStream(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_c1

    .line 56
    :try_start_62
    iget-object v1, p1, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v1

    new-array v1, v1, [B

    .line 59
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->putNextEntry(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 62
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 63
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 64
    :goto_89
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_99

    const/4 v3, 0x0

    .line 65
    invoke-virtual {v0, v1, v3, v2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([BII)V

    goto :goto_89

    .line 69
    :cond_99
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->closeEntry()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    .line 71
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/AbstractFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 72
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AddStreamToZipTask;->updateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V
    :try_end_ac
    .catchall {:try_start_62 .. :try_end_ac} :catchall_b5

    :cond_ac
    if-eqz v0, :cond_b1

    .line 74
    :try_start_ae
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_c1

    :cond_b1
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    return-void

    :catchall_b5
    move-exception p1

    if-eqz v0, :cond_c0

    .line 53
    :try_start_b8
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bc

    goto :goto_c0

    :catchall_bc
    move-exception v0

    :try_start_bd
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c0
    :goto_c0
    throw p1
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_c1

    :catchall_c1
    move-exception p1

    :try_start_c2
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c6

    goto :goto_ca

    :catchall_c6
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ca
    throw p1

    .line 35
    :cond_cb
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "fileNameInZip has to be set in zipParameters when adding stream"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class net.lingala.zip4j.tasks.AddStreamToZipTask.AddStreamToZipTaskParameters (net.lingala.zip4j.tasks.AddStreamToZipTask$AddStreamToZipTaskParameters)
.class public Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;
.source "AddStreamToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/AddStreamToZipTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddStreamToZipTaskParameters"
.end annotation


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private final zipParameters:Lnet/lingala/zip4j/model/ZipParameters;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .registers 4

    .line 96
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 97
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->inputStream:Ljava/io/InputStream;

    .line 98
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;
    .registers 1

    .line 91
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    return-object p0
.end method

.method static synthetic access$100(Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;)Ljava/io/InputStream;
    .registers 1

    .line 91
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/AddStreamToZipTask$AddStreamToZipTaskParameters;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method
