.class public Lcom/ss/android/socialbase/downloader/downloader/b;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"


# static fields
.field private static A:I

.field private static final B:I

.field private static final C:I

.field private static final D:I

.field private static E:I

.field private static F:Z

.field private static volatile G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private static H:I

.field private static I:Lorg/json/JSONObject;

.field private static J:Lcom/ss/android/socialbase/downloader/h/b;

.field private static volatile K:Z

.field private static volatile a:Landroid/content/Context;

.field private static volatile b:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private static volatile c:Lcom/ss/android/socialbase/downloader/downloader/l;

.field private static volatile d:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private static volatile e:Lcom/ss/android/socialbase/downloader/d/ac;

.field private static volatile f:Lcom/ss/android/socialbase/downloader/impls/a;

.field private static volatile g:Lcom/ss/android/socialbase/downloader/downloader/p;

.field private static volatile h:Lcom/ss/android/socialbase/downloader/downloader/p;

.field private static volatile i:Lcom/ss/android/socialbase/downloader/i/f;

.field private static volatile j:Lcom/ss/android/socialbase/downloader/i/d;

.field private static volatile k:Lcom/ss/android/socialbase/downloader/i/f;

.field private static volatile l:Lcom/ss/android/socialbase/downloader/i/d;

.field private static volatile m:Lcom/ss/android/socialbase/downloader/downloader/m;

.field private static volatile n:Ljava/util/concurrent/ExecutorService;

.field private static volatile o:Ljava/util/concurrent/ExecutorService;

.field private static volatile p:Ljava/util/concurrent/ExecutorService;

.field private static volatile q:Ljava/util/concurrent/ExecutorService;

.field private static volatile r:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private static volatile s:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

.field private static volatile t:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private static volatile u:Lcom/ss/android/socialbase/downloader/downloader/q;

.field private static volatile v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/ag;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile w:Z

.field private static volatile x:Lokhttp3/OkHttpClient;

.field private static volatile y:Landroid/app/AlarmManager;

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ljava/util/List;

    .line 88
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Z

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lokhttp3/OkHttpClient;

    .line 92
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->z:Z

    .line 94
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/b;->B:I

    .line 95
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/b;->C:I

    .line 96
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/b;->D:I

    .line 97
    const/16 v0, 0x2000

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/b;->E:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->G:Ljava/util/List;

    .line 107
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->K:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public static A()Lcom/ss/android/socialbase/downloader/downloader/r;
    .registers 2

    .prologue
    .line 705
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Lcom/ss/android/socialbase/downloader/downloader/r;

    if-nez v0, :cond_13

    .line 706
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 707
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Lcom/ss/android/socialbase/downloader/downloader/r;

    if-nez v0, :cond_12

    .line 708
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/j;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/j;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 709
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 711
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object v0

    .line 709
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static declared-synchronized B()Landroid/content/Context;
    .registers 2

    .prologue
    .line 715
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized C()Z
    .registers 2

    .prologue
    .line 741
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static D()Lcom/ss/android/socialbase/downloader/h/b;
    .registers 1

    .prologue
    .line 745
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->J:Lcom/ss/android/socialbase/downloader/h/b;

    return-object v0
.end method

.method private static E()V
    .registers 3

    .prologue
    .line 198
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    if-nez v0, :cond_b

    .line 199
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    .line 202
    :cond_b
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->z:Z

    if-eqz v0, :cond_10

    .line 214
    :goto_f
    return-void

    .line 206
    :cond_10
    :try_start_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->z:Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_24} :catch_25

    goto :goto_f

    .line 210
    :catch_25
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f
.end method

