.class public abstract Lcom/tramini/plugin/a/c/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "platform"

.field public static final b:Ljava/lang/String; = "os_vn"

.field public static final c:Ljava/lang/String; = "os_vc"

.field public static final d:Ljava/lang/String; = "package_name"

.field public static final e:Ljava/lang/String; = "app_vn"

.field public static final f:Ljava/lang/String; = "app_vc"

.field public static final g:Ljava/lang/String; = "sdk_ver"

.field public static final h:Ljava/lang/String; = "android_id"

.field public static final i:Ljava/lang/String; = "is_proxy"

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field private static final m:Ljava/lang/String;


# instance fields
.field protected l:Lcom/tramini/plugin/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/tramini/plugin/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/c/a;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 329
    if-nez p0, :cond_4

    .line 364
    :cond_3
    :goto_3
    return-object v0

    .line 335
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_47

    move-result-object v0

    .line 339
    :goto_8
    const-string v1, "Content-Encoding"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    const/4 v1, 0x2

    :try_start_17
    new-array v1, v1, [B

    .line 345
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 346
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 347
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .line 349
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 351
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v4

    .line 352
    const/4 v4, -0x1

    if-eq v3, v4, :cond_45

    const v3, 0x8b1f

    if-ne v1, v3, :cond_45

    .line 354
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_43} :catch_49

    move-object v0, v1

    goto :goto_3

    :cond_45
    move-object v0, v2

    .line 361
    goto :goto_3

    :catch_47
    move-exception v1

    goto :goto_8

    .line 360
    :catch_49
    move-exception v1

    goto :goto_3
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 152
    new-instance v0, Lcom/tramini/plugin/a/c/a$1;

    invoke-direct {v0, p0, p1}, Lcom/tramini/plugin/a/c/a$1;-><init>(Lcom/tramini/plugin/a/c/a;I)V

    .line 304
    invoke-static {}, Lcom/tramini/plugin/a/f/a/a;->a()Lcom/tramini/plugin/a/f/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/f/a/a;->a(Lcom/tramini/plugin/a/f/a/b;)V

    .line 305
    return-void
.end method

.method protected static b(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 370
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 371
    :cond_8
    const/4 v0, 0x0

    .line 382
    :goto_9
    return-object v0

    .line 373
    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 376
    :try_start_f
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 377
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 378
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_25

    .line 382
    :goto_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_9

    .line 380
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
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

.method public final a(Lcom/tramini/plugin/a/c/b;)V
    .registers 4

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    .line 1152
    new-instance v0, Lcom/tramini/plugin/a/c/a$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tramini/plugin/a/c/a$1;-><init>(Lcom/tramini/plugin/a/c/a;I)V

    .line 1304
    invoke-static {}, Lcom/tramini/plugin/a/f/a/a;->a()Lcom/tramini/plugin/a/f/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/f/a/a;->a(Lcom/tramini/plugin/a/f/a/b;)V

    .line 71
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    if-eqz v0, :cond_9

    .line 324
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    invoke-interface {v0, p1}, Lcom/tramini/plugin/a/c/b;->a(Ljava/lang/Object;)V

    .line 326
    :cond_9
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
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

.method protected e()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v1

    .line 102
    :try_start_d
    const-string v2, "platform"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v2, "os_vn"

    invoke-static {}, Lcom/tramini/plugin/a/f/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v2, "os_vc"

    invoke-static {}, Lcom/tramini/plugin/a/f/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "package_name"

    invoke-static {v1}, Lcom/tramini/plugin/a/f/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v2, "app_vn"

    invoke-static {v1}, Lcom/tramini/plugin/a/f/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v2, "app_vc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/tramini/plugin/a/f/c;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "sdk_ver"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_54} :catch_55

    .line 114
    :goto_54
    return-object v0

    :catch_55
    move-exception v1

    goto :goto_54
.end method

.method protected f()Ljava/lang/String;
    .registers 6

    .prologue
    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/tramini/plugin/a/c/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/f/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v2, "d_version"

    const-string v3, "1.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v2, "d1"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "d_version=1.0&d1="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v2, "d_sign"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 128
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    :try_start_39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3d

    .line 138
    :catch_55
    move-exception v0

    .line 139
    :goto_56
    const/4 v0, 0x0

    :goto_57
    return-object v0

    .line 133
    :cond_58
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5b} :catch_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_39 .. :try_end_5b} :catch_5d

    move-result-object v0

    goto :goto_57

    .line 137
    :catch_5d
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_56
.end method

.method protected final g()V
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    invoke-interface {v0}, Lcom/tramini/plugin/a/c/b;->b()V

    .line 314
    :cond_9
    return-void
.end method

.method protected final h()V
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    if-eqz v0, :cond_9

    .line 318
    iget-object v0, p0, Lcom/tramini/plugin/a/c/a;->l:Lcom/tramini/plugin/a/c/b;

    invoke-interface {v0}, Lcom/tramini/plugin/a/c/b;->b()V

    .line 320
    :cond_9
    return-void
.end method
