.class public abstract Lcom/anythink/core/b/e/a;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "it_src"

.field public static final B:Ljava/lang/String; = "gdpr_cs"

.field public static final C:I = 0x1

.field public static final D:I = 0x2

.field private static final G:Ljava/lang/String; = "http.loader"

.field public static final a:Ljava/lang/String; = "platform"

.field public static final b:Ljava/lang/String; = "os_vn"

.field public static final c:Ljava/lang/String; = "os_vc"

.field public static final d:Ljava/lang/String; = "package_name"

.field public static final e:Ljava/lang/String; = "app_vn"

.field public static final f:Ljava/lang/String; = "app_vc"

.field public static final g:Ljava/lang/String; = "brand"

.field public static final h:Ljava/lang/String; = "model"

.field public static final i:Ljava/lang/String; = "screen"

.field public static final j:Ljava/lang/String; = "network_type"

.field public static final k:Ljava/lang/String; = "mnc"

.field public static final l:Ljava/lang/String; = "mcc"

.field public static final m:Ljava/lang/String; = "language"

.field public static final n:Ljava/lang/String; = "timezone"

.field public static final o:Ljava/lang/String; = "sdk_ver"

.field public static final p:Ljava/lang/String; = "gp_ver"

.field public static final q:Ljava/lang/String; = "nw_ver"

.field public static final r:Ljava/lang/String; = "ua"

.field public static final s:Ljava/lang/String; = "orient"

.field public static final t:Ljava/lang/String; = "system"

.field public static final u:Ljava/lang/String; = "android_id"

.field public static final v:Ljava/lang/String; = "gaid"

.field public static final w:Ljava/lang/String; = "channel"

.field public static final x:Ljava/lang/String; = "sub_channel"

.field public static final y:Ljava/lang/String; = "upid"

.field public static final z:Ljava/lang/String; = "ps_id"


# instance fields
.field protected E:Lcom/anythink/core/b/e/e;

.field protected F:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 615
    if-nez p0, :cond_4

    .line 650
    :cond_3
    :goto_3
    return-object v0

    .line 621
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_47

    move-result-object v0

    .line 625
    :goto_8
    const-string v1, "Content-Encoding"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 630
    const/4 v1, 0x2

    :try_start_17
    new-array v1, v1, [B

    .line 631
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 632
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 633
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .line 635
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 637
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v4

    .line 638
    const/4 v4, -0x1

    if-eq v3, v4, :cond_45

    const v3, 0x8b1f

    if-ne v1, v3, :cond_45

    .line 640
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_43} :catch_49

    move-object v0, v1

    goto :goto_3

    :cond_45
    move-object v0, v2

    .line 647
    goto :goto_3

    :catch_47
    move-exception v1

    goto :goto_8

    .line 646
    :catch_49
    move-exception v1

    goto :goto_3
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 324
    new-instance v0, Lcom/anythink/core/b/e/a$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/b/e/a$1;-><init>(Lcom/anythink/core/b/e/a;I)V

    .line 560
    const-string v1, "https://tt.toponad.com/v1/open/tk"

    invoke-virtual {p0}, Lcom/anythink/core/b/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "https://dd.toponad.com/v1/open/da"

    invoke-virtual {p0}, Lcom/anythink/core/b/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 562
    :cond_1d
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/b/g/a/a;->a(Lcom/anythink/core/b/g/a/b;I)V

    .line 567
    :goto_25
    return-void

    .line 564
    :cond_26
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/g/a/a;->a(Lcom/anythink/core/b/g/a/b;)V

    goto :goto_25
.end method

