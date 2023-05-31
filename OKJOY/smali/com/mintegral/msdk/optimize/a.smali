.class public final Lcom/mintegral/msdk/optimize/a;
.super Ljava/lang/Object;
.source "SimpleDownload.java"


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/optimize/b;)V
    .registers 19

    .prologue
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v2, 0x0

    .line 20
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 21
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 24
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 27
    :cond_25
    invoke-interface/range {p3 .. p3}, Lcom/mintegral/msdk/optimize/b;->a()V

    .line 30
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 33
    const/16 v5, 0x1f40

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 35
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v8

    .line 36
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    int-to-double v12, v8

    div-double/2addr v10, v12

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_45} :catch_8c
    .catchall {:try_start_2 .. :try_end_45} :catchall_a5

    move-result-object v4

    .line 42
    const/16 v3, 0x400

    :try_start_48
    new-array v9, v3, [B

    .line 46
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v12, 0x1

    invoke-direct {v3, v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_50} :catch_cc
    .catchall {:try_start_48 .. :try_end_50} :catchall_bf

    move v2, v5

    move v5, v6

    .line 48
    :goto_52
    :try_start_52
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v12, -0x1

    if-eq v6, v12, :cond_72

    .line 49
    const/4 v12, 0x0

    invoke-virtual {v3, v9, v12, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 50
    add-int/2addr v5, v6

    .line 51
    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v6, v12

    .line 52
    const/16 v12, 0x200

    if-ge v2, v12, :cond_69

    const/16 v12, 0x64

    if-ne v6, v12, :cond_6f

    .line 54
    :cond_69
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lcom/mintegral/msdk/optimize/b;->a(I)V

    .line 56
    const/4 v2, 0x0

    .line 58
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_52

    .line 61
    :cond_72
    if-ne v5, v8, :cond_79

    .line 63
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lcom/mintegral/msdk/optimize/b;->a(Ljava/io/File;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_79} :catch_cf
    .catchall {:try_start_52 .. :try_end_79} :catchall_c4

    .line 74
    :cond_79
    :try_start_79
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_82

    .line 80
    :goto_7c
    if-eqz v4, :cond_81

    .line 81
    :try_start_7e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_87

    .line 87
    :cond_81
    :goto_81
    return-void

    .line 77
    :catch_82
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    .line 84
    :catch_87
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    .line 68
    :catch_8c
    move-exception v4

    :goto_8d
    :try_start_8d
    invoke-interface/range {p3 .. p3}, Lcom/mintegral/msdk/optimize/b;->b()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_c6

    .line 73
    if-eqz v2, :cond_95

    .line 74
    :try_start_92
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_a0

    .line 80
    :cond_95
    :goto_95
    if-eqz v3, :cond_81

    .line 81
    :try_start_97
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_81

    .line 84
    :catch_9b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    .line 77
    :catch_a0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95

    .line 72
    :catchall_a5
    move-exception v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v14

    .line 73
    :goto_aa
    if-eqz v3, :cond_af

    .line 74
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b5

    .line 80
    :cond_af
    :goto_af
    if-eqz v4, :cond_b4

    .line 81
    :try_start_b1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_ba

    .line 85
    :cond_b4
    :goto_b4
    throw v2

    .line 77
    :catch_b5
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 84
    :catch_ba
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b4

    .line 72
    :catchall_bf
    move-exception v3

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_aa

    :catchall_c4
    move-exception v2

    goto :goto_aa

    :catchall_c6
    move-exception v4

    move-object v14, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_aa

    .line 68
    :catch_cc
    move-exception v3

    move-object v3, v4

    goto :goto_8d

    :catch_cf
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_8d
.end method
