.class public Lcom/bytedance/sdk/openadsdk/h/a/a;
.super Ljava/lang/Object;
.source "GifCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/a/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static volatile g:Lcom/bytedance/sdk/openadsdk/h/a/a;


# instance fields
.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/b/a;

.field private final e:Lcom/bytedance/sdk/openadsdk/b/a;

.field private final f:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/h/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->c:Ljava/util/WeakHashMap;

    .line 53
    nop

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/a$1;

    const/high16 v1, 0x500000

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/a;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->f:Landroid/util/LruCache;

    .line 75
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->d:Lcom/bytedance/sdk/openadsdk/b/a;

    .line 76
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d;

    const-wide/32 v1, 0x1400000

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/b/d;-><init>(JZ)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->e:Lcom/bytedance/sdk/openadsdk/b/a;

    .line 77
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/a/a;
    .registers 2

    .line 39
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a/a;->g:Lcom/bytedance/sdk/openadsdk/h/a/a;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lcom/bytedance/sdk/openadsdk/h/a/a;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/a/a;->g:Lcom/bytedance/sdk/openadsdk/h/a/a;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/a/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/a/a;->g:Lcom/bytedance/sdk/openadsdk/h/a/a;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a/a;->g:Lcom/bytedance/sdk/openadsdk/h/a/a;

    return-object v0
.end method

