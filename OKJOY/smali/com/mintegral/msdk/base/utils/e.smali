.class public final Lcom/mintegral/msdk/base/utils/e;
.super Ljava/lang/Object;
.source "CommonFileUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1768
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v1

    .line 740
    :goto_f
    if-eqz v0, :cond_41

    .line 742
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->h:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v0

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/download/.mtg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 744
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 746
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 747
    aput-boolean v1, p2, v2

    .line 759
    :goto_3e
    return-object v0

    :cond_3f
    move v0, v2

    .line 1772
    goto :goto_f

    .line 751
    :cond_41
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 752
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 753
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/e;->f(Ljava/lang/String;)Z

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mtgdownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 756
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/e;->f(Ljava/lang/String;)Z

    .line 757
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    aput-boolean v2, p2, v2

    goto :goto_3e
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 203
    if-nez p0, :cond_4

    .line 232
    :cond_3
    :goto_3
    return-object v0

    .line 209
    :cond_4
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_55
    .catchall {:try_start_4 .. :try_end_e} :catchall_46

    .line 210
    :try_start_e
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_59
    .catchall {:try_start_e .. :try_end_13} :catchall_53

    .line 214
    :goto_13
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2f} :catch_30
    .catchall {:try_start_13 .. :try_end_2f} :catchall_53

    goto :goto_13

    .line 220
    :catch_30
    move-exception v1

    :goto_31
    :try_start_31
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_53

    .line 222
    if-eqz v3, :cond_39

    .line 224
    :try_start_36
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_4f

    .line 229
    :cond_39
    :goto_39
    if-eqz v2, :cond_3

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 224
    :cond_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_39

    .line 226
    :catch_44
    move-exception v1

    goto :goto_39

    .line 222
    :catchall_46
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_49
    if-eqz v3, :cond_4e

    .line 224
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_51

    .line 226
    :cond_4e
    :goto_4e
    throw v0

    :catch_4f
    move-exception v1

    goto :goto_39

    :catch_51
    move-exception v1

    goto :goto_4e

    .line 222
    :catchall_53
    move-exception v0

    goto :goto_49

    .line 220
    :catch_55
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_31

    :catch_59
    move-exception v1

    move-object v2, v0

    goto :goto_31
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 669
    const-string v1, ""

    .line 670
    if-eqz p0, :cond_7

    if-nez p1, :cond_a

    .line 671
    :cond_7
    const-string v0, "unzip srcFile or destDir is null "

    .line 733
    :cond_9
    :goto_9
    return-object v0

    .line 674
    :cond_a
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 675
    :cond_25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_33

    .line 677
    const-string v0, "unzip file not exists"

    goto :goto_9

    .line 684
    :cond_33
    :try_start_33
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 685
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3b} :catch_118
    .catchall {:try_start_33 .. :try_end_3b} :catchall_f8

    move-result-object v6

    move-object v3, v2

    .line 687
    :goto_3d
    :try_start_3d
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 688
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 689
    if-nez v0, :cond_62

    .line 690
    const-string v0, "unzip zipEntry is null"
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4d} :catch_86
    .catchall {:try_start_3d .. :try_end_4d} :catchall_112

    .line 718
    if-eqz v2, :cond_52

    .line 719
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5d

    .line 725
    :cond_52
    :goto_52
    if-eqz v3, :cond_9

    .line 726
    :try_start_54
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_9

    .line 729
    :catch_58
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 722
    :catch_5d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 693
    :cond_62
    :try_start_62
    new-instance v7, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 695
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_85} :catch_86
    .catchall {:try_start_62 .. :try_end_85} :catchall_112

    goto :goto_3d

    .line 710
    :catch_86
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 711
    :goto_89
    :try_start_89
    sget-boolean v3, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v3, :cond_90

    .line 712
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 714
    :cond_90
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_114

    move-result-object v0

    .line 718
    if-eqz v1, :cond_99

    .line 719
    :try_start_96
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_f3

    .line 725
    :cond_99
    :goto_99
    if-eqz v2, :cond_9

    .line 726
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a0

    goto/16 :goto_9

    .line 729
    :catch_a0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 697
    :cond_a6
    :try_start_a6
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b7

    .line 698
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 700
    :cond_b7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_bc} :catch_86
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_112

    .line 701
    :try_start_bc
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 702
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 704
    :goto_c4
    const/4 v3, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v0, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_d6

    .line 705
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_d1} :catch_d2
    .catchall {:try_start_bc .. :try_end_d1} :catchall_10f

    goto :goto_c4

    .line 710
    :catch_d2
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_89

    :cond_d6
    move-object v3, v4

    .line 708
    goto/16 :goto_3d

    .line 709
    :cond_d9
    :try_start_d9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_86
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_112

    .line 718
    if-eqz v2, :cond_e1

    .line 719
    :try_start_de
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e9

    .line 725
    :cond_e1
    :goto_e1
    if-eqz v3, :cond_e6

    .line 726
    :try_start_e3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_ee

    :cond_e6
    :goto_e6
    move-object v0, v1

    .line 733
    goto/16 :goto_9

    .line 722
    :catch_e9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e1

    .line 729
    :catch_ee
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e6

    .line 722
    :catch_f3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    .line 717
    :catchall_f8
    move-exception v0

    move-object v3, v2

    .line 718
    :goto_fa
    if-eqz v2, :cond_ff

    .line 719
    :try_start_fc
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_105

    .line 725
    :cond_ff
    :goto_ff
    if-eqz v3, :cond_104

    .line 726
    :try_start_101
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_10a

    .line 730
    :cond_104
    :goto_104
    throw v0

    .line 722
    :catch_105
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ff

    .line 729
    :catch_10a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_104

    .line 717
    :catchall_10f
    move-exception v0

    move-object v3, v4

    goto :goto_fa

    :catchall_112
    move-exception v0

    goto :goto_fa

    :catchall_114
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_fa

    .line 710
    :catch_118
    move-exception v0

    move-object v1, v2

    goto/16 :goto_89
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/utils/e$1;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/utils/e$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 288
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 290
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 242
    .line 1033
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    :cond_e
    move v2, v1

    .line 242
    :goto_f
    if-eqz v2, :cond_14

    .line 247
    :cond_11
    :goto_11
    return v0

    :cond_12
    move v2, v0

    .line 1033
    goto :goto_f

    .line 246
    :cond_14
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method public static a([BLjava/io/File;)Z
    .registers 5

    .prologue
    .line 584
    const/4 v1, 0x0

    .line 586
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    .line 587
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 589
    :cond_14
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_26
    .catchall {:try_start_1 .. :try_end_19} :catchall_36

    .line 590
    :try_start_19
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_45
    .catchall {:try_start_19 .. :try_end_1c} :catchall_42

    .line 597
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 603
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    .line 599
    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 592
    :catch_26
    move-exception v0

    :goto_27
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_36

    .line 595
    if-eqz v1, :cond_2f

    .line 597
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_31

    .line 593
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    goto :goto_20

    .line 599
    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    .line 595
    :catchall_36
    move-exception v0

    :goto_37
    if-eqz v1, :cond_3c

    .line 597
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 600
    :cond_3c
    :goto_3c
    throw v0

    .line 599
    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 595
    :catchall_42
    move-exception v0

    move-object v1, v2

    goto :goto_37

    .line 592
    :catch_45
    move-exception v0

    move-object v1, v2

    goto :goto_27
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 355
    const-string v0, ""

    .line 357
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 358
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 375
    :cond_b
    :goto_b
    return-object v0

    .line 361
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 362
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_1b

    array-length v1, v2

    if-nez v1, :cond_25

    .line 364
    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_b

    .line 373
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 367
    :cond_25
    :try_start_25
    array-length v3, v2

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v3, :cond_31

    aget-object v4, v2, v1

    .line 368
    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/e;->b(Ljava/io/File;)Ljava/lang/String;

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 370
    :cond_31
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_1f

    goto :goto_b
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/utils/e$2;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/utils/e$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 348
    return-void
.end method

.method public static b(Ljava/lang/String;)[Ljava/io/File;
    .registers 4

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    .line 262
    :cond_10
    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method private static c(Ljava/io/File;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    .line 98
    const/4 v4, 0x0

    .line 100
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 101
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_2a
    .catchall {:try_start_3 .. :try_end_e} :catchall_3a

    .line 102
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_49
    .catchall {:try_start_e .. :try_end_11} :catchall_46

    move-result v0

    int-to-long v0, v0

    .line 111
    :goto_13
    if-eqz v3, :cond_18

    .line 112
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_25

    .line 119
    :cond_18
    :goto_18
    return-wide v0

    .line 104
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 105
    const-string v2, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    const-string v3, "\u6587\u4ef6\u4e0d\u5b58\u5728!"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_2a
    .catchall {:try_start_19 .. :try_end_23} :catchall_3a

    move-object v3, v4

    goto :goto_13

    .line 115
    :catch_25
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 108
    :catch_2a
    move-exception v2

    move-object v3, v4

    :goto_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_46

    .line 111
    if-eqz v3, :cond_18

    .line 112
    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_18

    .line 115
    :catch_35
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 110
    :catchall_3a
    move-exception v0

    .line 111
    :goto_3b
    if-eqz v4, :cond_40

    .line 112
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 116
    :cond_40
    :goto_40
    throw v0

    .line 115
    :catch_41
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 110
    :catchall_46
    move-exception v0

    move-object v4, v3

    goto :goto_3b

    .line 108
    :catch_49
    move-exception v2

    goto :goto_2c
.end method

.method public static c(Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 299
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    :cond_6
    :goto_6
    return-void

    .line 302
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_6

    .line 307
    array-length v4, v1

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v4, :cond_6

    aget-object v5, v1, v0

    .line 308
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/32 v8, 0xf731400

    add-long/2addr v6, v8

    cmp-long v6, v6, v2

    if-gez v6, :cond_37

    .line 309
    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/e;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_3a

    .line 307
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 317
    :catch_3a
    move-exception v0

    goto :goto_6
.end method

.method private static d(Ljava/io/File;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    const-wide/16 v2, 0x0

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_26

    .line 133
    const/4 v0, 0x0

    :goto_9
    array-length v4, v1

    if-ge v0, v4, :cond_26

    .line 134
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 135
    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/e;->d(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 133
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 137
    :cond_1e
    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/e;->c(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1b

    .line 141
    :cond_26
    return-wide v2
.end method

.method static synthetic d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2384
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2386
    :try_start_5
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/e;->d(Ljava/io/File;)J

    move-result-wide v0

    .line 2387
    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 2388
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/e;->e(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_13} :catch_19

    .line 2394
    :cond_13
    :goto_13
    return-void

    .line 2391
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 2393
    :catch_19
    move-exception v0

    const-string v0, "CommonFileUtil"

    const-string v1, "clean memory failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private static e(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 405
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    new-instance v1, Lcom/mintegral/msdk/base/utils/e$3;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/utils/e$3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 413
    new-instance v0, Lcom/mintegral/msdk/base/utils/e$4;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/utils/e$4;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 429
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v2, v0, 0x2

    .line 430
    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_3a

    .line 431
    aget-object v3, v1, v0

    .line 432
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 433
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_32

    .line 430
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 438
    :catch_32
    move-exception v0

    const-string v0, "CommonFileUtil"

    const-string v1, "del memory failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_3a
    return-void
.end method

.method private static f(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 786
    :try_start_2
    const-string v2, "android.os.FileUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 787
    const-string v3, "setPermissions"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 788
    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1f9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_48} :catch_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_48} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_48} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_48} :catch_65
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_48} :catch_6e

    .line 801
    :goto_48
    return v0

    .line 790
    :catch_49
    move-exception v0

    .line 791
    const-string v2, "CommonFileUtil"

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_51
    move v0, v1

    .line 801
    goto :goto_48

    .line 792
    :catch_53
    move-exception v0

    .line 793
    const-string v2, "CommonFileUtil"

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    .line 794
    :catch_5c
    move-exception v0

    .line 795
    const-string v2, "CommonFileUtil"

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    .line 796
    :catch_65
    move-exception v0

    .line 797
    const-string v2, "CommonFileUtil"

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    .line 798
    :catch_6e
    move-exception v0

    .line 799
    const-string v2, "CommonFileUtil"

    const-string v3, "error when set permissions:"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51
.end method
