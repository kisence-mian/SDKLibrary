.class public Lcom/bytedance/tea/crash/g/d;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 259
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 260
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 262
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    :try_start_13
    const-string p1, "url"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string p1, "body"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string p1, "dump_file"

    if-nez p4, :cond_23

    const-string p4, ""

    :cond_23
    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string p1, "encrypt"

    invoke-virtual {p0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 269
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_33} :catch_39
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_33} :catch_34

    goto :goto_3d

    .line 272
    :catch_34
    move-exception p0

    .line 273
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 270
    :catch_39
    move-exception p0

    .line 271
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 274
    :goto_3d
    nop

    .line 275
    :goto_3e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;
    .registers 11

    .line 246
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 118
    return-object v1

    .line 120
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    nop

    .line 124
    :try_start_13
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_38

    .line 126
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    if-eqz p1, :cond_1d

    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_35

    goto :goto_1d

    .line 133
    :cond_2c
    invoke-static {v2}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :catchall_35
    move-exception p0

    move-object v1, v2

    goto :goto_39

    :catchall_38
    move-exception p0

    :goto_39
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 319
    const-string v0, " "

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_3a

    const-string v2, "null"

    if-nez p1, :cond_18

    move-object p1, v2

    :cond_18
    :try_start_18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_23

    move-object p2, v2

    :cond_23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/h;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_39} :catch_3a

    .line 325
    goto :goto_3e

    .line 323
    :catch_3a
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 326
    :goto_3e
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    return-void

    .line 48
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    const/4 v0, 0x0

    .line 51
    :try_start_f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_26

    .line 52
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 53
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_23

    .line 55
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_23
    move-exception p0

    move-object v0, v1

    goto :goto_27

    :catchall_26
    move-exception p0

    :goto_27
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 2

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static a(Ljava/io/File;Z)Z
    .registers 6

    .line 90
    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3d

    .line 93
    :cond_9
    nop

    .line 94
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3c

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 96
    const/4 v1, 0x0

    move v2, v0

    :goto_17
    if-eqz p1, :cond_36

    array-length v3, p1

    if-ge v1, v3, :cond_36

    .line 97
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 98
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_33

    .line 100
    :cond_2c
    aget-object v3, p1, v1

    invoke-static {v3, v0}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;Z)Z

    move-result v3

    and-int/2addr v2, v3

    .line 96
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 104
    :cond_36
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;)Z

    move-result p0

    and-int v0, v2, p0

    .line 106
    :cond_3c
    return v0

    .line 91
    :cond_3d
    :goto_3d
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 67
    return v1

    .line 69
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/c;
    .registers 4

    .line 163
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance p0, Lcom/bytedance/tea/crash/c/c;

    invoke-direct {p0}, Lcom/bytedance/tea/crash/c/c;-><init>()V

    .line 166
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/tea/crash/c/c;->a(Ljava/lang/String;)V

    .line 167
    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/tea/crash/c/c;->a(Lorg/json/JSONObject;)V

    .line 168
    const-string v1, "dump_file"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/tea/crash/c/c;->b(Ljava/lang/String;)V

    .line 169
    const-string v1, "encrypt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/tea/crash/c/c;->a(Z)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    .line 170
    return-object p0

    .line 171
    :catchall_34
    move-exception p0

    .line 173
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 331
    nop

    .line 333
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x3e8

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_33
    .catchall {:try_start_2 .. :try_end_13} :catchall_31

    .line 335
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 336
    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 337
    if-lez v2, :cond_25

    .line 338
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 340
    :cond_25
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2b} :catch_2f
    .catchall {:try_start_13 .. :try_end_2b} :catchall_3d

    .line 344
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 340
    return-object p0

    .line 341
    :catch_2f
    move-exception p0

    goto :goto_35

    .line 344
    :catchall_31
    move-exception p0

    goto :goto_3f

    .line 341
    :catch_33
    move-exception p0

    move-object v1, v0

    .line 342
    :goto_35
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3d

    .line 344
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 345
    nop

    .line 346
    return-object v0

    .line 344
    :catchall_3d
    move-exception p0

    move-object v0, v1

    :goto_3f
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method