.method private static F()I
    .registers 2

    .prologue
    .line 619
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    if-lez v0, :cond_a

    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    sget v1, Lcom/ss/android/socialbase/downloader/downloader/b;->B:I

    if-le v0, v1, :cond_e

    .line 620
    :cond_a
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->B:I

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    .line 621
    :cond_e
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    return v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;)I
    .registers 3

    .prologue
    .line 728
    if-nez p0, :cond_4

    .line 729
    const/4 v0, 0x0

    .line 730
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 734
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->s()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 735
    if-nez v0, :cond_8

    .line 736
    const/4 v0, 0x0

    .line 737
    :goto_7
    return v0

    :cond_8
    invoke-interface {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/i/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->e()Lcom/ss/android/socialbase/downloader/i/d;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_22

    .line 358
    :try_start_7
    invoke-interface {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/i/d;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/c;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_1f

    move-result-object v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 363
    :goto_e
    if-nez v0, :cond_1a

    .line 364
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->g()Lcom/ss/android/socialbase/downloader/i/d;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_1a

    .line 366
    invoke-interface {v2, p0, p1}, Lcom/ss/android/socialbase/downloader/i/d;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/c;

    move-result-object v0

    .line 370
    :cond_1a
    if-nez v0, :cond_21

    if-eqz v1, :cond_21

    .line 371
    throw v1

    .line 359
    :catch_1f
    move-exception v1

    goto :goto_e

    .line 373
    :cond_21
    return-object v0

    :cond_22
    move-object v1, v0

    goto :goto_e
.end method

.method public static a(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/i/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/e/a;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->c()Lcom/ss/android/socialbase/downloader/i/f;

    move-result-object v2

    .line 325
    if-nez v2, :cond_18

    if-nez p0, :cond_18

    .line 326
    new-instance v0, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v1, 0x3fe

    new-instance v2, Ljava/io/IOException;

    const-string v3, "download can\'t continue, because httpService not exist"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 332
    :cond_18
    if-eqz v2, :cond_41

    .line 334
    :try_start_1a
    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/i/f;->a(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_3e

    move-result-object v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 340
    :goto_21
    if-eqz p0, :cond_39

    if-nez v0, :cond_39

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/ss/android/socialbase/downloader/impls/g;

    if-eq v2, v3, :cond_39

    .line 341
    :cond_2f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->f()Lcom/ss/android/socialbase/downloader/i/f;

    move-result-object v2

    .line 342
    if-eqz v2, :cond_39

    .line 343
    invoke-interface {v2, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/i/f;->a(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;

    move-result-object v0

    .line 347
    :cond_39
    if-nez v0, :cond_40

    if-eqz v1, :cond_40

    .line 348
    throw v1

    .line 335
    :catch_3e
    move-exception v1

    goto :goto_21

    .line 349
    :cond_40
    return-object v0

    :cond_41
    move-object v1, v0

    goto :goto_21
.end method

.method public static declared-synchronized a()V
    .registers 4

    .prologue
    .line 228
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3a

    if-eqz v0, :cond_9

    .line 247
    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    .line 230
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_3a

    .line 233
    :try_start_c
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string v2, "com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 237
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v0

    if-nez v0, :cond_7

    .line 238
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->d()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_31} :catch_32
    .catchall {:try_start_c .. :try_end_31} :catchall_3a

    goto :goto_7

    .line 241
    :catch_32
    move-exception v0

    .line 242
    const/4 v2, 0x0

    :try_start_34
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Z

    .line 243
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    goto :goto_7

    .line 228
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(I)V
    .registers 1

    .prologue
    .line 625
    if-lez p0, :cond_4

    .line 626
    sput p0, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    .line 627
    :cond_4
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 719
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    if-eqz p0, :cond_16

    :try_start_5
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    if-nez v0, :cond_16

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    .line 723
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/a/a;->b()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_18

    .line 725
    :cond_16
    monitor-exit v1

    return-void

    .line 719
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/b/d;)V
    .registers 5

    .prologue
    .line 295
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->G:Ljava/util/List;

    monitor-enter v1

    .line 296
    :try_start_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->G:Ljava/util/List;

    if-nez v0, :cond_9

    .line 297
    monitor-exit v1

    .line 310
    :goto_8
    return-void

    .line 298
    :cond_9
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 299
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 300
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/k;

    .line 301
    if-eqz v0, :cond_f

    .line 302
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/d;->b:Lcom/ss/android/socialbase/downloader/b/d;

    if-ne p0, v3, :cond_28

    .line 303
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/k;->a()V

    goto :goto_f

    .line 309
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0

    .line 304
    :cond_28
    :try_start_28
    sget-object v3, Lcom/ss/android/socialbase/downloader/b/d;->c:Lcom/ss/android/socialbase/downloader/b/d;

    if-ne p0, v3, :cond_f

    .line 305
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/d/k;->b()V

    goto :goto_f

    .line 308
    :cond_30
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_25

    goto :goto_8
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/ac;)V
    .registers 1

    .prologue
    .line 680
    if-eqz p0, :cond_4

    .line 681
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/d/ac;

    .line 683
    :cond_4
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/ag;)V
    .registers 3

    .prologue
    .line 265
    if-nez p0, :cond_3

    .line 270
    :goto_2
    return-void

    .line 267
    :cond_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ljava/util/List;

    monitor-enter v1

    .line 268
    :try_start_6
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    monitor-exit v1

    goto :goto_2

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/g;)V
    .registers 5

    .prologue
    .line 113
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->K:Z

    if-eqz v0, :cond_10

    .line 114
    const-string v0, "DownloadComponentManager"

    const-string v2, "component has init"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12b

    .line 195
    :goto_e
    monitor-exit v1

    return-void

    .line 118
    :cond_10
    :try_start_10
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Z

    .line 119
    if-eqz p0, :cond_a6

    .line 120
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->b()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 122
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->c()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/l;)V

    .line 123
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->l()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 124
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->r()Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/d/ac;)V

    .line 125
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->k()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(I)V

    .line 126
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->d()Lcom/ss/android/socialbase/downloader/i/f;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/i/f;)V

    .line 127
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->e()Lcom/ss/android/socialbase/downloader/i/d;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/i/d;)V

    .line 128
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->f()Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/m;)V

    .line 129
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/util/concurrent/ExecutorService;)V

    .line 130
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 131
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->d(Ljava/util/concurrent/ExecutorService;)V

    .line 132
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 133
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->p()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 134
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->p()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v2

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Lcom/ss/android/socialbase/downloader/downloader/q;

    .line 136
    :cond_7b
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->n()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_89

    .line 137
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->n()I

    move-result v2

    sput v2, Lcom/ss/android/socialbase/downloader/downloader/b;->E:I

    .line 139
    :cond_89
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->m()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/h;)V

    .line 140
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->o()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 141
    const/4 v2, 0x1

    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Z

    .line 143
    :cond_99
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->q()I

    move-result v2

    sput v2, Lcom/ss/android/socialbase/downloader/downloader/b;->H:I

    .line 144
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->s()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lorg/json/JSONObject;)V

    .line 147
    :cond_a6
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez v2, :cond_b1

    .line 148
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 149
    :cond_b1
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v2, :cond_bc

    .line 150
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/impls/h;-><init>()V

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 151
    :cond_bc
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v2, :cond_c7

    .line 152
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/impls/n;-><init>()V

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 153
    :cond_c7
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v2, :cond_d2

    .line 154
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/i;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/impls/i;-><init>()V

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 155
    :cond_d2
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v2, :cond_dd

    .line 156
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/e;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/impls/e;-><init>()V

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 157
    :cond_dd
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v2, :cond_e8

    .line 158
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/c;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/impls/c;-><init>()V

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 159
    :cond_e8
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v2, :cond_f3

    .line 160
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/b;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/impls/b;-><init>()V

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 161
    :cond_f3
    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Lcom/ss/android/socialbase/downloader/downloader/r;

    if-nez v2, :cond_fe

    .line 162
    new-instance v2, Lcom/ss/android/socialbase/downloader/impls/j;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/impls/j;-><init>()V

    sput-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 163
    :cond_fe
    sget v2, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    if-lez v2, :cond_108

    sget v2, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    sget v3, Lcom/ss/android/socialbase/downloader/downloader/b;->B:I

    if-le v2, v3, :cond_10c

    .line 164
    :cond_108
    sget v2, Lcom/ss/android/socialbase/downloader/downloader/b;->B:I

    sput v2, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    .line 166
    :cond_10c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->E()V

    .line 167
    sget-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Z

    if-eqz v2, :cond_12e

    if-nez v0, :cond_12e

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->c()Z

    move-result v0

    if-nez v0, :cond_12e

    .line 168
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->d()V

    .line 192
    :cond_123
    :goto_123
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/a/b;->a()V

    .line 194
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->K:Z
    :try_end_129
    .catchall {:try_start_10 .. :try_end_129} :catchall_12b

    goto/16 :goto_e

    .line 113
    :catchall_12b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 171
    :cond_12e
    :try_start_12e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/f;->d()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 172
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_123

    .line 174
    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/b$1;

    invoke-direct {v2}, Lcom/ss/android/socialbase/downloader/downloader/b$1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_123

    .line 185
    :cond_143
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_123

    .line 187
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/f;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_14c
    .catchall {:try_start_12e .. :try_end_14c} :catchall_12b

    goto :goto_123
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/h;)V
    .registers 1

    .prologue
    .line 700
    if-eqz p0, :cond_4

    .line 701
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 702
    :cond_4
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/i;)V
    .registers 1

    .prologue
    .line 675
    if-eqz p0, :cond_4

    .line 676
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 677
    :cond_4
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/k;)V
    .registers 1

    .prologue
    .line 567
    if-eqz p0, :cond_4

    .line 568
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 569
    :cond_4
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/l;)V
    .registers 1

    .prologue
    .line 614
    if-eqz p0, :cond_4

    .line 615
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 616
    :cond_4
    return-void
