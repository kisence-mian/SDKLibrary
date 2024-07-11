.class public Lcom/bytedance/sdk/openadsdk/i/g/a;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field static a:Landroid/content/Context;


# direct methods
.method public static a()Ljava/io/File;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/g/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/a;->d()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_22

    .line 133
    :cond_13
    new-instance v0, Ljava/io/File;

    if-nez p0, :cond_1b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/a;->a()Ljava/io/File;

    move-result-object p0

    :cond_1b
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/a;->a(Ljava/io/File;)V

    .line 135
    return-object v0

    .line 132
    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8

    .line 634
    const-string v0, "is error"

    const-string v1, "br error"

    const-string v2, "FileHelper"

    .line 636
    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_3c

    .line 639
    :goto_16
    :try_start_16
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 640
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 642
    :cond_20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_3a

    .line 648
    nop

    .line 649
    :try_start_25
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    .line 653
    goto :goto_2d

    .line 651
    :catchall_29
    move-exception v4

    .line 652
    invoke-static {v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    :goto_2d
    if-eqz p0, :cond_38

    .line 656
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_38

    .line 658
    :catchall_33
    move-exception p0

    .line 659
    invoke-static {v2, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39

    .line 660
    :cond_38
    :goto_38
    nop

    .line 642
    :goto_39
    return-object v3

    .line 643
    :catchall_3a
    move-exception v4

    goto :goto_3e

    :catchall_3c
    move-exception v4

    move-object v5, v3

    .line 644
    :goto_3e
    :try_start_3e
    const-string v6, "readStream error"

    invoke-static {v2, v6, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_5d

    .line 645
    nop

    .line 648
    if-eqz v5, :cond_4f

    .line 649
    :try_start_46
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4f

    .line 651
    :catchall_4a
    move-exception v4

    .line 652
    invoke-static {v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 653
    :cond_4f
    :goto_4f
    nop

    .line 655
    :goto_50
    if-eqz p0, :cond_5b

    .line 656
    :try_start_52
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5b

    .line 658
    :catchall_56
    move-exception p0

    .line 659
    invoke-static {v2, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5c

    .line 660
    :cond_5b
    :goto_5b
    nop

    .line 645
    :goto_5c
    return-object v3

    .line 647
    :catchall_5d
    move-exception v3

    .line 648
    if-eqz v5, :cond_69

    .line 649
    :try_start_60
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_69

    .line 651
    :catchall_64
    move-exception v4

    .line 652
    invoke-static {v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    .line 653
    :cond_69
    :goto_69
    nop

    .line 655
    :goto_6a
    if-eqz p0, :cond_75

    .line 656
    :try_start_6c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_75

    .line 658
    :catchall_70
    move-exception p0

    .line 659
    invoke-static {v2, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_76

    .line 660
    :cond_75
    :goto_75
    nop

    .line 661
    :goto_76
    throw v3
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .line 56
    if-eqz p0, :cond_5

    .line 57
    sput-object p0, Lcom/bytedance/sdk/openadsdk/i/g/a;->a:Landroid/content/Context;

    .line 58
    return-void

    .line 56
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/io/File;)V
    .registers 2

    .line 292
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 293
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 295
    :cond_9
    return-void
.end method

.method public static b()Ljava/io/File;
    .registers 3

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/a;->d()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1c

    .line 98
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/a;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "video"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/a;->a(Ljava/io/File;)V

    .line 100
    return-object v0

    .line 97
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 87
    if-nez v0, :cond_a

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 90
    :cond_a
    return-object v0
.end method

.method public static c()Z
    .registers 2

    .line 303
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "mounted_ro"

    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_19

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 308
    :goto_18
    goto :goto_22

    .line 306
    :catch_19
    move-exception v0

    .line 307
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/c;->a()Lcom/bytedance/sdk/openadsdk/i/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/g/c;->b()Z

    move-result v0

    .line 309
    :goto_22
    return v0
.end method

.method public static d()Z
    .registers 2

    .line 318
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 319
    :catch_b
    move-exception v0

    .line 321
    const/4 v0, 0x0

    return v0
.end method
