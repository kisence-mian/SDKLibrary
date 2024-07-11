.class public final Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;
.super Ljava/lang/Object;
.source "LibHolder.java"


# static fields
.field public static volatile a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:Lcom/ss/android/a/a/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->e:Z

    .line 93
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->f:Lcom/ss/android/a/a/b/a/a;

    .line 419
    :try_start_12
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1f

    .line 421
    goto :goto_20

    .line 420
    :catchall_1f
    move-exception v0

    .line 422
    :goto_20
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
    .registers 4

    .line 683
    nop

    .line 685
    const-string v0, "download_exp_switch_temp"

    const v1, 0x3dffffff    # 0.12499999f

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 686
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$7;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$7;-><init>()V

    .line 687
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadSetting(Lcom/ss/android/socialbase/downloader/depend/ac;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object v0

    .line 693
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->downloadExpSwitch(I)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;-><init>(Landroid/content/Context;)V

    .line 694
    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->httpService(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object p0

    .line 696
    return-object p0
.end method

.method public static a()V
    .registers 5

    .line 450
    const/4 v0, 0x0

    .line 451
    :try_start_1
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b0

    const-string v2, "LibHolder"

    if-eqz v1, :cond_4a

    .line 453
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 455
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_b0

    if-nez v1, :cond_4a

    .line 461
    :try_start_29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_44

    .line 464
    goto :goto_4a

    .line 462
    :catchall_44
    move-exception v1

    .line 463
    :try_start_45
    const-string v3, "download dir error: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    :cond_4a
    :goto_4a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 469
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 471
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 472
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_6c

    .line 474
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_6c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 480
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 483
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 487
    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a:Ljava/lang/String;

    .line 490
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/m;->a()V

    .line 493
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_45 .. :try_end_af} :catchall_b0

    .line 495
    goto :goto_b1

    .line 494
    :catchall_b0
    move-exception v0

    .line 496
    :goto_b1
    return-void
.end method

.method public static a(I)V
    .registers 2

    .line 542
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 543
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_b
    return-void
.end method

.method public static a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V
    .registers 3

    .line 548
    if-eqz p1, :cond_1a

    .line 549
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d:Ljava/util/Map;

    if-nez v0, :cond_11

    .line 550
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d:Ljava/util/Map;

    .line 552
    :cond_11
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_1a
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 429
    if-nez p0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    .line 430
    :cond_6
    if-nez p0, :cond_9

    .line 431
    return-void

    .line 434
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->c:Landroid/content/Context;

    .line 436
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a()V

    .line 438
    sget-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_31

    .line 439
    const-class v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;

    monitor-enter v0

    .line 440
    :try_start_1d
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 441
    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Landroid/content/Context;)Z

    move-result v1

    .line 442
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 444
    :cond_2c
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_2e

    throw p0

    .line 446
    :cond_31
    :goto_31
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 10

    .line 306
    if-eqz p0, :cond_48

    if-nez p1, :cond_5

    goto :goto_48

    .line 309
    :cond_5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 310
    return-void

    .line 312
    :cond_c
    nop

    .line 313
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 314
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_20

    .line 313
    :cond_1d
    const-string p0, ""

    move-object v4, p0

    .line 316
    :goto_20
    nop

    .line 317
    nop

    .line 318
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 319
    const-string p0, "\u5e94\u7528\u5b89\u88c5\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u6253\u5f00 \uff1f"

    move-object v5, p0

    goto :goto_2f

    .line 318
    :cond_2c
    const-string p0, "\u5b89\u88c5\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u6253\u5f00 \uff1f"

    move-object v5, p0

    .line 321
    :goto_2f
    nop

    .line 322
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/i;->c()Lcom/bytedance/sdk/openadsdk/utils/a;

    move-result-object p0

    .line 323
    if-nez p0, :cond_3b

    .line 324
    return-void

    .line 326
    :cond_3b
    new-instance v6, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;-><init>(Lcom/bytedance/sdk/openadsdk/utils/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lcom/bytedance/sdk/openadsdk/utils/a$a;)V

    .line 375
    return-void

    .line 307
    :cond_48
    :goto_48
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/utils/a;Ljava/lang/String;)V
    .registers 5

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/utils/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 2

    .line 76
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/utils/a;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Lcom/bytedance/sdk/openadsdk/utils/a;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    .line 76
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 165
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_85

    .line 169
    :cond_e
    if-eqz p1, :cond_84

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->q()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_84

    .line 173
    :cond_17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_86

    .line 174
    const-string v1, "LibHolder"

    if-eqz v0, :cond_4f

    :try_start_1f
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 175
    const-string v0, "\u542b\u6709deepLink"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->G()I

    move-result v0

    if-eqz v0, :cond_4f

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deepLink\u8fc7\u6ee4 mMeta.getDownConfigAutoOpen() "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->G()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 181
    :cond_4f
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->q()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 183
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8be5app\u5df2\u88ab\u6fc0\u6d3b pkgName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void

    .line 188
    :cond_72
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->s()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 189
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    goto :goto_83

    .line 192
    :cond_7c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_1f .. :try_end_83} :catchall_86

    .line 197
    :cond_83
    :goto_83
    goto :goto_87

    .line 170
    :cond_84
    :goto_84
    return-void

    .line 166
    :cond_85
    :goto_85
    return-void

    .line 196
    :catchall_86
    move-exception p0

    .line 198
    :goto_87
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 605
    const/4 v0, 0x0

    if-eqz p0, :cond_38

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_38

    .line 609
    :cond_a
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/appdownloader/d;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 610
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 611
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 612
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 613
    const/4 p0, 0x1

    return p0

    .line 615
    :cond_36
    goto :goto_1c

    .line 617
    :cond_37
    return v0

    .line 606
    :cond_38
    :goto_38
    return v0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 3

    .line 289
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 290
    return v0

    .line 292
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 293
    return v0

    .line 295
    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v1

    .line 296
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->au()Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x4

    if-eq v1, p0, :cond_26

    .line 298
    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/k;->f()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 299
    :cond_26
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Z)V

    .line 300
    const/4 p0, 0x1

    return p0

    .line 302
    :cond_2b
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/Object;)Z
    .registers 14

    .line 562
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    if-nez p2, :cond_10

    goto :goto_4d

    .line 566
    :cond_10
    nop

    .line 567
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->h()Ljava/util/Map;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_4c

    .line 569
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 570
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 571
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;

    .line 572
    if-eqz v4, :cond_4b

    .line 573
    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;->a(ILcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    .line 574
    if-nez v1, :cond_4b

    if-nez v2, :cond_4b

    .line 575
    const/4 v1, 0x1

    .line 578
    :cond_4b
    goto :goto_1f

    .line 581
    :cond_4c
    return v1

    .line 563
    :cond_4d
    :goto_4d
    return v1
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .registers 3

    .line 711
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 712
    return v0

    .line 715
    :cond_4
    :try_start_4
    const-string v1, "enable_open_app_dialog"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 716
    const/4 v1, 0x1

    if-ne p0, v1, :cond_e

    .line 717
    return v1

    .line 721
    :cond_e
    nop

    .line 723
    return v0

    .line 719
    :catchall_10
    move-exception p0

    .line 720
    return v0
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/utils/a;Ljava/lang/String;)V
    .registers 9

    .line 256
    if-nez p0, :cond_3

    .line 257
    return-void

    .line 259
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->u()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 261
    sub-long/2addr v0, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_35

    .line 263
    nop

    .line 264
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 265
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 264
    :cond_23
    const-string p1, ""

    .line 267
    :goto_25
    nop

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 269
    const-string p2, "\u5e94\u7528\u5b89\u88c5\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u6253\u5f00 \uff1f"

    goto :goto_31

    .line 268
    :cond_2f
    const-string p2, "\u5b89\u88c5\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u6253\u5f00 \uff1f"

    .line 271
    :goto_31
    invoke-static {p3, p0, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Lcom/bytedance/sdk/openadsdk/utils/a;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    goto :goto_38

    .line 274
    :cond_35
    invoke-static {p0, p4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 276
    :goto_38
    return-void
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 10

    .line 202
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    return-void

    .line 205
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->c()Lcom/bytedance/sdk/openadsdk/utils/a;

    move-result-object v0

    .line 206
    if-nez v0, :cond_12

    .line 207
    return-void

    .line 209
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 210
    new-instance v7, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;

    move-object v1, v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/utils/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;J)V

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lcom/bytedance/sdk/openadsdk/utils/a$a;)V

    .line 253
    return-void
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/utils/a;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 379
    if-nez p0, :cond_3

    .line 380
    return-void

    .line 382
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u8be5app\u672a\u5b89\u88c5 packageName "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LibHolder"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void

    .line 386
    :cond_26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 387
    const-string p2, ""

    move-object v1, p2

    goto :goto_31

    .line 386
    :cond_30
    move-object v1, p2

    .line 389
    :goto_31
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;

    invoke-direct {v5, p1, p4, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/a;)V

    const-string v3, "\u7acb\u5373\u6253\u5f00"

    const-string v4, "\u9000\u51fa"

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 414
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 3

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a()Z

    move-result v0

    .line 126
    if-nez v0, :cond_e

    .line 127
    const-string p0, "LibHolder"

    const-string v0, "\u9501\u5c4f\u4e0d\u6267\u884c\u81ea\u542f\u52a8\u8c03\u8d77"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 130
    :cond_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 131
    return-void

    .line 133
    :cond_15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 134
    if-nez v0, :cond_20

    .line 135
    return-void

    .line 137
    :cond_20
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    if-nez v0, :cond_27

    .line 139
    return-void

    .line 141
    :cond_27
    const-string v1, "open_ad_sdk_download_extra"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    if-nez v0, :cond_30

    .line 143
    return-void

    .line 145
    :cond_30
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object v0

    .line 146
    if-nez v0, :cond_37

    .line 147
    return-void

    .line 149
    :cond_37
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 150
    if-nez v0, :cond_3c

    .line 151
    return-void

    .line 153
    :cond_3c
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 155
    return-void
