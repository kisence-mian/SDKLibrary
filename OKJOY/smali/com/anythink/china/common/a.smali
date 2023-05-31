.class public Lcom/anythink/china/common/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/common/a/e;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/anythink/china/common/a;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/anythink/china/common/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:I

.field private k:J

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Lcom/anythink/china/common/service/ApkDownloadService$a;

.field private n:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/china/common/a;->j:I

    .line 51
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/anythink/china/common/a;->k:J

    .line 56
    new-instance v0, Lcom/anythink/china/common/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a$1;-><init>(Lcom/anythink/china/common/a;)V

    iput-object v0, p0, Lcom/anythink/china/common/a;->n:Landroid/content/ServiceConnection;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->d:Ljava/util/LinkedList;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->g:Ljava/util/Map;

    .line 78
    invoke-static {}, Lcom/anythink/china/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 80
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 85
    :cond_4c
    return-void
.end method

.method static synthetic a(Lcom/anythink/china/common/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/china/common/a;
    .registers 3

    .prologue
    .line 88
    sget-object v0, Lcom/anythink/china/common/a;->b:Lcom/anythink/china/common/a;

    if-nez v0, :cond_13

    .line 89
    const-class v1, Lcom/anythink/china/common/a;

    monitor-enter v1

    .line 90
    :try_start_7
    sget-object v0, Lcom/anythink/china/common/a;->b:Lcom/anythink/china/common/a;

    if-nez v0, :cond_12

    .line 91
    new-instance v0, Lcom/anythink/china/common/a;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/china/common/a;->b:Lcom/anythink/china/common/a;

    .line 93
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 95
    :cond_13
    sget-object v0, Lcom/anythink/china/common/a;->b:Lcom/anythink/china/common/a;

    return-object v0

    .line 93
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/anythink/china/common/a;Lcom/anythink/china/common/service/ApkDownloadService$a;)Lcom/anythink/china/common/service/ApkDownloadService$a;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/anythink/china/common/a;->m:Lcom/anythink/china/common/service/ApkDownloadService$a;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/china/common/a;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/anythink/china/common/a;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anythink/china/common/a;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/china/common/a;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/china/common/a;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    return-object v0
.end method

.method private e(Lcom/anythink/china/common/a/c;)V
    .registers 6

    .prologue
    .line 184
    iget-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Lcom/anythink/china/common/a$2;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a$2;-><init>(Lcom/anythink/china/common/a;)V

    .line 281
    iget-object v1, p0, Lcom/anythink/china/common/a;->g:Ljava/util/Map;

    iget-object v2, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "download: start and bind service"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    const-class v2, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 286
    const-string v1, "extra_url"

    iget-object v2, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 288
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/common/a;->n:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 290
    return-void
.end method

.method private static f(Lcom/anythink/china/common/a/c;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 558
    :cond_8
    :goto_8
    return-void

    .line 540
    :cond_9
    iget-object v0, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 543
    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 547
    :cond_1d
    iget-object v0, p0, Lcom/anythink/china/common/a;->m:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/china/common/a;->m:Lcom/anythink/china/common/service/ApkDownloadService$a;

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService$a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 548
    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_8

    .line 549
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/common/a;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 550
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 551
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    const-class v2, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 552
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_8

    .line 556
    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8
.end method

.method private h()V
    .registers 4

    .prologue
    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 607
    :goto_4
    return-void

    .line 597
    :cond_5
    new-instance v0, Lcom/anythink/china/common/b;

    invoke-direct {v0}, Lcom/anythink/china/common/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    .line 598
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 599
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_4

    .line 607
    :catch_23
    move-exception v0

    goto :goto_4
.end method

.method private i()V
    .registers 3

    .prologue
    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 612
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 618
    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public final a(J)V
    .registers 6

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    .line 100
    iput-wide p1, p0, Lcom/anythink/china/common/a;->k:J

    .line 103
    :cond_8
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/c;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_4

    .line 139
    :goto_3
    return-void

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 115
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".temp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 118
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is downloading, do nothing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff1a "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 122
    :cond_8e
    iget-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_95
    iget-object v0, p0, Lcom/anythink/china/common/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    move v1, v2

    .line 127
    :goto_9c
    if-ge v1, v3, :cond_ec

    .line 128
    iget-object v4, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    iget-object v0, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 129
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is waiting for downloading, do nothing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u7b49\u5f85\u4e0b\u8f7d\uff1a "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 127
    :cond_e8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9c

    .line 135
    :cond_ec
    iget-object v0, p0, Lcom/anythink/china/common/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/b/a;->b(Lcom/anythink/china/common/a/c;)V

    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 150
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 153
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public final b()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 158
    iget-object v0, p0, Lcom/anythink/china/common/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 159
    if-nez v0, :cond_a

    .line 181
    :cond_9
    return-void

    .line 164
    :cond_a
    if-gtz v0, :cond_5f

    .line 168
    :goto_c
    iget-object v2, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 169
    if-ge v2, v0, :cond_9

    .line 173
    sub-int v3, v0, v2

    .line 176
    const/4 v0, 0x0

    move v2, v0

    :goto_18
    if-ge v2, v3, :cond_9

    .line 177
    iget-object v0, p0, Lcom/anythink/china/common/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 1184
    iget-object v4, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    iget-object v5, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    new-instance v4, Lcom/anythink/china/common/a$2;

    invoke-direct {v4, p0}, Lcom/anythink/china/common/a$2;-><init>(Lcom/anythink/china/common/a;)V

    .line 1281
    iget-object v5, p0, Lcom/anythink/china/common/a;->g:Ljava/util/Map;

    iget-object v6, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    sget-object v4, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v5, "download: start and bind service"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1285
    iget-object v5, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    const-class v6, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1286
    const-string v5, "extra_url"

    iget-object v0, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1288
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/anythink/china/common/a;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v4, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 176
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18

    :cond_5f
    move v0, v1

    goto :goto_c
.end method

.method public final b(Lcom/anythink/china/common/a/c;)V
    .registers 12

    .prologue
    .line 317
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "checkPermissionAndInstall: "

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->i:Ljava/util/Map;

    .line 323
    :cond_12
    iget-object v0, p1, Lcom/anythink/china/common/a/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 324
    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/c;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 326
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/anythink/china/common/a/c;->e:Ljava/lang/String;

    .line 329
    :cond_31
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    :try_start_38
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3a} :catch_d1

    if-eqz v0, :cond_b2

    .line 2342
    :goto_3c
    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/c;)Ljava/lang/String;

    move-result-object v0

    .line 2343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 2347
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2350
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2351
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2353
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_d4

    .line 2354
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2356
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2357
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2361
    :goto_9b
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2363
    iget-object v1, p1, Lcom/anythink/china/common/a/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/anythink/china/common/a/c;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 338
    :cond_b1
    return-void

    .line 1597
    :cond_b2
    :try_start_b2
    new-instance v0, Lcom/anythink/china/common/b;

    invoke-direct {v0}, Lcom/anythink/china/common/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    .line 1598
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1599
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1600
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1602
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_cf} :catch_d1

    goto/16 :goto_3c

    :catch_d1
    move-exception v0

    goto/16 :goto_3c

    .line 2359
    :cond_d4
    const-string v2, "file://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9b
