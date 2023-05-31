.class public final Lcom/bytedance/sdk/openadsdk/h/g/d;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field private static final b:Landroid/os/Handler;

.field private static final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/g/d;->b:Landroid/os/Handler;

    .line 43
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/g/d;->a:Ljava/nio/charset/Charset;

    .line 362
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/g/d;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 228
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_14

    .line 229
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 245
    :cond_13
    :goto_13
    return v0

    .line 232
    :cond_14
    :try_start_14
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 234
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/g/d$1;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/h/g/d$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_13

    array-length v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_31} :catch_33

    move-result v0

    goto :goto_13

    .line 243
    :catch_33
    move-exception v1

    goto :goto_13
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/h/e/a;)I
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 249
    if-nez p0, :cond_5

    .line 268
    :cond_4
    :goto_4
    return v0

    .line 253
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_18

    .line 254
    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_4

    .line 257
    :cond_18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a()I

    move-result v1

    const/16 v2, 0xce

    if-ne v1, v2, :cond_4

    .line 258
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v3}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 260
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 261
    if-ltz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 262
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 3

    .prologue
    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    :goto_6
    return p1

    .line 98
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result p1

    goto :goto_6

    .line 99
    :catch_c
    move-exception v0

    goto :goto_6
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/h/e/a;Lcom/bytedance/sdk/openadsdk/h/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;
    .registers 11

    .prologue
    .line 494
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v0

    .line 495
    if-nez v0, :cond_55

    .line 496
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;)I

    move-result v3

    .line 497
    const-string v1, "Content-Type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    if-lez v3, :cond_55

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 499
    const-string v1, ""

    .line 500
    const-string v0, ""

    .line 502
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->g()Lcom/bytedance/sdk/openadsdk/h/e/f;

    move-result-object v4

    .line 503
    if-eqz v4, :cond_2b

    .line 504
    iget-object v1, v4, Lcom/bytedance/sdk/openadsdk/h/e/f;->b:Ljava/lang/String;

    .line 505
    iget-object v0, v4, Lcom/bytedance/sdk/openadsdk/h/e/f;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 507
    :cond_2b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/h/g/d;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 511
    :try_start_33
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 512
    const-string v6, "requestUrl"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v1, "requestHeaders"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v0, "responseHeaders"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_4a} :catch_56

    move-result-object v5

    .line 520
    :goto_4b
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-object v1, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/h/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 521
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;)V

    .line 524
    :cond_55
    return-object v0

    .line 516
    :catch_56
    move-exception v0

    .line 517
    const-string v5, ""

    goto :goto_4b
.end method