.end method

.method public static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/m;)V
    .registers 3

    .prologue
    .line 410
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    if-eqz p0, :cond_14

    .line 411
    :try_start_5
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Lcom/ss/android/socialbase/downloader/downloader/m;

    .line 412
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    instance-of v0, v0, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz v0, :cond_14

    .line 413
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    check-cast v0, Lcom/ss/android/socialbase/downloader/impls/d;

    .line 414
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/d;->g()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_16

    .line 417
    :cond_14
    monitor-exit v1

    return-void

    .line 410
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/i/d;)V
    .registers 1

    .prologue
    .line 551
    if-eqz p0, :cond_4

    .line 552
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lcom/ss/android/socialbase/downloader/i/d;

    .line 553
    :cond_4
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/i/f;)V
    .registers 2

    .prologue
    .line 545
    if-eqz p0, :cond_4

    .line 546
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/i/f;

    .line 547
    :cond_4
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/i/f;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Z

    .line 548
    return-void

    .line 547
    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .prologue
    .line 435
    if-eqz p0, :cond_4

    .line 436
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Ljava/util/concurrent/ExecutorService;

    .line 438
    :cond_4
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 650
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:Lorg/json/JSONObject;

    if-eq v0, p0, :cond_10

    .line 651
    if-nez p0, :cond_b

    .line 652
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 654
    :cond_b
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:Lorg/json/JSONObject;

    .line 656
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->a()V

    .line 658
    :cond_10
    return-void