.method private a([B)Z
    .registers 6

    .line 197
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1c

    aget-byte v2, p1, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_1c

    aget-byte v2, p1, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    aget-byte p1, p1, v2

    const/16 v2, 0x46

    if-ne p1, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 392
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 393
    const-string v0, "splash_image"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/a/a;->b:Ljava/lang/String;

    .line 396
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .registers 1

    .line 337
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 338
    const-string v0, "diskGif"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/a/a;->a:Ljava/lang/String;

    .line 340
    :cond_10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 344
    nop

    .line 345
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_a

    .line 346
    return-object v1

    .line 350
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->B()I

    move-result v0

    .line 351
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    .line 353
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 356
    return-object p0

    .line 360
    :cond_2a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 361
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v2, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    nop

    .line 362
    :goto_40
    const/4 v0, 0x0

    .line 364
    if-eqz v2, :cond_61

    .line 367
    :try_start_43
    const-string v0, "splashLoadAd"

    const-string v2, "\u5f53\u5b58\u5728\u5916\u90e8\u5b58\u50a8\u5e76\u4e14\u5f00\u5c4f\u652f\u6301\u5916\u90e8\u5b58\u50a8"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_61

    .line 379
    :catchall_5f
    move-exception p0

    goto :goto_78

    .line 373
    :cond_61
    :goto_61
    if-nez v0, :cond_77

    .line 374
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_77
    .catchall {:try_start_43 .. :try_end_77} :catchall_5f

    .line 381
    :cond_77
    nop

    .line 382
    :goto_78
    return-object v1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/a/a$a;
    .registers 7

    monitor-enter p0

    .line 219
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8f

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 220
    monitor-exit p0

    return-object v1

    .line 223
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->f:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/a/a$a;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_8f

    .line 224
    if-eqz v0, :cond_16

    .line 225
    monitor-exit p0

    return-object v0

    .line 228
    :cond_16
    :try_start_16
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_8f

    if-eqz v2, :cond_8d

    .line 231
    nop

    .line 233
    :try_start_26
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_70

    .line 234
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 235
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 237
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_6e

    .line 240
    :try_start_46
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/a/a$a;-><init>([B)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_53

    .line 253
    nop

    .line 254
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50
    .catchall {:try_start_4c .. :try_end_4f} :catchall_8f

    .line 257
    goto :goto_51

    .line 256
    :catch_50
    move-exception p1

    .line 240
    :goto_51
    monitor-exit p0

    return-object v3

    .line 241
    :catchall_53
    move-exception v3

    .line 244
    if-eqz v0, :cond_69

    .line 245
    :try_start_56
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/a/a$a;-><init>([B)V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->f:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_6e

    .line 247
    nop

    .line 253
    nop

    .line 254
    :try_start_62
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66
    .catchall {:try_start_62 .. :try_end_65} :catchall_8f

    .line 257
    goto :goto_67

    .line 256
    :catch_66
    move-exception p1

    .line 247
    :goto_67
    monitor-exit p0

    return-object v3

    .line 253
    :cond_69
    nop

    .line 254
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_7f
    .catchall {:try_start_6a .. :try_end_6d} :catchall_8f

    goto :goto_81

    .line 249
    :catchall_6e
    move-exception p1

    goto :goto_72

    :catchall_70
    move-exception p1

    move-object v2, v1

    .line 250
    :goto_72
    :try_start_72
    const-string v0, "GifCache"

    const-string v3, "gifCache get error "

    invoke-static {v0, v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_82

    .line 253
    if-eqz v2, :cond_81

    .line 254
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8f

    goto :goto_81

    .line 256
    :catch_7f
    move-exception p1

    .line 258
    goto :goto_8d

    .line 257
    :cond_81
    :goto_81
    goto :goto_8d

    .line 252
    :catchall_82
    move-exception p1

    .line 253
    if-eqz v2, :cond_8b

    .line 254
    :try_start_85
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89
    .catchall {:try_start_85 .. :try_end_88} :catchall_8f

    goto :goto_8b

    .line 256
    :catch_89
    move-exception v0

    goto :goto_8c

    .line 257
    :cond_8b
    :goto_8b
    nop

    .line 258
    :goto_8c
    :try_start_8c
    throw p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8f

    .line 260
    :cond_8d
    :goto_8d
    monitor-exit p0

    return-object v1

    .line 218
    :catchall_8f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Ljava/io/File;
    .registers 9

    monitor-enter p0

    .line 202
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_34

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 203
    monitor-exit p0

    return-object v1

    .line 205
    :cond_a
    nop

    .line 206
    if-eqz p2, :cond_17

    .line 207
    :try_start_d
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 209
    :cond_17
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_20
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_34

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_32

    .line 212
    monitor-exit p0

    return-object p2

    .line 215
    :cond_32
    monitor-exit p0

    return-object v1

    .line 201
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 317
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    if-eqz p2, :cond_a

    .line 318
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 322
    :cond_a
    nop

    .line 323
    :try_start_b
    const-string p2, "https"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 324
    const-string p2, "https"

    const-string p3, "http"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 327
    :cond_1b
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 328
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_36

    if-nez p3, :cond_2b

    .line 329
    monitor-exit p0

    return-object p2

    .line 331
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 332
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_36

    .line 333
    monitor-exit p0

    return-object p2

    .line 316
    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)V
    .registers 6

    monitor-enter p0

    .line 80
    :try_start_1
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " put GifLoader.mIsSpalsh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:Z

    if-eqz v0, :cond_23

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c(Ljava/lang/String;[B)V

    goto :goto_26

    .line 84
    :cond_23
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b(Ljava/lang/String;[B)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 87
    :goto_26
    monitor-exit p0

    return-void

    .line 79
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/a/a$a;
    .registers 8

    monitor-enter p0

    .line 264
    :try_start_1
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GifCache get  key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_105

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 266
    monitor-exit p0

    return-object v1

    .line 269
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->f:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/a/a$a;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_105

    .line 270
    if-eqz v0, :cond_2e

    .line 271
    monitor-exit p0

    return-object v0

    .line 273
    :cond_2e
    :try_start_2e
    const-string v0, "splashLoadAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GifCache \u4ece\u7f13\u5b58\u6587\u4ef6\u4e2d\u83b7\u53d6\u56fe\u7247\u7d20\u6750\uff0c\u56fe\u7247\u8def\u5f84\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_105

    .line 276
    :try_start_5d
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/l;->b(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61
    .catchall {:try_start_5d .. :try_end_60} :catchall_105

    .line 279
    goto :goto_65

    .line 277
    :catch_61
    move-exception v2

    .line 278
    :try_start_62
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    :goto_65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_105

    if-eqz v2, :cond_eb

    .line 282
    nop

    .line 284
    :try_start_6c
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_ce

    .line 285
    :try_start_71
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 286
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 288
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_8c
    .catchall {:try_start_71 .. :try_end_8c} :catchall_cc

    .line 291
    :try_start_8c
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/a/a$a;-><init>([B)V
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_99

    .line 305
    nop

    .line 306
    :try_start_92
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96
    .catchall {:try_start_92 .. :try_end_95} :catchall_105

    .line 309
    goto :goto_97

    .line 308
    :catch_96
    move-exception p1

    .line 291
    :goto_97
    monitor-exit p0

    return-object v3

    .line 292
    :catchall_99
    move-exception v3

    .line 295
    if-eqz v0, :cond_c7

    .line 296
    :try_start_9c
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/a/a$a;-><init>([B)V

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->f:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "splashLoadAd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " GifCache \u4ece\u7f13\u5b58\u6587\u4ef6\u4e2d\u83b7\u53d6\u56fe\u7247\u7d20\u6750\u6210\u529f key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_9c .. :try_end_be} :catchall_cc

    .line 299
    nop

    .line 305
    nop

    .line 306
    :try_start_c0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_105

    .line 309
    goto :goto_c5

    .line 308
    :catch_c4
    move-exception p1

    .line 299
    :goto_c5
    monitor-exit p0

    return-object v3

    .line 305
    :cond_c7
    nop

    .line 306
    :try_start_c8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_dd
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_105

    goto :goto_df

    .line 301
    :catchall_cc
    move-exception v0

    goto :goto_d0

    :catchall_ce
    move-exception v0

    move-object v2, v1

    .line 302
    :goto_d0
    :try_start_d0
    const-string v3, "GifCache"

    const-string v4, "gifCache get error "

    invoke-static {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_e0

    .line 305
    if-eqz v2, :cond_df

    .line 306
    :try_start_d9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_105

    goto :goto_df

    .line 308
    :catch_dd
    move-exception v0

    .line 310
    goto :goto_eb

    .line 309
    :cond_df
    :goto_df
    goto :goto_eb

    .line 304
    :catchall_e0
    move-exception p1

    .line 305
    if-eqz v2, :cond_e9

    .line 306
    :try_start_e3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_105

    goto :goto_e9

    .line 308
    :catch_e7
    move-exception v0

    goto :goto_ea

    .line 309
    :cond_e9
    :goto_e9
    nop

    .line 310
    :goto_ea
    :try_start_ea
    throw p1

    .line 312
    :cond_eb
    :goto_eb
    const-string v0, "splashLoadAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GifCache \u7f13\u5b58\u6587\u4ef6\u4e2d\u4e0d\u5b58\u5728\u8be5\u56fe\u7247\u7d20\u6750  key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_ea .. :try_end_103} :catchall_105

    .line 313
    monitor-exit p0

    return-object v1

    .line 263
    :catchall_105
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;[B)V
    .registers 10

    monitor-enter p0

    .line 90
    :try_start_1
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GifCache put \u5c06\u56fe\u7247\u7d20\u6750\u4fdd\u5b58\u5230\u672c\u5730 key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e7

    if-nez p2, :cond_23

    goto/16 :goto_e7

    .line 95
    :cond_23
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a([B)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_e9

    if-nez v0, :cond_3c

    .line 98
    :try_start_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->f:Landroid/util/LruCache;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/a$a;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_34

    .line 101
    goto :goto_3c

    .line 99
    :catchall_34
    move-exception v0

    .line 100
    :try_start_35
    const-string v1, "GifCache"

    const-string v2, "gifCache mLruCache.put error "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_3c
    :goto_3c
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_5d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_e9

    cmp-long p1, v3, v1

    if-lez p1, :cond_5d

    .line 107
    monitor-exit p0

    return-void

    .line 109
    :cond_5d
    :try_start_5d
    const-string p1, "splashLoadAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " GifCache put \u5c06\u56fe\u7247\u7d20\u6750\u4fdd\u5b58\u5230\u672c\u5730 target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_94
    .catchall {:try_start_5d .. :try_end_94} :catchall_e9

    .line 113
    const/4 v3, 0x0

    .line 115
    :try_start_95
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 117
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_ca

    .line 118
    :try_start_9d
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 119
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_bd

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p2, v5, v1

    if-lez p2, :cond_bd

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 125
    :cond_ba
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 128
    :cond_bd
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->d:Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/io/File;)V
    :try_end_c2
    .catchall {:try_start_9d .. :try_end_c2} :catchall_c7

    .line 134
    nop

    .line 135
    :try_start_c3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_d7
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_e9

    goto :goto_d9

    .line 129
    :catchall_c7
    move-exception p2

    move-object v3, v4

    goto :goto_cb

    :catchall_ca
    move-exception p2

    .line 130
    :goto_cb
    :try_start_cb
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_dc

    .line 134
    if-eqz v3, :cond_d9

    .line 135
    :try_start_d3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_e9

    goto :goto_d9

    .line 137
    :catch_d7
    move-exception p1

    .line 139
    goto :goto_da

    .line 138
    :cond_d9
    :goto_d9
    nop

    .line 140
    :goto_da
    monitor-exit p0

    return-void

    .line 133
    :catchall_dc
    move-exception p1

    .line 134
    if-eqz v3, :cond_e5

    .line 135
    :try_start_df
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e3
    .catchall {:try_start_df .. :try_end_e2} :catchall_e9

    goto :goto_e5

    .line 137
    :catch_e3
    move-exception p2

    goto :goto_e6

    .line 138
    :cond_e5
    :goto_e5
    nop

    .line 139
    :goto_e6
    :try_start_e6
    throw p1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e9

    .line 92
    :cond_e7
    :goto_e7
    monitor-exit p0

    return-void

    .line 89
    :catchall_e9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;[B)V
    .registers 10

    monitor-enter p0

    .line 144
    :try_start_1
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GifCache put \u5c06\u56fe\u7247\u7d20\u6750\u4fdd\u5b58\u5230\u672c\u5730 key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_119

    if-nez p2, :cond_23

    goto/16 :goto_119

    .line 148
    :cond_23
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a([B)Z

    move-result v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_11b

    if-nez v0, :cond_3c

    .line 151
    :try_start_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->f:Landroid/util/LruCache;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/a$a;-><init>([B)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_34

    .line 154
    goto :goto_3c

    .line 152
    :catchall_34
    move-exception v0

    .line 153
    :try_start_35
    const-string v1, "GifCache"

    const-string v2, "gifCache mLruCache.put error "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_3c
    :goto_3c
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GifCache put \u4fdd\u5b58\u5230\u672c\u5730\u56fe\u7247\u7684\u7d20\u6750\u8def\u5f84 getCacheDir() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_91

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_91

    .line 160
    const-string p2, "splashLoadAd"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GifCache put \u672c\u5730\u7684gif\u7d20\u6750\u4ee5\u53ca\u5b58\u5728 key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_35 .. :try_end_8f} :catchall_11b

    .line 161
    monitor-exit p0

    return-void

    .line 164
    :cond_91
    :try_start_91
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_ac
    .catchall {:try_start_91 .. :try_end_ac} :catchall_11b

    .line 167
    const/4 v4, 0x0

    .line 169
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 170
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_fc

    .line 171
    :try_start_b5
    invoke-virtual {v5, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 172
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 173
    const-string p2, "splashLoadAd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " GifCache put \u56fe\u7247\u7d20\u6750\u5199\u5165\u672c\u5730\u6210\u529f "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_ed

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-lez p1, :cond_ed

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 178
    :cond_ea
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 180
    :cond_ed
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->e:Lcom/bytedance/sdk/openadsdk/b/a;

    if-eqz p1, :cond_f4

    .line 181
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/io/File;)V
    :try_end_f4
    .catchall {:try_start_b5 .. :try_end_f4} :catchall_f9

    .line 188
    :cond_f4
    nop

    .line 189
    :try_start_f5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_109
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_11b

    goto :goto_10b

    .line 183
    :catchall_f9
    move-exception p1

    move-object v4, v5

    goto :goto_fd

    :catchall_fc
    move-exception p1

    .line 184
    :goto_fd
    :try_start_fd
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_103
    .catchall {:try_start_fd .. :try_end_103} :catchall_10e

    .line 188
    if-eqz v4, :cond_10b

    .line 189
    :try_start_105
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109
    .catchall {:try_start_105 .. :try_end_108} :catchall_11b

    goto :goto_10b

    .line 191
    :catch_109
    move-exception p1

    .line 193
    goto :goto_10c

    .line 192
    :cond_10b
    :goto_10b
    nop

    .line 194
    :goto_10c
    monitor-exit p0

    return-void

    .line 187
    :catchall_10e
    move-exception p1

    .line 188
    if-eqz v4, :cond_117

    .line 189
    :try_start_111
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115
    .catchall {:try_start_111 .. :try_end_114} :catchall_11b

    goto :goto_117

    .line 191
    :catch_115
    move-exception p2

    goto :goto_118

    .line 192
    :cond_117
    :goto_117
    nop

    .line 193
    :goto_118
    :try_start_118
    throw p1
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_11b

    .line 146
    :cond_119
    :goto_119
    monitor-exit p0

    return-void

    .line 143
    :catchall_11b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