.method public static a(II)Ljava/lang/String;
    .registers 5

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->b(II)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/h/b/a;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    if-gtz p1, :cond_5f

    .line 195
    const-string v1, "HTTP/1.1 200 OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :goto_12
    const-string v1, "Accept-Ranges: bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    if-gtz p1, :cond_6b

    .line 204
    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_41
    const-string v1, "Connection: close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_5e

    .line 215
    const-string v1, "TAG_PROXY_WRITE_TO_MP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_5e
    return-object v0

    .line 197
    :cond_5f
    const-string v1, "HTTP/1.1 206 Partial Content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 206
    :cond_6b
    const-string v1, "Content-Range: bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/h/e/a;I)Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 105
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 106
    :cond_b
    const/4 v0, 0x0

    .line 154
    :cond_c
    :goto_c
    return-object v0

    .line 109
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_75

    .line 113
    const-string v0, "TAG_PROXY_headers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_75
    const/4 v2, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->c()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 122
    if-eqz v5, :cond_c6

    .line 123
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v3, v1

    :goto_85
    if-ge v3, v6, :cond_c6

    .line 124
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 125
    if-eqz v0, :cond_116

    .line 126
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    .line 127
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    .line 128
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v8, "Content-Range"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b4

    move v0, v1

    .line 123
    :goto_af
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_85

    .line 132
    :cond_b4
    const-string v8, "Accept-Ranges"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_116

    const-string v7, "bytes"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_116

    move v0, v1

    .line 133
    goto :goto_af

    .line 139
    :cond_c6
    if-eqz v2, :cond_f7

    .line 140
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;)I

    move-result v0

    .line 141
    if-lez v0, :cond_f7

    .line 142
    const-string v2, "Content-Range: bytes "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_f7
    const-string v0, "Connection: close"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v0, "\r\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_c

    .line 151
    const-string v1, "TAG_PROXY_WRITE_TO_MP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_116
    move v0, v2

    goto :goto_af
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/h/e/a;ZZ)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 275
    if-nez p0, :cond_11

    .line 276
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_e

    .line 277
    const-string v0, "TAG_PROXY_Response"

    const-string v1, "response null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_e
    const-string v0, "response null"

    .line 325
    :cond_10
    :goto_10
    return-object v0

    .line 282
    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->b()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 283
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_37

    .line 284
    const-string v0, "TAG_PROXY_Response"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 289
    :cond_4f
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 291
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_77

    .line 293
    const-string v0, "TAG_PROXY_Response"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 298
    :cond_8b
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;)I

    move-result v1

    .line 299
    if-gtz v1, :cond_c2

    .line 300
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_ad

    .line 301
    const-string v0, "TAG_PROXY_Response"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 306
    :cond_c2
    if-eqz p1, :cond_105

    .line 307
    const-string v1, "Accept-Ranges"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_d4

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_105

    .line 309
    :cond_d4
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_f0

    .line 311
    const-string v0, "TAG_PROXY_Response"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept-Ranges: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept-Ranges: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 318
    :cond_105
    if-eqz p2, :cond_10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_10

    .line 319
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_118

    .line 320
    const-string v0, "TAG_PROXY_Response"

    const-string v1, "response body null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_118
    const-string v0, "response body null"

    goto/16 :goto_10
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 365
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 366
    :cond_9
    const/4 p0, 0x0

    .line 442
    :cond_a
    return-object p0

    .line 369
    :cond_b
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_42

    .line 370
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_14
    if-ge v2, v3, :cond_42

    .line 371
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 372
    if-eqz v0, :cond_3e

    .line 373
    const-string v4, "TAG_PROXY_PRE_FILTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 377
    :cond_42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 379
    const-string v4, "Host"

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "Keep-Alive"

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    .line 380
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "Connection"

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    .line 381
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    const-string v4, "Proxy-Connection"

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    .line 382
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 383
    :cond_7f
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 431
    :cond_83
    invoke-interface {p0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 433
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_a

    .line 434
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_8e
    if-ge v1, v2, :cond_a

    .line 435
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 436
    if-eqz v0, :cond_b8

    .line 437
    const-string v3, "TAG_PROXY_POST_FILTER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_b8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8e
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 468
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    move-object v0, v3

    .line 482
    :goto_a
    return-object v0

    .line 473
    :cond_b
    :try_start_b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 474
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 476
    new-instance v5, Lcom/bytedance/sdk/openadsdk/h/i$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lcom/bytedance/sdk/openadsdk/h/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_38} :catch_39

    goto :goto_18

    .line 479
    :catch_39
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v3

    .line 482
    goto :goto_a

    :cond_3f
    move-object v0, v2

    .line 478
    goto :goto_a
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 178
    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    .line 189
    :cond_6
    :goto_6
    return-object v0

    .line 182
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    array-length v3, p0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_1f

    aget-object v4, p0, v2

    .line 184
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 185
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 189
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move-object v0, v1

    goto :goto_6
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 49
    if-eqz p0, :cond_5

    .line 51
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 55
    :cond_5
    :goto_5
    return-void

    .line 52
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/io/RandomAccessFile;)V
    .registers 2

    .prologue
    .line 76
    if-eqz p0, :cond_c

    .line 78
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 79
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_d

    .line 83
    :cond_c
    :goto_c
    return-void

    .line 80
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 337
    if-eqz p0, :cond_18

    .line 338
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/d;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 339
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/d;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 340
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_18

    .line 341
    const-string v0, "TAG_PROXY_UTIL"

    const-string v1, "invoke in pool thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_18
    :goto_18
    return-void

    .line 344
    :cond_19
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 345
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_18

    .line 346
    const-string v0, "TAG_PROXY_UTIL"

    const-string v1, "invoke calling thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static a(Ljava/net/ServerSocket;)V
    .registers 2

    .prologue
    .line 58
    if-eqz p0, :cond_5

    .line 60
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 64
    :cond_5
    :goto_5
    return-void

    .line 61
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/net/Socket;)V
    .registers 2

    .prologue
    .line 67
    if-eqz p0, :cond_5

    .line 69
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 73
    :cond_5
    :goto_5
    return-void

    .line 70
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 86
    if-eqz p0, :cond_14

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(II)Ljava/lang/String;
    .registers 4

    .prologue
    .line 163
    if-ltz p0, :cond_1c

    if-lez p1, :cond_1c

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_1b
    return-object v0

    .line 167
    :cond_1c
    if-lez p0, :cond_32

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 171
    :cond_32
    if-gez p0, :cond_4a

    if-lez p1, :cond_4a

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 174
    :cond_4a
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 540
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 541
    :cond_9
    const-string v0, ""

    .line 551
    :goto_b
    return-object v0

    .line 544
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_16
    if-ge v1, v4, :cond_3b

    .line 546
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 547
    if-eqz v0, :cond_37

    .line 548
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 551
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 555
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 556
    :cond_8
    const-string v0, ""

    .line 564
    :goto_a
    return-object v0

    .line 559
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 562
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 564
    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static b(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 353
    if-eqz p0, :cond_b

    .line 354
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/d;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 360
    :cond_b
    :goto_b
    return-void

    .line 357
    :cond_c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public static b()Z
    .registers 2

    .prologue
    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 330
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

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