.end method

.method private static b(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .prologue
    .line 420
    if-eqz p0, :cond_4

    .line 421
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    .line 422
    :cond_4
    return-void
.end method

.method public static declared-synchronized b()Z
    .registers 2

    .prologue
    .line 250
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()Lcom/ss/android/socialbase/downloader/i/f;
    .registers 2

    .prologue
    .line 254
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/i/f;

    if-nez v0, :cond_13

    .line 255
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 256
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/i/f;

    if-nez v0, :cond_12

    .line 257
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/g;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/g;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/i/f;

    .line 259
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 261
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lcom/ss/android/socialbase/downloader/i/f;

    return-object v0

    .line 259
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static c(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .prologue
    .line 425
    if-eqz p0, :cond_4

    .line 426
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    .line 427
    :cond_4
    return-void
.end method

.method public static d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/d/ag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ljava/util/List;

    monitor-enter v1

    .line 274
    :try_start_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 275
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static d(Ljava/util/concurrent/ExecutorService;)V
    .registers 1

    .prologue
    .line 430
    if-eqz p0, :cond_4

    .line 431
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    .line 432
    :cond_4
    return-void
.end method

.method public static e()Lcom/ss/android/socialbase/downloader/i/d;
    .registers 2

    .prologue
    .line 313
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lcom/ss/android/socialbase/downloader/i/d;

    if-nez v0, :cond_13

    .line 314
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 315
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lcom/ss/android/socialbase/downloader/i/d;

    if-nez v0, :cond_12

    .line 316
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/f;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/f;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lcom/ss/android/socialbase/downloader/i/d;

    .line 318
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 320
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lcom/ss/android/socialbase/downloader/i/d;

    return-object v0

    .line 318
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static f()Lcom/ss/android/socialbase/downloader/i/f;
    .registers 2

    .prologue
    .line 377
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lcom/ss/android/socialbase/downloader/i/f;

    if-nez v0, :cond_13

    .line 378
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 379
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lcom/ss/android/socialbase/downloader/i/f;

    if-nez v0, :cond_12

    .line 380
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/g;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/g;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lcom/ss/android/socialbase/downloader/i/f;

    .line 382
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 384
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lcom/ss/android/socialbase/downloader/i/f;

    return-object v0

    .line 382
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static g()Lcom/ss/android/socialbase/downloader/i/d;
    .registers 2

    .prologue
    .line 388
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/i/d;

    if-nez v0, :cond_13

    .line 389
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 390
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/i/d;

    if-nez v0, :cond_12

    .line 391
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/f;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/f;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/i/d;

    .line 393
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 395
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/i/d;

    return-object v0

    .line 393
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static h()Landroid/app/AlarmManager;
    .registers 3

    .prologue
    .line 399
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:Landroid/app/AlarmManager;

    if-nez v0, :cond_1c

    .line 400
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 401
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:Landroid/app/AlarmManager;

    if-nez v0, :cond_1b

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 402
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:Landroid/app/AlarmManager;

    .line 404
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1f

    .line 406
    :cond_1c
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:Landroid/app/AlarmManager;

    return-object v0

    .line 404
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public static declared-synchronized i()Lcom/ss/android/socialbase/downloader/downloader/q;
    .registers 2

    .prologue
    .line 441
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Lcom/ss/android/socialbase/downloader/downloader/q;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .prologue
    .line 445
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2d

    .line 446
    const-class v9, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v9

    .line 447
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2c

    .line 448
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->F()I

    move-result v2

    .line 449
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/ss/android/socialbase/downloader/l/a;

    const-string v0, "DownloadThreadPool-cpu-fixed"

    const/4 v3, 0x1

    invoke-direct {v8, v0, v3}, Lcom/ss/android/socialbase/downloader/l/a;-><init>(Ljava/lang/String;Z)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_35

    .line 452
    const/4 v0, 0x1

    :try_start_27
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_30
    .catchall {:try_start_27 .. :try_end_2a} :catchall_35

    .line 457
    :goto_2a
    :try_start_2a
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    .line 459
    :cond_2c
    monitor-exit v9
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_35

    .line 461
    :cond_2d
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    return-object v0

    .line 453
    :catch_30
    move-exception v0

    .line 454
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a

    .line 459
    :catchall_35
    move-exception v0

    monitor-exit v9
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public static k()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .prologue
    .line 465
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2c

    .line 466
    const-class v9, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v9

    .line 467
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2b

    .line 468
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/ss/android/socialbase/downloader/downloader/b;->C:I

    sget v3, Lcom/ss/android/socialbase/downloader/downloader/b;->C:I

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/ss/android/socialbase/downloader/l/a;

    const-string v0, "DownloadThreadPool-io-fixed"

    const/4 v10, 0x1

    invoke-direct {v8, v0, v10}, Lcom/ss/android/socialbase/downloader/l/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_34

    .line 471
    const/4 v0, 0x1

    :try_start_26
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2f
    .catchall {:try_start_26 .. :try_end_29} :catchall_34

    .line 476
    :goto_29
    :try_start_29
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    .line 478
    :cond_2b
    monitor-exit v9
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_34

    .line 480
    :cond_2c
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    return-object v0

    .line 472
    :catch_2f
    move-exception v0

    .line 473
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    .line 478
    :catchall_34
    move-exception v0

    monitor-exit v9
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static l()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .prologue
    .line 484
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2c

    .line 485
    const-class v9, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v9

    .line 486
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2b

    .line 487
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/ss/android/socialbase/downloader/downloader/b;->C:I

    sget v3, Lcom/ss/android/socialbase/downloader/downloader/b;->C:I

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/ss/android/socialbase/downloader/l/a;

    const-string v0, "DownloadThreadPool-chunk-fixed"

    const/4 v10, 0x1

    invoke-direct {v8, v0, v10}, Lcom/ss/android/socialbase/downloader/l/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_34

    .line 490
    const/4 v0, 0x1

    :try_start_26
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2f
    .catchall {:try_start_26 .. :try_end_29} :catchall_34

    .line 495
    :goto_29
    :try_start_29
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Ljava/util/concurrent/ExecutorService;

    .line 497
    :cond_2b
    monitor-exit v9
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_34

    .line 499
    :cond_2c
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Ljava/util/concurrent/ExecutorService;

    return-object v0

    .line 491
    :catch_2f
    move-exception v0

    .line 492
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    .line 497
    :catchall_34
    move-exception v0

    monitor-exit v9
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static m()Ljava/util/concurrent/ExecutorService;
    .registers 11

    .prologue
    .line 503
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2c

    .line 504
    const-class v9, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v9

    .line 505
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2b

    .line 506
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/ss/android/socialbase/downloader/downloader/b;->D:I

    sget v3, Lcom/ss/android/socialbase/downloader/downloader/b;->D:I

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/ss/android/socialbase/downloader/l/a;

    const-string v0, "DownloadThreadPool-db-fixed"

    const/4 v10, 0x1

    invoke-direct {v8, v0, v10}, Lcom/ss/android/socialbase/downloader/l/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_34

    .line 509
    const/4 v0, 0x1

    :try_start_26
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2f
    .catchall {:try_start_26 .. :try_end_29} :catchall_34

    .line 514
    :goto_29
    :try_start_29
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    .line 516
    :cond_2b
    monitor-exit v9
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_34

    .line 518
    :cond_2c
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Ljava/util/concurrent/ExecutorService;

    return-object v0

    .line 510
    :catch_2f
    move-exception v0

    .line 511
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    .line 516
    :catchall_34
    move-exception v0

    monitor-exit v9
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static n()Lokhttp3/OkHttpClient;
    .registers 6

    .prologue
    .line 522
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_4f

    .line 523
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 524
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_4e

    .line 525
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 526
    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const-wide/16 v4, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 527
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const-wide/16 v4, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 528
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 529
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    new-instance v3, Lokhttp3/Dispatcher;

    .line 530
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v3, v4}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 531
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 532
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 533
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lokhttp3/OkHttpClient;

    .line 535
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_52

    .line 537
    :cond_4f
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Lokhttp3/OkHttpClient;

    return-object v0

    .line 535
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public static declared-synchronized o()Lcom/ss/android/socialbase/downloader/downloader/m;
    .registers 2

    .prologue
    .line 541
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Lcom/ss/android/socialbase/downloader/downloader/m;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static p()Lcom/ss/android/socialbase/downloader/downloader/k;
    .registers 2

    .prologue
    .line 556
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez v0, :cond_13

    .line 557
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 558
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez v0, :cond_12

    .line 559
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 561
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 563
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-object v0

    .line 561
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static q()Lcom/ss/android/socialbase/downloader/downloader/p;
    .registers 2

    .prologue
    .line 572
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v0, :cond_13

    .line 573
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 574
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v0, :cond_12

    .line 575
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/h;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 577
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 579
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    return-object v0

    .line 577
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static r()Lcom/ss/android/socialbase/downloader/downloader/p;
    .registers 2

    .prologue
    .line 583
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v0, :cond_13

    .line 584
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 585
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v0, :cond_12

    .line 586
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/n;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 588
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 590
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lcom/ss/android/socialbase/downloader/downloader/p;

    return-object v0

    .line 588
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static s()Lcom/ss/android/socialbase/downloader/downloader/l;
    .registers 2

    .prologue
    .line 594
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_13

    .line 595
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 596
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_12

    .line 597
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/i;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/i;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 598
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 600
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    return-object v0

    .line 598
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static t()Lcom/ss/android/socialbase/downloader/impls/a;
    .registers 2

    .prologue
    .line 604
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v0, :cond_13

    .line 605
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 606
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v0, :cond_12

    .line 607
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/e;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/e;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 608
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 610
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    return-object v0

    .line 608
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static u()I
    .registers 1

    .prologue
    .line 630
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->H:I

    return v0
.end method

.method public static v()Lorg/json/JSONObject;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 635
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:Lorg/json/JSONObject;

    if-nez v0, :cond_13

    .line 636
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 637
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:Lorg/json/JSONObject;

    if-nez v0, :cond_12

    .line 638
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:Lorg/json/JSONObject;

    .line 640
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 642
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->I:Lorg/json/JSONObject;

    return-object v0

    .line 640
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static declared-synchronized w()I
    .registers 2

    .prologue
    .line 661
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ss/android/socialbase/downloader/downloader/b;->E:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static x()Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 2

    .prologue
    .line 665
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_13

    .line 666
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 667
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_12

    .line 668
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/c;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/c;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 669
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 671
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0

    .line 669
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static y()Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 1

    .prologue
    .line 686
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/d/ac;

    return-object v0
.end method

.method public static z()Lcom/ss/android/socialbase/downloader/downloader/h;
    .registers 2

    .prologue
    .line 690
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_13

    .line 691
    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v1

    .line 692
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_12

    .line 693
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/b;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/b;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 694
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 696
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0

    .line 694
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method
