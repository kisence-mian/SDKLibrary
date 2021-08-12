.class public abstract Lcom/anythink/core/common/e/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "http.loader"


# instance fields
.field protected j:Lcom/anythink/core/common/e/g;

.field protected k:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 6

    .line 555
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 556
    return-object v0

    .line 559
    :cond_4
    nop

    .line 561
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    .line 564
    goto :goto_b

    .line 562
    :catch_a
    move-exception v1

    .line 565
    :goto_b
    const-string v1, "Content-Encoding"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 566
    const-string v1, "gzip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 570
    const/4 p0, 0x2

    :try_start_1a
    new-array v1, p0, [B

    .line 571
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 572
    invoke-virtual {v2, p0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 573
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p0

    .line 575
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 577
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    .line 578
    const/4 v3, -0x1

    if-eq p0, v3, :cond_47

    const p0, 0x8b1f

    if-ne v1, p0, :cond_47

    .line 580
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_45} :catch_49

    move-object v0, p0

    goto :goto_4b

    .line 587
    :cond_47
    move-object v0, v2

    goto :goto_4b

    .line 585
    :catch_49
    move-exception p0

    .line 586
    nop

    .line 588
    :goto_4b
    return-object v0

    .line 590
    :cond_4c
    return-object v0
.end method

.method private a(I)V
    .registers 4

    .line 260
    new-instance v0, Lcom/anythink/core/common/e/a$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/e/a$1;-><init>(Lcom/anythink/core/common/e/a;I)V

    .line 500
    invoke-virtual {p0}, Lcom/anythink/core/common/e/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://tk.anythinktech.com/v1/open/tk"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    invoke-virtual {p0}, Lcom/anythink/core/common/e/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://da.anythinktech.com/v1/open/da"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_27

    .line 504
    :cond_1e
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p1

    .line 3099
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    .line 507
    return-void

    .line 502
    :cond_27
    :goto_27
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    return-void
.end method

.method protected static c(Ljava/lang/String;)[B
    .registers 4

    .line 596
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    .line 599
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 602
    :try_start_e
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 603
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 604
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_20

    .line 607
    goto :goto_24

    .line 606
    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    :goto_24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 597
    :cond_29
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private o()V
    .registers 2

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/e/a;->k:Z

    .line 121
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public a(ILcom/anythink/core/common/e/g;)V
    .registers 4

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/e/a;->k:Z

    .line 112
    iput-object p2, p0, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    .line 114
    nop

    .line 1260
    new-instance p2, Lcom/anythink/core/common/e/a$1;

    invoke-direct {p2, p0, p1}, Lcom/anythink/core/common/e/a$1;-><init>(Lcom/anythink/core/common/e/a;I)V

    .line 1500
    invoke-virtual {p0}, Lcom/anythink/core/common/e/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://tk.anythinktech.com/v1/open/tk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Lcom/anythink/core/common/e/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://da.anythinktech.com/v1/open/da"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_2d

    .line 1504
    :cond_24
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p1

    .line 2099
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    .line 116
    return-void

    .line 1502
    :cond_2d
    :goto_2d
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    return-void
.end method

.method protected a(ILjava/lang/Object;)V
    .registers 3

    .line 542
    iget-object p1, p0, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    if-eqz p1, :cond_7

    .line 543
    invoke-interface {p1, p2}, Lcom/anythink/core/common/e/g;->a(Ljava/lang/Object;)V

    .line 546
    :cond_7
    return-void
.end method

.method protected abstract a(Lcom/anythink/core/api/AdError;)V
.end method

.method protected final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    if-eqz v0, :cond_7

    .line 529
    invoke-interface {v0, p1, p2}, Lcom/anythink/core/common/e/g;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 531
    :cond_7
    invoke-virtual {p0, p2}, Lcom/anythink/core/common/e/a;->b(Lcom/anythink/core/api/AdError;)V

    .line 532
    return-void
.end method

.method protected final a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .registers 4

    .line 518
    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 519
    const-string v0, "9999"

    invoke-static {v0, v0, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 521
    iget-object v0, p0, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    if-eqz v0, :cond_13

    .line 522
    const-string v1, "Connect timeout."

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/common/e/g;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 524
    :cond_13
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/e/a;->b(Lcom/anythink/core/api/AdError;)V

    .line 525
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract b(Lcom/anythink/core/api/AdError;)V
.end method

.method protected abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract d()[B
.end method

.method protected e()Lorg/json/JSONObject;
    .registers 2

    .line 188
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .registers 6

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    invoke-virtual {p0}, Lcom/anythink/core/common/e/a;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/anythink/core/common/e/a;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v3, "api_ver"

    const-string v4, "1.0"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v3, "p"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "p2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_61

    .line 219
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    goto :goto_4a

    .line 226
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " sorted value list:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http.loader"

    invoke-static {v3, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anythink/core/common/e/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 237
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 239
    :try_start_b4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 240
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    goto :goto_b8

    .line 242
    :cond_d0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_d4} :catch_da
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b4 .. :try_end_d4} :catch_d5

    return-object v0

    .line 245
    :catch_d5
    move-exception v0

    .line 246
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_dc

    .line 243
    :catch_da
    move-exception v0

    .line 247
    nop

    .line 248
    :goto_dc
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract g()Z
.end method

.method protected abstract h()Ljava/lang/String;
.end method

.method protected abstract i()Landroid/content/Context;
.end method

.method protected abstract j()Ljava/lang/String;
.end method

.method protected abstract k()Ljava/lang/String;
.end method

.method protected abstract l()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method protected m()Lorg/json/JSONObject;
    .registers 2

    .line 197
    invoke-static {}, Lcom/anythink/core/common/e/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final n()V
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/anythink/core/common/e/a;->j:Lcom/anythink/core/common/e/g;

    if-eqz v0, :cond_7

    .line 536
    invoke-interface {v0}, Lcom/anythink/core/common/e/g;->b()V

    .line 539
    :cond_7
    return-void
.end method