.end method

.method public final b(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    if-eqz v0, :cond_41

    .line 446
    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 447
    if-eqz v0, :cond_41

    .line 448
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") onClickNotification: start intall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/c;)V

    .line 450
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/c;)V

    .line 451
    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/c;)V

    .line 500
    :cond_40
    :goto_40
    return-void

    .line 457
    :cond_41
    iget-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 458
    if-eqz v0, :cond_85

    .line 459
    invoke-virtual {v0}, Lcom/anythink/china/common/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 460
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") onClickNotification: pause download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/anythink/china/common/a;->m:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz v1, :cond_78

    .line 462
    iget-object v1, p0, Lcom/anythink/china/common/a;->m:Lcom/anythink/china/common/service/ApkDownloadService$a;

    iget-object v2, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/china/common/service/ApkDownloadService$a;->a(Ljava/lang/String;)V

    .line 464
    :cond_78
    iget-object v1, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    iget-object v2, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7f} :catch_80

    goto :goto_40

    .line 498
    :catch_80
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_40

    .line 470
    :cond_85
    :try_start_85
    iget-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e2

    .line 471
    iget-object v0, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/china/common/a/c;

    .line 472
    if-eqz v1, :cond_bb

    .line 473
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/c;)V

    .line 474
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-wide v2, v1, Lcom/anythink/china/common/a/c;->g:J

    iget-wide v4, v1, Lcom/anythink/china/common/a/c;->h:J

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/c;JJZ)V

    .line 485
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    const-string v1, "\u5df2\u6709\u4efb\u52a1\u4e0b\u8f7d\u4e2d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_40

    .line 476
    :cond_bb
    iget-object v0, p0, Lcom/anythink/china/common/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    move v1, v2

    .line 477
    :goto_c2
    if-ge v1, v3, :cond_ae

    .line 478
    iget-object v0, p0, Lcom/anythink/china/common/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 479
    iget-object v2, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 480
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/b/a;->b(Lcom/anythink/china/common/a/c;)V

    goto :goto_ae

    .line 477
    :cond_de
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c2

    .line 489
    :cond_e2
    iget-object v0, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 490
    if-eqz v0, :cond_40

    .line 491
    invoke-virtual {v0}, Lcom/anythink/china/common/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 492
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") onClickNotification: resume download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a/c;)V
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_111} :catch_80

    goto/16 :goto_40
.end method

