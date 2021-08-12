.class public abstract Lcom/tramini/plugin/a/d/a;
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

.field public static final j:Ljava/lang/String; = "pil_offset"

.field public static final k:Ljava/lang/String; = "ds_pl"

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field private static final o:Ljava/lang/String;


# instance fields
.field protected n:Lcom/tramini/plugin/a/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/tramini/plugin/a/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/d/a;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 6

    .line 343
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 344
    return-object v0

    .line 347
    :cond_4
    nop

    .line 349
    :try_start_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    .line 352
    goto :goto_b

    .line 350
    :catch_a
    move-exception v1

    .line 353
    :goto_b
    const-string v1, "Content-Encoding"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 354
    const-string v1, "gzip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 358
    const/4 p0, 0x2

    :try_start_1a
    new-array v1, p0, [B

    .line 359
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 360
    invoke-virtual {v2, p0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 361
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p0

    .line 363
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 365
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    .line 366
    const/4 v3, -0x1

    if-eq p0, v3, :cond_47

    const p0, 0x8b1f

    if-ne v1, p0, :cond_47

    .line 368
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_45} :catch_49

    move-object v0, p0

    goto :goto_4b

    .line 375
    :cond_47
    move-object v0, v2

    goto :goto_4b

    .line 373
    :catch_49
    move-exception p0

    .line 374
    nop

    .line 376
    :goto_4b
    return-object v0

    .line 378
    :cond_4c
    return-object v0
.end method

.method private a(I)V
    .registers 3

    .line 166
    new-instance v0, Lcom/tramini/plugin/a/d/a$1;

    invoke-direct {v0, p0, p1}, Lcom/tramini/plugin/a/d/a$1;-><init>(Lcom/tramini/plugin/a/d/a;I)V

    .line 318
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tramini/plugin/a/g/a/a;->a(Lcom/tramini/plugin/a/g/a/b;)V

    .line 319
    return-void
.end method

.method protected static b(Ljava/lang/String;)[B
    .registers 4

    .line 384
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    .line 387
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 390
    :try_start_e
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 391
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 392
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_20

    .line 395
    goto :goto_24

    .line 394
    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    :goto_24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 385
    :cond_29
    :goto_29
    const/4 p0, 0x0

    return-object p0
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

.method public final a(ILcom/tramini/plugin/a/d/b;)V
    .registers 3

    .line 78
    iput-object p2, p0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    .line 79
    nop

    .line 1166
    new-instance p2, Lcom/tramini/plugin/a/d/a$1;

    invoke-direct {p2, p0, p1}, Lcom/tramini/plugin/a/d/a$1;-><init>(Lcom/tramini/plugin/a/d/a;I)V

    .line 1318
    invoke-static {}, Lcom/tramini/plugin/a/g/a/a;->a()Lcom/tramini/plugin/a/g/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tramini/plugin/a/g/a/a;->a(Lcom/tramini/plugin/a/g/a/b;)V

    .line 80
    return-void
.end method

.method protected final a(ILjava/lang/Object;)V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    if-eqz v0, :cond_7

    .line 338
    invoke-interface {v0, p1, p2}, Lcom/tramini/plugin/a/d/b;->a(ILjava/lang/Object;)V

    .line 340
    :cond_7
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
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
    .registers 5

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v1

    .line 111
    :try_start_d
    const-string v2, "platform"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v2, "os_vn"

    invoke-static {}, Lcom/tramini/plugin/a/g/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v2, "os_vc"

    invoke-static {}, Lcom/tramini/plugin/a/g/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "package_name"

    invoke-static {v1}, Lcom/tramini/plugin/a/g/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v2, "app_vn"

    invoke-static {v1}, Lcom/tramini/plugin/a/g/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v2, "app_vc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/tramini/plugin/a/g/e;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v1, "sdk_ver"

    const-string v2, "1.0.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_54} :catch_55

    .line 126
    goto :goto_56

    .line 122
    :catch_55
    move-exception v1

    .line 127
    :goto_56
    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .registers 6

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/tramini/plugin/a/d/a;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "d_version"

    const-string v3, "1.0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "d1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d_version=1.0&d1="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v2, "d_sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "pl_c"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 142
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 144
    :try_start_40
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    goto :goto_44

    .line 147
    :cond_5c
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_60} :catch_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_40 .. :try_end_60} :catch_61

    return-object v0

    .line 150
    :catch_61
    move-exception v0

    .line 151
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_68

    .line 148
    :catch_66
    move-exception v0

    .line 152
    nop

    .line 153
    :goto_68
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final g()V
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    if-eqz v0, :cond_7

    .line 326
    invoke-interface {v0}, Lcom/tramini/plugin/a/d/b;->b()V

    .line 328
    :cond_7
    return-void
.end method

.method protected final h()V
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/tramini/plugin/a/d/a;->n:Lcom/tramini/plugin/a/d/b;

    if-eqz v0, :cond_7

    .line 332
    invoke-interface {v0}, Lcom/tramini/plugin/a/d/b;->b()V

    .line 334
    :cond_7
    return-void
.end method