.method protected static b(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 656
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 657
    :cond_8
    const/4 v0, 0x0

    .line 668
    :goto_9
    return-object v0

    .line 659
    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 662
    :try_start_f
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 663
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 664
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_25

    .line 668
    :goto_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_9

    .line 666
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method private o()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/e/a;->F:Z

    .line 115
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

.method public a(ILcom/anythink/core/b/e/e;)V
    .registers 6

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/e/a;->F:Z

    .line 106
    iput-object p2, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    .line 1324
    new-instance v0, Lcom/anythink/core/b/e/a$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/b/e/a$1;-><init>(Lcom/anythink/core/b/e/a;I)V

    .line 1560
    const-string v1, "https://tt.toponad.com/v1/open/tk"

    invoke-virtual {p0}, Lcom/anythink/core/b/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "https://dd.toponad.com/v1/open/da"

    invoke-virtual {p0}, Lcom/anythink/core/b/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1562
    :cond_22
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/anythink/core/b/g/a/a;->a(Lcom/anythink/core/b/g/a/b;I)V

    :goto_2a
    return-void

    .line 1564
    :cond_2b
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/g/a/a;->a(Lcom/anythink/core/b/g/a/b;)V

    goto :goto_2a
.end method

.method protected abstract a(Lcom/anythink/core/api/AdError;)V
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    if-eqz v0, :cond_9

    .line 603
    iget-object v0, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    invoke-interface {v0, p1}, Lcom/anythink/core/b/e/e;->a(Ljava/lang/Object;)V

    .line 606
    :cond_9
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    if-eqz v0, :cond_9

    .line 589
    iget-object v0, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/b/e/e;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 591
    :cond_9
    invoke-virtual {p0, p2}, Lcom/anythink/core/b/e/a;->a(Lcom/anythink/core/api/AdError;)V

    .line 592
    return-void
.end method

.method protected final a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .registers 5

    .prologue
    .line 578
    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 579
    const-string v1, "9999"

    const-string v2, "9999"

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    if-eqz v1, :cond_17

    .line 582
    iget-object v1, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    const-string v2, "Connect timeout."

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/b/e/e;->a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 584
    :cond_17
    invoke-virtual {p0, v0}, Lcom/anythink/core/b/e/a;->a(Lcom/anythink/core/api/AdError;)V

    .line 585
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract d()[B
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Landroid/content/Context;
.end method

.method protected abstract h()Ljava/lang/String;
.end method

.method protected abstract i()Ljava/lang/String;
.end method

.method protected abstract j()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method protected k()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 182
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 183
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    .line 185
    :try_start_d
    const-string v2, "platform"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v2, "os_vn"

    invoke-static {}, Lcom/anythink/core/b/g/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v2, "os_vc"

    invoke-static {}, Lcom/anythink/core/b/g/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v2, "package_name"

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v2, "app_vn"

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v2, "app_vc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->e(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v2, "brand"

    invoke-static {}, Lcom/anythink/core/b/g/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v2, "model"

    invoke-static {}, Lcom/anythink/core/b/g/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v2, "screen"

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v2, "network_type"

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->k(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v2, "mnc"

    invoke-static {}, Lcom/anythink/core/b/g/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v2, "mcc"

    invoke-static {}, Lcom/anythink/core/b/g/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v2, "language"

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v2, "timezone"

    invoke-static {}, Lcom/anythink/core/b/g/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "sdk_ver"

    const-string v3, "UA_5.5.6"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v2, "gp_ver"

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v2, "ua"

    invoke-static {}, Lcom/anythink/core/b/g/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v2, "orient"

    invoke-static {v0}, Lcom/anythink/core/b/g/c;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    const-string v2, "system"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 205
    const-string v2, "channel"

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :cond_dc
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f7

    .line 208
    const-string v2, "sub_channel"

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_f7
    const-string v2, "upid"

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->i()Ljava/lang/String;

    move-result-object v0

    :goto_10b
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v0, "ps_id"

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :goto_11b
    return-object v1

    .line 210
    :cond_11c
    const-string v0, ""
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11e} :catch_11f

    goto :goto_10b

    :catch_11f
    move-exception v0

    goto :goto_11b
.end method

.method protected l()Lorg/json/JSONObject;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 227
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v2

    .line 228
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 229
    invoke-static {v2}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v4

    .line 232
    if-eqz v4, :cond_77

    :try_start_20
    invoke-virtual {v4}, Lcom/anythink/core/c/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_87

    move-result v5

    if-nez v5, :cond_3f

    .line 235
    :try_start_2a
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    const-string v1, "a"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 237
    const-string v1, "a"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3c} :catch_8c

    move-result v1

    if-ne v1, v0, :cond_7a

    .line 243
    :cond_3f
    :goto_3f
    :try_start_3f
    const-string v1, "android_id"

    if-eqz v0, :cond_7c

    invoke-static {v2}, Lcom/anythink/core/b/g/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v0, "gaid"

    invoke-static {}, Lcom/anythink/core/b/g/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->b()Lcom/anythink/core/api/IATChinaSDKHandler;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_7f

    .line 247
    invoke-interface {v0, v3, v4}, Lcom/anythink/core/api/IATChinaSDKHandler;->fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/c/a;)V

    .line 248
    const-string v0, "is_cn_sdk"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :goto_67
    invoke-static {v2}, Lcom/anythink/core/b/g/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v1, "it_src"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_89

    :goto_73
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :goto_76
    return-object v3

    .line 232
    :cond_77
    const-string v1, ""

    goto :goto_24

    .line 237
    :cond_7a
    const/4 v0, 0x0

    goto :goto_3f

    .line 243
    :cond_7c
    const-string v0, ""

    goto :goto_47

    .line 250
    :cond_7f
    const-string v0, "is_cn_sdk"

    const-string v1, "0"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_67

    :catch_87
    move-exception v0

    goto :goto_76

    .line 254
    :cond_89
    const-string v0, ""
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_8b} :catch_87

    goto :goto_73

    :catch_8c
    move-exception v1

    goto :goto_3f
.end method

.method protected m()Ljava/lang/String;
    .registers 6

    .prologue
    .line 266
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 267
    invoke-virtual {p0}, Lcom/anythink/core/b/e/a;->k()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/anythink/core/b/e/a;->l()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/b/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    const-string v3, "api_ver"

    const-string v4, "1.0"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v3, "p"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "p2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_61

    .line 283
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 290
    :cond_71
    const-string v0, "http.loader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " sorted value list:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anythink/core/b/e/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v2, "sign"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 301
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 303
    :try_start_b4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b8

    .line 311
    :catch_d0
    move-exception v0

    .line 312
    :goto_d1
    const/4 v0, 0x0

    :goto_d2
    return-object v0

    .line 306
    :cond_d3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_d6} :catch_d0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b4 .. :try_end_d6} :catch_d8

    move-result-object v0

    goto :goto_d2

    .line 310
    :catch_d8
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_d1
.end method

.method protected final n()V
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    if-eqz v0, :cond_9

    .line 596
    iget-object v0, p0, Lcom/anythink/core/b/e/a;->E:Lcom/anythink/core/b/e/e;

    invoke-interface {v0}, Lcom/anythink/core/b/e/e;->b()V

    .line 599
    :cond_9
    return-void
.end method