.method public final c(Lcom/anythink/china/common/a/c;)V
    .registers 12

    .prologue
    .line 342
    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/c;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 364
    :goto_a
    return-void

    .line 347
    :cond_b
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_77

    .line 354
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 357
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    :goto_60
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 363
    iget-object v1, p1, Lcom/anythink/china/common/a/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/anythink/china/common/a/c;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    goto :goto_a

    .line 359
    :cond_77
    const-string v2, "file://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_60
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 509
    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 510
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") onCleanNotification: download success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/c;)V

    .line 512
    iget-object v0, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-direct {p0}, Lcom/anythink/china/common/a;->g()V

    .line 533
    :goto_41
    return-void

    .line 519
    :cond_42
    iget-object v0, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 520
    if-eqz v0, :cond_7e

    .line 521
    invoke-virtual {v0}, Lcom/anythink/china/common/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 522
    iget-object v1, p0, Lcom/anythink/china/common/a;->m:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz v1, :cond_5d

    .line 523
    iget-object v1, p0, Lcom/anythink/china/common/a;->m:Lcom/anythink/china/common/service/ApkDownloadService$a;

    iget-object v2, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/china/common/service/ApkDownloadService$a;->b(Ljava/lang/String;)V

    .line 525
    :cond_5d
    iget-object v1, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/anythink/china/common/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") onCleanNotification: stop download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_7e
    invoke-direct {p0}, Lcom/anythink/china/common/a;->g()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_81} :catch_82

    goto :goto_41

    .line 531
    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 294
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "hasInstallPermission: "

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_18

    .line 296
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    .line 298
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public final d()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "requestInstallPermission: "

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method public final d(Lcom/anythink/china/common/a/c;)V
    .registers 5

    .prologue
    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 418
    if-lez v0, :cond_25

    .line 419
    iget-object v0, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 420
    if-eqz v0, :cond_24

    .line 421
    iget-object v1, p0, Lcom/anythink/china/common/a;->f:Ljava/util/Map;

    iget-object v2, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v0}, Lcom/anythink/china/common/a/c;->d()V

    .line 423
    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a/c;)V

    .line 424
    invoke-virtual {p0}, Lcom/anythink/china/common/a;->b()V

    .line 437
    :cond_24
    :goto_24
    return-void

    .line 427
    :cond_25
    iget-object v0, p1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    .line 3148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 3150
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 427
    :goto_4d
    if-eqz v0, :cond_5a

    .line 428
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/c;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_24

    .line 435
    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_24

    .line 3153
    :cond_58
    const/4 v0, 0x0

    goto :goto_4d

    .line 430
    :cond_5a
    :try_start_5a
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a/c;)V

    .line 431
    invoke-virtual {p0}, Lcom/anythink/china/common/a;->b()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_60} :catch_53

    goto :goto_24
.end method

.method public final d(Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 589
    :cond_8
    :goto_8
    return-void

    .line 566
    :cond_9
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 567
    if-eqz v0, :cond_8

    .line 571
    invoke-static {v0}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/c;)Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 573
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 576
    :cond_25
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v1, p0, Lcom/anythink/china/common/a;->h:Ljava/util/Map;

    iget-object v2, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/c;)V

    .line 580
    iget-object v1, v0, Lcom/anythink/china/common/a/c;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/anythink/china/common/a/c;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 582
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4e} :catch_63

    move-result v0

    if-nez v0, :cond_5f

    .line 3611
    :try_start_51
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5f

    .line 3612
    iget-object v0, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/common/a;->l:Landroid/content/BroadcastReceiver;
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5f} :catch_68

    .line 585
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-direct {p0}, Lcom/anythink/china/common/a;->g()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_8

    .line 587
    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_68
    move-exception v0

    goto :goto_5f
.end method

.method public final e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;
    .registers 3

    .prologue
    .line 628
    iget-object v0, p0, Lcom/anythink/china/common/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/a$a;

    return-object v0
.end method

.method public final e()V
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 374
    :try_start_1
    invoke-static {}, Lcom/anythink/china/common/c/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 412
    :cond_b
    :goto_b
    return-void

    .line 379
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 381
    if-eqz v3, :cond_1a

    array-length v1, v3

    if-eqz v1, :cond_b

    .line 385
    :cond_1a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 387
    iget-wide v8, p0, Lcom/anythink/china/common/a;->k:J

    .line 388
    array-length v5, v3

    move v2, v0

    :goto_27
    if-ge v2, v5, :cond_6a

    aget-object v10, v3, v2

    .line 389
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v11, ".apk"

    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 391
    iget-object v1, p0, Lcom/anythink/china/common/a;->c:Landroid/content/Context;

    .line 3046
    if-eqz v1, :cond_3d

    if-nez v10, :cond_47

    :cond_3d
    move v1, v0

    .line 391
    :goto_3e
    if-eqz v1, :cond_58

    .line 392
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_43
    :goto_43
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_27

    .line 3050
    :cond_47
    invoke-static {v1, v10}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 3051
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_56

    .line 3052
    invoke-static {v1, v11}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3e

    :cond_56
    move v1, v0

    .line 3054
    goto :goto_3e

    .line 397
    :cond_58
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    add-long/2addr v12, v8

    cmp-long v1, v12, v6

    if-gez v1, :cond_43

    .line 399
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_64} :catch_65

    goto :goto_43

    .line 410
    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 404
    :cond_6a
    :try_start_6a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 405
    :goto_6f
    if-ge v1, v2, :cond_b

    .line 406
    sget-object v3, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "clean expired file -> "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_98} :catch_65

    .line 405
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6f
.end method

.method public final f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/anythink/china/common/a;->e:Ljava/util/Map;

    return-object v0
.end method
