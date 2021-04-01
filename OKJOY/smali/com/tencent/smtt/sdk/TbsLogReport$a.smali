.class Lcom/tencent/smtt/sdk/TbsLogReport$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/TbsLogReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_32
    .catchall {:try_start_1 .. :try_end_8} :catchall_42

    :try_start_8
    const-string v0, "00001000"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const-wide/16 v2, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    and-int v3, v2, v0

    if-lez v3, :cond_29

    const-wide/16 v4, 0x7

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    xor-int/lit8 v0, v0, -0x1

    and-int/lit16 v0, v0, 0xff

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_51
    .catchall {:try_start_8 .. :try_end_29} :catchall_4f

    :cond_29
    :try_start_29
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catch_32
    move-exception v0

    move-object v1, v2

    :goto_34
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_4f

    if-eqz v1, :cond_2c

    :try_start_39
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2c

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catchall_42
    move-exception v0

    move-object v1, v2

    :goto_44
    if-eqz v1, :cond_49

    :try_start_46
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    throw v0

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catchall_4f
    move-exception v0

    goto :goto_44

    :catch_51
    move-exception v0

    goto :goto_34
.end method


# virtual methods
.method public a()V
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->b:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_e6
    .catchall {:try_start_1 .. :try_end_8} :catchall_db

    :try_start_8
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_e9
    .catchall {:try_start_8 .. :try_end_12} :catchall_df

    const/16 v0, 0x800

    :try_start_14
    new-array v0, v0, [B

    iget-object v6, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_79
    .catchall {:try_start_14 .. :try_end_18} :catchall_94

    :try_start_18
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_f4
    .catchall {:try_start_18 .. :try_end_1d} :catchall_aa

    :try_start_1d
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v7, 0x800

    invoke-direct {v1, v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_f8
    .catchall {:try_start_1d .. :try_end_24} :catchall_ec

    :try_start_24
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_38
    const/4 v2, 0x0

    const/16 v6, 0x800

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_67

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_46} :catch_47
    .catchall {:try_start_24 .. :try_end_46} :catchall_ef

    goto :goto_38

    :catch_47
    move-exception v0

    move-object v2, v3

    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_f1

    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_79
    .catchall {:try_start_4e .. :try_end_51} :catchall_94

    :cond_51
    :goto_51
    if-eqz v2, :cond_56

    :try_start_53
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_79
    .catchall {:try_start_53 .. :try_end_56} :catchall_94

    :cond_56
    :goto_56
    :try_start_56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_60} :catch_79
    .catchall {:try_start_56 .. :try_end_60} :catchall_94

    :try_start_60
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_c2

    :goto_63
    :try_start_63
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_c7

    :cond_66
    :goto_66
    return-void

    :cond_67
    :try_start_67
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_47
    .catchall {:try_start_67 .. :try_end_6d} :catchall_ef

    :try_start_6d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_79
    .catchall {:try_start_6d .. :try_end_70} :catchall_94

    :goto_70
    :try_start_70
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_79
    .catchall {:try_start_70 .. :try_end_73} :catchall_94

    goto :goto_56

    :catch_74
    move-exception v0

    :try_start_75
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79
    .catchall {:try_start_75 .. :try_end_78} :catchall_94

    goto :goto_56

    :catch_79
    move-exception v0

    move-object v2, v4

    move-object v1, v5

    :goto_7c
    :try_start_7c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_e2

    if-eqz v2, :cond_84

    :try_start_81
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_cc

    :cond_84
    :goto_84
    if-eqz v1, :cond_66

    :try_start_86
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_66

    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    :catch_8f
    move-exception v0

    :try_start_90
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_79
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_70

    :catchall_94
    move-exception v0

    :goto_95
    if-eqz v4, :cond_9a

    :try_start_97
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_d1

    :cond_9a
    :goto_9a
    if-eqz v5, :cond_9f

    :try_start_9c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_d6

    :cond_9f
    :goto_9f
    throw v0

    :catch_a0
    move-exception v0

    :try_start_a1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    :catch_a5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a9} :catch_79
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_94

    goto :goto_56

    :catchall_aa
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_ad
    if-eqz v1, :cond_b2

    :try_start_af
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_79
    .catchall {:try_start_af .. :try_end_b2} :catchall_94

    :cond_b2
    :goto_b2
    if-eqz v3, :cond_b7

    :try_start_b4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_bd
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_79
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_94

    :cond_b7
    :goto_b7
    :try_start_b7
    throw v0

    :catch_b8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b2

    :catch_bd
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c1} :catch_79
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_94

    goto :goto_b7

    :catch_c2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :catch_c7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    :catch_cc
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_84

    :catch_d1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    :catch_d6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9f

    :catchall_db
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    goto :goto_95

    :catchall_df
    move-exception v0

    move-object v4, v2

    goto :goto_95

    :catchall_e2
    move-exception v0

    move-object v4, v2

    move-object v5, v1

    goto :goto_95

    :catch_e6
    move-exception v0

    move-object v1, v2

    goto :goto_7c

    :catch_e9
    move-exception v0

    move-object v1, v5

    goto :goto_7c

    :catchall_ec
    move-exception v0

    move-object v1, v2

    goto :goto_ad

    :catchall_ef
    move-exception v0

    goto :goto_ad

    :catchall_f1
    move-exception v0

    move-object v3, v2

    goto :goto_ad

    :catch_f4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_49

    :catch_f8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_49
.end method
