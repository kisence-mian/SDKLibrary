.class public final Lcom/bytedance/sdk/openadsdk/i/g/d;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field private static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/g/d;->b:Landroid/os/Handler;

    .line 46
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/g/d;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a()I
    .registers 3

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-lt v0, v2, :cond_14

    .line 232
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 235
    :cond_14
    :try_start_14
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 237
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/g/d$1;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/i/g/d$1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_31

    array-length v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_33

    :cond_31
    return v1

    .line 247
    :cond_32
    goto :goto_34

    .line 246
    :catchall_33
    move-exception v0

    .line 248
    :goto_34
    return v1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/i/e/a;)I
    .registers 5

    .line 252
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 253
    return v0

    .line 256
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a()I

    move-result v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    .line 257
    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 260
    :cond_18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a()I

    move-result v1

    const/16 v2, 0xce

    if-ne v1, v2, :cond_47

    .line 261
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 262
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 263
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 264
    if-ltz v1, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_47

    .line 265
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 266
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 271
    :cond_47
    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 3

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    return p1

    .line 101
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    .line 102
    :catch_c
    move-exception p0

    .line 103
    return p1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/i/e/a;Lcom/bytedance/sdk/openadsdk/i/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;
    .registers 11

    .line 497
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    .line 498
    if-nez v0, :cond_5d

    .line 499
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;)I

    move-result v4

    .line 500
    const/4 v1, 0x0

    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 501
    if-lez v4, :cond_5d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 502
    nop

    .line 503
    nop

    .line 505
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->g()Lcom/bytedance/sdk/openadsdk/i/e/f;

    move-result-object v0

    .line 506
    const-string v1, ""

    if-eqz v0, :cond_2c

    .line 507
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/i/e/f;->b:Ljava/lang/String;

    .line 508
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/i/e/f;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 506
    :cond_2c
    move-object v0, v1

    move-object v2, v0

    .line 510
    :goto_2e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->c()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 514
    :try_start_36
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 515
    const-string v6, "requestUrl"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string v2, "requestHeaders"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v0, "responseHeaders"

    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_50

    .line 521
    move-object v6, p0

    goto :goto_52

    .line 519
    :catchall_50
    move-exception p0

    .line 520
    move-object v6, v1

    .line 523
    :goto_52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-object v1, v0

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/i/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 524
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Lcom/bytedance/sdk/openadsdk/i/b/a;)V

    .line 527
    :cond_5d
    return-object v0
.end method

