.class public Lcom/ssjj/fnsdk/core/FNApkExDatTool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/RandomAccessFile;J[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, p3}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method

.method public static getFNApkExDat(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFNApkExDat cancel: not found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1f
    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->readFNApkExDat(Ljava/io/File;)Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;

    move-result-object p0

    return-object p0
.end method

.method public static getFnExDatLen(Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, 0x5

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static readFNApkExDat(Ljava/io/File;)Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;
    .registers 18

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_138

    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/CommentHnadler;->getCommentLength(Ljava/nio/channels/FileChannel;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cl="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_134

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_30

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    :goto_34
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long v9, v5, v7

    if-gtz v9, :cond_47

    const-string v0, "no FNApkExDat"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_134

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_153

    :cond_47
    :try_start_47
    const-string v7, "FNDAT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v8, v7

    int-to-long v8, v8

    sub-long v8, v5, v8

    array-length v10, v7

    new-array v10, v10, [B

    invoke-static {v2, v8, v9, v10}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->a(Ljava/io/RandomAccessFile;J[B)V

    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    const-wide/16 v10, 0x1

    if-eqz v7, :cond_130

    new-instance v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;

    invoke-direct {v7}, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;-><init>()V
    :try_end_64
    .catchall {:try_start_47 .. :try_end_64} :catchall_134

    sub-long/2addr v8, v10

    const/4 v12, 0x1

    :try_start_66
    new-array v13, v12, [B

    int-to-long v14, v12

    sub-long/2addr v8, v14

    invoke-static {v2, v8, v9, v13}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->a(Ljava/io/RandomAccessFile;J[B)V

    const/16 v16, 0x0

    aget-byte v13, v13, v16

    iput-byte v13, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->encodeType:B

    new-array v13, v12, [B

    sub-long/2addr v8, v14

    invoke-static {v2, v8, v9, v13}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->a(Ljava/io/RandomAccessFile;J[B)V

    aget-byte v13, v13, v16

    iput-byte v13, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataFormat:B

    const/4 v13, 0x4

    new-array v14, v13, [B

    int-to-long v10, v13

    sub-long/2addr v8, v10

    invoke-static {v2, v8, v9, v14}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->a(Ljava/io/RandomAccessFile;J[B)V

    invoke-static {v14}, Lcom/ssjj/fnsdk/core/util/DigitUtils;->byte2Int([B)I

    move-result v10

    iput v10, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    iget v10, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    const/high16 v11, 0x100000

    if-le v10, v11, :cond_b1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "dataLen too big, cut "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " -> "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iput v11, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    :cond_b1
    iget v10, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iget v10, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    new-array v10, v10, [B

    invoke-static {v2, v8, v9, v10}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->a(Ljava/io/RandomAccessFile;J[B)V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v11, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->data:Ljava/lang/String;

    iget-object v10, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->data:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->dataLen:I

    if-eq v10, v11, :cond_d0

    :goto_cd
    const-wide/16 v7, 0x1

    goto :goto_131

    :cond_d0
    new-array v10, v12, [B

    const-wide/16 v11, 0x1

    sub-long/2addr v8, v11

    invoke-static {v2, v8, v9, v10}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->a(Ljava/io/RandomAccessFile;J[B)V

    aget-byte v10, v10, v16

    if-eqz v10, :cond_dd

    goto :goto_cd

    :cond_dd
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    sub-long/2addr v10, v8

    cmp-long v0, v10, v3

    if-gtz v0, :cond_10a

    iget-object v0, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->getFnExDatLen(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v5, v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sub-long/2addr v5, v0

    iput-wide v5, v7, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->noffsetOfComment:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_66 .. :try_end_106} :catchall_12e

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v7

    :cond_10a
    :try_start_10a
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Out size of range: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12e
    .catchall {:try_start_10a .. :try_end_12e} :catchall_134

    :catchall_12e
    move-exception v0

    goto :goto_136

    :cond_130
    move-wide v7, v10

    :goto_131
    sub-long/2addr v5, v7

    goto/16 :goto_34

    :catchall_134
    move-exception v0

    move-object v7, v1

    :goto_136
    move-object v1, v2

    goto :goto_13a

    :catchall_138
    move-exception v0

    move-object v7, v1

    :goto_13a
    :try_start_13a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFNApkExDat exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14f
    .catchall {:try_start_13a .. :try_end_14f} :catchall_154

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v7

    :goto_153
    return-object v1

    :catchall_154
    move-exception v0

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static writeFNApkExDat(Ljava/io/File;Ljava/lang/String;)V
    .registers 9

    const-string v0, "utf-8"

    if-eqz p0, :cond_7c

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_7c

    :cond_c
    if-nez p1, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    :try_start_10
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_70
    .catchall {:try_start_10 .. :try_end_17} :catchall_6e

    :try_start_17
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    sub-long/2addr v3, v5

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->getFnExDatLen(Ljava/lang/String;)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v1, v5

    int-to-short v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/util/DigitUtils;->short2Byte(S)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/util/DigitUtils;->int2Byte(I)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write(I)V

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write(I)V

    const-string p0, "FNDAT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write([B)V

    const-string p0, "Write fn data success"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_64} :catch_6b
    .catchall {:try_start_17 .. :try_end_64} :catchall_68

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_77

    :catchall_68
    move-exception p0

    move-object v1, v2

    goto :goto_78

    :catch_6b
    move-exception p0

    move-object v1, v2

    goto :goto_71

    :catchall_6e
    move-exception p0

    goto :goto_78

    :catch_70
    move-exception p0

    :goto_71
    :try_start_71
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_77
    return-void

    :goto_78
    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_7c
    :goto_7c
    const-string p0, "Write extra data cancel: not found apk"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
