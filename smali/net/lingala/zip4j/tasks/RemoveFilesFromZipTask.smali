###### Class net.lingala.zip4j.tasks.RemoveFilesFromZipTask (net.lingala.zip4j.tasks.RemoveFilesFromZipTask)
.class public Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;
.super Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractModifyFileTask<",
        "Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .registers 4

    .line 28
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 29
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 30
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    return-void
.end method

.method private filterNonExistingEntries(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v2, v1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getFileHeader(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method private negate(J)J
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-eqz v2, :cond_8

    neg-long p1, p1

    return-wide p1

    .line 141
    :cond_8
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "long overflow"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private shouldEntryBeRemoved(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    .line 102
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return v2

    .line 104
    :cond_24
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method private updateHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;",
            "Lnet/lingala/zip4j/model/FileHeader;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 114
    iget-object v2, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0, p3, p4}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->negate(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->updateOffsetsForAllSubsequentFileHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 116
    iget-object p1, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v1

    sub-long/2addr v1, p3

    .line 117
    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 120
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 119
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(I)V

    .line 122
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()I

    move-result p2

    if-lez p2, :cond_32

    .line 124
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 123
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V

    .line 127
    :cond_32
    iget-object p1, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 128
    iget-object p1, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p1

    iget-object p2, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 129
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v1

    sub-long/2addr v1, p3

    .line 128
    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 131
    iget-object p1, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p1

    iget-object p2, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 132
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 131
    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 134
    iget-object p1, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object p1

    iget-object p2, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 135
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v1

    sub-long/2addr v1, p3

    .line 134
    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    :cond_78
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
    check-cast p1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)J
    .registers 4

    .line 82
    iget-object p1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

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
    check-cast p1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->executeTask(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 36
    iget-object v2, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    if-nez v2, :cond_df

    .line 40
    invoke-static {v0}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->filterNonExistingEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 42
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    .line 46
    :cond_1b
    iget-object v2, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->getTemporaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    .line 49
    :try_start_2a
    new-instance v3, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-direct {v3, v11}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_d4

    .line 50
    :try_start_2f
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v4, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_c9

    .line 53
    :try_start_40
    iget-object v4, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cloneAndSortFileHeadersByOffset(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 55
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const-wide/16 v4, 0x0

    :goto_54
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    .line 56
    iget-object v7, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1, v13, v6, v7}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->getOffsetOfNextEntry(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v7

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v15

    sub-long/2addr v7, v15

    .line 57
    invoke-direct {v1, v6, v10}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->shouldEntryBeRemoved(Lnet/lingala/zip4j/model/FileHeader;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 58
    invoke-direct {v1, v13, v6, v7, v8}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->updateHeaders(Ljava/util/List;Lnet/lingala/zip4j/model/FileHeader;J)V

    .line 60
    iget-object v9, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_86

    add-long/2addr v4, v7

    goto :goto_9c

    .line 61
    :cond_86
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "Could not remove entry from list of central directory headers"

    invoke-direct {v0, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_8e
    iget-object v6, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 68
    invoke-virtual {v6}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v9

    move-wide v6, v7

    move-object/from16 v8, p2

    .line 67
    invoke-super/range {v1 .. v9}, Lnet/lingala/zip4j/tasks/AbstractModifyFileTask;->copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 70
    :goto_9c
    invoke-virtual {v1}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->verifyIfTaskIsCancelled()V

    goto :goto_54

    .line 73
    :cond_a0
    iget-object v4, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v5, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v0, v0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v4, v5, v3, v0}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_ad
    .catchall {:try_start_40 .. :try_end_ad} :catchall_be

    const/4 v12, 0x1

    .line 75
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_c9

    :try_start_b1
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_d4

    .line 76
    iget-object v0, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v12, v0, v11}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    return-void

    :catchall_be
    move-exception v0

    move-object v4, v0

    .line 49
    :try_start_c0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_c8

    :catchall_c4
    move-exception v0

    :try_start_c5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c8
    throw v4
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v0

    move-object v2, v0

    :try_start_cb
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d3

    :catchall_cf
    move-exception v0

    :try_start_d0
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d3
    throw v2
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception v0

    .line 76
    iget-object v2, v1, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v12, v2, v11}, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;->cleanupFile(ZLjava/io/File;Ljava/io/File;)V

    .line 77
    throw v0

    .line 37
    :cond_df
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 149
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->REMOVE_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

###### Class net.lingala.zip4j.tasks.RemoveFilesFromZipTask.RemoveFilesFromZipTaskParameters (net.lingala.zip4j.tasks.RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters)
.class public Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveFilesFromZipTaskParameters"
.end annotation


# instance fields
.field private final filesToRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/lingala/zip4j/model/Zip4jConfig;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 157
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->filesToRemove:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;)Ljava/util/List;
    .registers 1

    .line 152
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/RemoveFilesFromZipTask$RemoveFilesFromZipTaskParameters;->filesToRemove:Ljava/util/List;

    return-object p0
.end method