.method public static a(II)Ljava/lang/String;
    .registers 3

    .line 161
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->b(II)Ljava/lang/String;

    move-result-object p0

    .line 162
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_1b

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1b
    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/i/b/a;I)Ljava/lang/String;
    .registers 7

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string v1, "\r\n"

    if-gtz p1, :cond_13

    .line 198
    const-string v2, "HTTP/1.1 200 OK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 200
    :cond_13
    const-string v2, "HTTP/1.1 206 Partial Content"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :goto_1c
    const-string v2, "Accept-Ranges: bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, "Content-Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v2, "Content-Length: "

    if-gtz p1, :cond_46

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 209
    :cond_46
    const-string v3, "Content-Range: bytes "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/i/b/a;->c:I

    sub-int/2addr p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_7b
    const-string p0, "Connection: close"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 217
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_94

    .line 218
    const-string p1, "TAG_PROXY_WRITE_TO_MP"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_94
    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/i/e/a;I)Ljava/lang/String;
    .registers 13

    .line 108
    if-eqz p0, :cond_10a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_10a

    .line 112
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v1, :cond_72

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TAG_PROXY_headers"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_72
    nop

    .line 123
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->c()Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 125
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_c1

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    :goto_84
    if-ge v6, v5, :cond_c1

    .line 127
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/i/i$b;

    .line 128
    if-eqz v7, :cond_be

    .line 129
    iget-object v8, v7, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    .line 130
    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/i/i$b;->b:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v9, "Content-Range"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 134
    move v3, v4

    goto :goto_be

    .line 135
    :cond_ad
    const-string v9, "Accept-Ranges"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_be

    const-string v8, "bytes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_be

    .line 136
    move v3, v4

    .line 126
    :cond_be
    :goto_be
    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    .line 142
    :cond_c1
    if-eqz v3, :cond_f0

    .line 143
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;)I

    move-result p0

    .line 144
    if-lez p0, :cond_f0

    .line 145
    const-string v1, "Content-Range: bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_f0
    const-string p0, "Connection: close"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_109

    .line 154
    const-string p1, "TAG_PROXY_WRITE_TO_MP"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_109
    return-object p0

    .line 109
    :cond_10a
    :goto_10a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/i/e/a;ZZ)Ljava/lang/String;
    .registers 7

    .line 278
    const-string v0, "TAG_PROXY_Response"

    if-nez p0, :cond_e

    .line 279
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    const-string p1, "response null"

    if-eqz p0, :cond_d

    .line 280
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_d
    return-object p1

    .line 285
    :cond_e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->b()Z

    move-result v1

    if-nez v1, :cond_48

    .line 286
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    const-string p2, "response code: "

    if-eqz p1, :cond_32

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :cond_48
    const-string v1, "Content-Type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81

    .line 294
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    const-string p1, "Content-Type: "

    if-eqz p0, :cond_6f

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 301
    :cond_81
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Lcom/bytedance/sdk/openadsdk/i/e/a;)I

    move-result v1

    .line 302
    if-gtz v1, :cond_b3

    .line 303
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    const-string p1, "Content-Length: "

    if-eqz p0, :cond_a1

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_a1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_b3
    if-eqz p1, :cond_f1

    .line 310
    const-string p1, "Accept-Ranges"

    invoke-virtual {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/i/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    if-eqz p1, :cond_c5

    const-string v1, "bytes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f1

    .line 312
    :cond_c5
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    const-string p2, "Accept-Ranges: "

    if-eqz p0, :cond_df

    .line 314
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_df
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 321
    :cond_f1
    if-eqz p2, :cond_103

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/e/a;->d()Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_103

    .line 322
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    const-string p1, "response body null"

    if-eqz p0, :cond_102

    .line 323
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_102
    return-object p1

    .line 328
    :cond_103
    return-object v2
.end method

.method public static a([I)Ljava/lang/String;
    .registers 5

    .line 601
    if-nez p0, :cond_5

    .line 602
    const-string p0, ""

    return-object p0

    .line 604
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 605
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_34

    .line 606
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2c

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 609
    :cond_2c
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 605
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 613
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;"
        }
    .end annotation

    .line 368
    if-eqz p0, :cond_b9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_b9

    .line 372
    :cond_a
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    const-string v1, ": "

    const/4 v2, 0x0

    if-eqz v0, :cond_41

    .line 373
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_41

    .line 374
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/i/i$b;

    .line 375
    if-eqz v4, :cond_3e

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TAG_PROXY_PRE_FILTER"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 380
    :cond_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/i/i$b;

    .line 382
    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    const-string v6, "Host"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    .line 383
    const-string v6, "Keep-Alive"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    .line 384
    const-string v6, "Connection"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    .line 385
    const-string v6, "Proxy-Connection"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 386
    :cond_7e
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_81
    goto :goto_4a

    .line 434
    :cond_82
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 436
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_b8

    .line 437
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_8d
    if-ge v2, v0, :cond_b8

    .line 438
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/i/i$b;

    .line 439
    if-eqz v3, :cond_b5

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/i/i$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG_PROXY_POST_FILTER"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 445
    :cond_b8
    return-object p0

    .line 369
    :cond_b9
    :goto_b9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;"
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3e

    .line 476
    :cond_a
    :try_start_a
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 479
    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/i$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/i/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_39

    .line 480
    goto :goto_17

    .line 481
    :cond_38
    return-object v1

    .line 482
    :catchall_39
    move-exception p0

    .line 483
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 485
    return-object v0

    .line 472
    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_28

    .line 185
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    array-length v2, p0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1f

    aget-object v4, p0, v3

    .line 187
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 188
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 192
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_27

    :cond_26
    move-object v0, v1

    :goto_27
    return-object v0

    .line 182
    :cond_28
    :goto_28
    return-object v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    .line 52
    if-eqz p0, :cond_7

    .line 54
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 56
    goto :goto_7

    .line 55
    :catchall_6
    move-exception p0

    .line 58
    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/io/RandomAccessFile;)V
    .registers 2

    .line 79
    if-eqz p0, :cond_e

    .line 81
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 82
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_d

    .line 84
    goto :goto_e

    .line 83
    :catchall_d
    move-exception p0

    .line 86
    :cond_e
    :goto_e
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 3

    .line 340
    if-eqz p0, :cond_27

    .line 341
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/d;->b()Z

    move-result v0

    const-string v1, "TAG_PROXY_UTIL"

    if-eqz v0, :cond_1b

    .line 342
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 343
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p0, :cond_27

    .line 344
    const-string p0, "invoke in pool thread"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 347
    :cond_1b
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 348
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p0, :cond_27

    .line 349
    const-string p0, "invoke calling thread"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_27
    :goto_27
    return-void
.end method

.method public static a(Ljava/net/ServerSocket;)V
    .registers 1

    .line 61
    if-eqz p0, :cond_7

    .line 63
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 65
    goto :goto_7

    .line 64
    :catchall_6
    move-exception p0

    .line 67
    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .registers 1

    .line 70
    if-eqz p0, :cond_7

    .line 72
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 74
    goto :goto_7

    .line 73
    :catchall_6
    move-exception p0

    .line 76
    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .line 89
    if-eqz p0, :cond_14

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(II)Ljava/lang/String;
    .registers 4

    .line 166
    const-string v0, "-"

    if-ltz p0, :cond_1c

    if-lez p1, :cond_1c

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_1c
    if-lez p0, :cond_30

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_30
    if-gez p0, :cond_46

    if-lez p1, :cond_46

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 177
    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/i$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 543
    if-eqz p0, :cond_3d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3d

    .line 547
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_38

    .line 549
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/i/i$b;

    .line 550
    if-eqz v4, :cond_35

    .line 551
    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/i/i$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/i/i$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 554
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 544
    :cond_3d
    :goto_3d
    const-string p0, ""

    return-object p0
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 558
    if-eqz p0, :cond_43

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_43

    .line 562
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 564
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 565
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    goto :goto_16

    .line 567
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 559
    :cond_43
    :goto_43
    const-string p0, ""

    return-object p0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 2

    .line 356
    if-eqz p0, :cond_11

    .line 357
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/d;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 358
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_11

    .line 360
    :cond_c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/g/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    :cond_11
    :goto_11
    return-void
.end method

.method public static b()Z
    .registers 2

    .line 337
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    .line 333
    if-eqz p0, :cond_1c

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "application/octet-stream"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "binary/octet-stream"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method