.end method

.method public static b()Z
    .registers 3

    .line 504
    nop

    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    .line 506
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_17

    .line 505
    :cond_16
    const/4 v0, 0x1

    .line 508
    :goto_17
    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 5

    .line 625
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 626
    return v0

    .line 629
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 633
    const-string v1, ""

    .line 636
    :cond_14
    invoke-static {p0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/g;->a()Lcom/ss/android/a/a/a;

    move-result-object v2

    .line 637
    if-nez v2, :cond_1f

    .line 638
    return v0

    .line 642
    :cond_1f
    new-instance v0, Lcom/ss/android/a/a/c/a$a;

    invoke-direct {v0}, Lcom/ss/android/a/a/c/a$a;-><init>()V

    .line 643
    const-string v3, "143"

    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/a$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/a$a;

    move-result-object v0

    .line 644
    const-string v3, "open_news"

    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/a$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/a$a;

    move-result-object v0

    .line 645
    const-string v3, "3.4.1.2"

    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/a$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/a$a;

    move-result-object v0

    const/16 v3, 0xd54

    .line 646
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/android/a/a/c/a$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/a$a;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/ss/android/a/a/c/a$a;->a()Lcom/ss/android/a/a/c/a;

    move-result-object v0

    .line 649
    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/h;)Lcom/ss/android/a/a/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;-><init>(Landroid/content/Context;)V

    .line 650
    invoke-interface {v2, v3}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/f;)Lcom/ss/android/a/a/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-interface {v2, v3}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/k;)Lcom/ss/android/a/a/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;-><init>(Landroid/content/Context;)V

    .line 652
    invoke-interface {v2, v3}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/g;)Lcom/ss/android/a/a/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$5;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$5;-><init>()V

    .line 653
    invoke-interface {v2, v3}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/i;)Lcom/ss/android/a/a/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/a;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/a;-><init>(Landroid/content/Context;)V

    .line 659
    invoke-interface {v2, v3}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/a/b;)Lcom/ss/android/a/a/a;

    move-result-object v2

    .line 660
    invoke-interface {v2, v0}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/a/a/c/a;)Lcom/ss/android/a/a/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".TTFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    invoke-interface {v0, v1}, Lcom/ss/android/a/a/a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/a;

    move-result-object v0

    .line 662
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/a;->a(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)Lcom/ss/android/a/a/a;

    .line 665
    invoke-static {}, Lcom/ss/android/downloadlib/h/a;->a()V

    .line 668
    invoke-static {p0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->d()Lcom/ss/android/downloadad/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ss/android/downloadad/a/a;->a(I)V

    .line 669
    invoke-static {p0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object p0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->f:Lcom/ss/android/a/a/b/a/a;

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/a/a/b/a/a;)V

    .line 671
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$6;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/depend/af;)V

    .line 678
    return v1
.end method

.method public static c()V
    .registers 2

    .line 515
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_13

    .line 517
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->w()Z

    move-result v0

    .line 518
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->e:Z

    if-eq v1, v0, :cond_13

    .line 520
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->e:Z

    .line 521
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a()V

    .line 524
    :cond_13
    return-void
.end method

.method private static c(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 3

    .line 279
    if-nez p0, :cond_3

    .line 280
    return-void

    .line 282
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u901a\u8fc7\u5305\u540d\u8c03\u8d77 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LibHolder"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_25
    return-void
.end method

.method public static d()Lcom/ss/android/downloadlib/g;
    .registers 1

    .line 527
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    .line 528
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Landroid/content/Context;)Z

    .line 530
    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .registers 2

    .line 534
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/g;->g()V

    .line 535
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 536
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/l;->c(Ljava/io/File;)V

    .line 539
    :cond_19
    return-void
.end method

.method static synthetic f()Lorg/json/JSONObject;
    .registers 1

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->i()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static g()Landroid/content/Context;
    .registers 1

    .line 425
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->c:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private static h()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;",
            ">;"
        }
    .end annotation

    .line 558
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static i()Lorg/json/JSONObject;
    .registers 2

    .line 701
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->p()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 703
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->p()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 705
    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method
