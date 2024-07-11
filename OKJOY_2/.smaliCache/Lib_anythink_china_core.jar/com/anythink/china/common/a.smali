.class public Lcom/anythink/china/common/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/china/common/a/g;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "action_offer_download_start"

.field public static final c:Ljava/lang/String; = "action_offer_download_end"

.field public static final d:Ljava/lang/String; = "action_offer_install_start"

.field public static final e:Ljava/lang/String; = "action_offer_install_successful"

.field public static final f:Ljava/lang/String; = "receiver_extra_offer_id"

.field public static final g:Ljava/lang/String; = "receiver_extra_click_id"

.field private static h:Lcom/anythink/china/common/a;


# instance fields
.field private i:Landroid/content/Context;

.field private j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final p:I

.field private q:J

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Lcom/anythink/china/common/service/ApkDownloadService$a;

.field private t:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/china/common/a;->p:I

    .line 71
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/anythink/china/common/a;->q:J

    .line 76
    new-instance v0, Lcom/anythink/china/common/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a$1;-><init>(Lcom/anythink/china/common/a;)V

    iput-object v0, p0, Lcom/anythink/china/common/a;->t:Landroid/content/ServiceConnection;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    .line 92
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/a;->j:Ljava/util/LinkedList;

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    .line 94
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/a;->m:Ljava/util/Map;

    .line 98
    invoke-static {}, Lcom/anythink/china/common/c/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 105
    :cond_4c
    return-void
.end method

.method static synthetic a(Lcom/anythink/china/common/a;)Landroid/content/Context;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/china/common/a;
    .registers 3

    const-class v0, Lcom/anythink/china/common/a;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/anythink/china/common/a;->h:Lcom/anythink/china/common/a;

    if-nez v1, :cond_e

    .line 109
    new-instance v1, Lcom/anythink/china/common/a;

    invoke-direct {v1, p0}, Lcom/anythink/china/common/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/china/common/a;->h:Lcom/anythink/china/common/a;

    .line 111
    :cond_e
    sget-object p0, Lcom/anythink/china/common/a;->h:Lcom/anythink/china/common/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 107
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/anythink/china/common/a;Lcom/anythink/china/common/service/ApkDownloadService$a;)Lcom/anythink/china/common/service/ApkDownloadService$a;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/anythink/china/common/a;->s:Lcom/anythink/china/common/service/ApkDownloadService$a;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/china/common/a;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/anythink/china/common/a;->n:Ljava/util/Map;

    return-object p1
.end method

.method private a(J)V
    .registers 5

    .line 145
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    .line 146
    iput-wide p1, p0, Lcom/anythink/china/common/a;->q:J

    .line 148
    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/anythink/china/common/a;Ljava/lang/String;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/anythink/china/common/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/china/common/a;)Ljava/util/Map;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/anythink/china/common/a;->m:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/china/common/a;)Ljava/util/Map;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/china/common/a;)Ljava/util/Map;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/Map;

    return-object p0
.end method

.method private e(Lcom/anythink/china/common/a/e;)V
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v0, Lcom/anythink/china/common/a$2;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/a$2;-><init>(Lcom/anythink/china/common/a;)V

    .line 340
    iget-object v1, p0, Lcom/anythink/china/common/a;->m:Ljava/util/Map;

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "download: start and bind service"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    const-class v2, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 345
    iget-object p1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    const-string v1, "extra_unique_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 347
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/common/a;->t:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 349
    return-void
.end method

.method private static f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;
    .registers 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    .line 705
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/common/a$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/china/common/a$3;-><init>(Lcom/anythink/china/common/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 711
    return-void
.end method

.method private g()V
    .registers 4

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 604
    return-void

    .line 606
    :cond_9
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_12

    .line 607
    return-void

    .line 609
    :cond_12
    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/Map;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 610
    return-void

    .line 613
    :cond_1d
    iget-object v0, p0, Lcom/anythink/china/common/a;->s:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/anythink/china/common/service/ApkDownloadService$a;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 614
    iget-object v0, p0, Lcom/anythink/china/common/a;->t:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_41

    .line 615
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 616
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 617
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    const-class v2, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 618
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    .line 623
    :cond_41
    return-void

    .line 622
    :catchall_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 624
    return-void
.end method

.method private h()V
    .registers 4

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 667
    return-void

    .line 670
    :cond_5
    new-instance v0, Lcom/anythink/china/common/b;

    invoke-direct {v0}, Lcom/anythink/china/common/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;

    .line 671
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 672
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    .line 679
    return-void

    .line 677
    :catchall_23
    move-exception v0

    .line 680
    return-void
.end method

.method private i()V
    .registers 3

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 685
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 690
    :cond_c
    return-void

    .line 688
    :catchall_d
    move-exception v0

    .line 691
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 9

    .line 116
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 118
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->q()Ljava/lang/String;

    move-result-object p2

    .line 1066
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1067
    if-eqz p2, :cond_20

    .line 1068
    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1069
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_21

    .line 1073
    :cond_20
    return-void

    .line 1072
    :catchall_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    return-void

    .line 121
    :cond_26
    if-eqz p6, :cond_2b

    .line 122
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 126
    :cond_2b
    new-instance p6, Lcom/anythink/china/common/a/e;

    invoke-direct {p6}, Lcom/anythink/china/common/a/e;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p6, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    .line 128
    iget-object v0, p2, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    iput-object v0, p6, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    .line 129
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p6, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    .line 130
    iput-object p4, p6, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    .line 131
    iput-object p5, p6, Lcom/anythink/china/common/a/e;->j:Ljava/lang/String;

    .line 132
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->q()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p6, Lcom/anythink/china/common/a/e;->e:Ljava/lang/String;

    .line 133
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p6, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    .line 134
    const/high16 p4, 0x42480000    # 50.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    const/4 v0, 0x1

    invoke-static {v0, p4, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p4

    float-to-int p4, p4

    .line 135
    invoke-static {p1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object p5

    new-instance v1, Lcom/anythink/core/common/res/e;

    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v0, p3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, v1, p4, p4}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;II)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p6, Lcom/anythink/china/common/a/e;->d:Landroid/graphics/Bitmap;

    .line 138
    invoke-static {p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object p3

    iget-object p2, p2, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/j;->p()J

    move-result-wide p4

    .line 1145
    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_a4

    .line 1146
    iput-wide p4, p3, Lcom/anythink/china/common/a;->q:J

    .line 139
    :cond_a4
    invoke-static {p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/china/common/a;->e()V

    .line 140
    invoke-static {p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a/e;)V

    .line 142
    return-void
.end method

.method public final a(Lcom/anythink/china/common/a/e;)V
    .registers 7

    .line 154
    if-nez p1, :cond_3

    .line 155
    return-void

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "("

    if-eqz v0, :cond_8d

    .line 160
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-static {v4}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 163
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is downloading, do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/china/common/a;->f(Ljava/lang/String;)V

    .line 165
    return-void

    .line 167
    :cond_86
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_8d
    iget-object v0, p0, Lcom/anythink/china/common/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 172
    const/4 v2, 0x0

    :goto_94
    if-ge v2, v0, :cond_da

    .line 173
    iget-object v3, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/china/common/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/china/common/a/e;

    iget-object v4, v4, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 174
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is waiting for downloading, do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7b49\u5f85\u4e0b\u8f7d\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/china/common/a;->f(Ljava/lang/String;)V

    .line 176
    return-void

    .line 172
    :cond_d7
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 180
    :cond_da
    iget-object v0, p0, Lcom/anythink/china/common/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/b/a;->b(Lcom/anythink/china/common/a/e;)V

    .line 184
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/anythink/china/common/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    .line 198
    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .registers 8

    .line 203
    iget-object v0, p0, Lcom/anythink/china/common/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 204
    if-nez v0, :cond_9

    .line 205
    return-void

    .line 208
    :cond_9
    nop

    .line 209
    const/4 v1, 0x1

    if-gtz v0, :cond_e

    .line 210
    goto :goto_f

    .line 209
    :cond_e
    move v0, v1

    .line 213
    :goto_f
    iget-object v2, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 214
    if-lt v2, v0, :cond_18

    .line 215
    return-void

    .line 218
    :cond_18
    sub-int/2addr v0, v2

    .line 221
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_61

    .line 222
    iget-object v3, p0, Lcom/anythink/china/common/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/china/common/a/e;

    .line 224
    nop

    .line 1229
    iget-object v4, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    iget-object v5, v3, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    new-instance v4, Lcom/anythink/china/common/a$2;

    invoke-direct {v4, p0}, Lcom/anythink/china/common/a$2;-><init>(Lcom/anythink/china/common/a;)V

    .line 1340
    iget-object v5, p0, Lcom/anythink/china/common/a;->m:Ljava/util/Map;

    iget-object v6, v3, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v4, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v5, "download: start and bind service"

    invoke-static {v4, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1344
    iget-object v5, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    const-class v6, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1345
    iget-object v3, v3, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    const-string v5, "extra_unique_id"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1346
    iget-object v3, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1347
    iget-object v3, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v5, p0, Lcom/anythink/china/common/a;->t:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 226
    :cond_61
    return-void
.end method

.method public final b(Lcom/anythink/china/common/a/e;)V
    .registers 14

    .line 376
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "checkPermissionAndInstall: "

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 379
    const-string v1, "action_offer_install_start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v1, p1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    const-string v2, "receiver_extra_offer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v1, p1, Lcom/anythink/china/common/a/e;->j:Ljava/lang/String;

    const-string v2, "receiver_extra_click_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    iget-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/Map;

    if-nez v0, :cond_38

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/Map;

    .line 389
    :cond_38
    iget-object v0, p1, Lcom/anythink/china/common/a/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 390
    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 392
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/anythink/china/common/a/e;->e:Ljava/lang/String;

    .line 395
    :cond_57
    iget-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    nop

    .line 1666
    :try_start_5f
    iget-object v0, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_64

    .line 1667
    goto :goto_83

    .line 1670
    :cond_64
    new-instance v0, Lcom/anythink/china/common/b;

    invoke-direct {v0}, Lcom/anythink/china/common/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;

    .line 1671
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1672
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1673
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1675
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_81
    .catchall {:try_start_5f .. :try_end_81} :catchall_82

    .line 1679
    goto :goto_83

    .line 1677
    :catchall_82
    move-exception v0

    .line 400
    :goto_83
    nop

    .line 2408
    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;

    move-result-object v0

    .line 2409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10b

    .line 2413
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2416
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2417
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2419
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const-string v5, "application/vnd.android.package-archive"

    if-lt v3, v4, :cond_e4

    .line 2420
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2422
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2423
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2424
    goto :goto_f5

    .line 2425
    :cond_e4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "file://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2427
    :goto_f5
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2429
    iget-object v3, p1, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v5, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static/range {v3 .. v11}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 404
    :cond_10b
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 10

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_ff

    const-string v1, "("

    if-eqz v0, :cond_3e

    .line 512
    :try_start_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    .line 513
    if-eqz v0, :cond_3e

    .line 514
    sget-object p1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") onClickNotification: start intall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/e;)V

    .line 516
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;)V

    .line 517
    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/e;)V

    .line 518
    return-void

    .line 523
    :cond_3e
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    .line 524
    if-eqz v0, :cond_79

    .line 525
    invoke-virtual {v0}, Lcom/anythink/china/common/a/e;->c()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 526
    sget-object p1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") onClickNotification: pause download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p1, p0, Lcom/anythink/china/common/a;->s:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz p1, :cond_71

    .line 528
    iget-object v1, v0, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/anythink/china/common/service/ApkDownloadService$a;->a(Ljava/lang/String;)V

    .line 530
    :cond_71
    iget-object p1, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void

    .line 536
    :cond_79
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d0

    .line 537
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/anythink/china/common/a/e;

    .line 538
    if-eqz v2, :cond_a4

    .line 539
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/e;)V

    .line 540
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    iget-wide v3, v2, Lcom/anythink/china/common/a/e;->g:J

    iget-wide v5, v2, Lcom/anythink/china/common/a/e;->h:J

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJZ)V

    goto :goto_ca

    .line 542
    :cond_a4
    iget-object v0, p0, Lcom/anythink/china/common/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 543
    const/4 v1, 0x0

    :goto_ab
    if-ge v1, v0, :cond_ca

    .line 544
    iget-object v2, p0, Lcom/anythink/china/common/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/china/common/a/e;

    .line 545
    iget-object v3, v2, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 546
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/anythink/china/common/b/a;->b(Lcom/anythink/china/common/a/e;)V

    .line 547
    goto :goto_ca

    .line 543
    :cond_c7
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    .line 551
    :cond_ca
    :goto_ca
    const-string p1, "\u5df2\u6709\u4efb\u52a1\u4e0b\u8f7d\u4e2d"

    invoke-direct {p0, p1}, Lcom/anythink/china/common/a;->f(Ljava/lang/String;)V

    .line 552
    return-void

    .line 555
    :cond_d0
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/china/common/a/e;

    .line 556
    if-eqz p1, :cond_fe

    .line 557
    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 558
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") onClickNotification: resume download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a/e;)V
    :try_end_fd
    .catchall {:try_start_6 .. :try_end_fd} :catchall_ff

    .line 560
    return-void

    .line 565
    :cond_fe
    return-void

    .line 564
    :catchall_ff
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 566
    return-void
.end method

.method public final c(Lcom/anythink/china/common/a/e;)V
    .registers 14

    .line 408
    invoke-static {p1}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 410
    return-void

    .line 413
    :cond_b
    sget-object v1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 419
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const-string v5, "application/vnd.android.package-archive"

    if-lt v3, v4, :cond_61

    .line 420
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 423
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    goto :goto_72

    .line 425
    :cond_61
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "file://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :goto_72
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    iget-object v3, p1, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v5, p1, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static/range {v3 .. v11}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 430
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_7c

    const-string v1, "("

    if-eqz v0, :cond_40

    :try_start_6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 575
    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    .line 576
    sget-object v2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") onCleanNotification: download success"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/e;)V

    .line 578
    iget-object v0, p0, Lcom/anythink/china/common/a;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-direct {p0}, Lcom/anythink/china/common/a;->g()V

    .line 580
    return-void

    .line 585
    :cond_40
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    .line 586
    if-eqz v0, :cond_78

    .line 587
    invoke-virtual {v0}, Lcom/anythink/china/common/a/e;->b()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 588
    iget-object v2, p0, Lcom/anythink/china/common/a;->s:Lcom/anythink/china/common/service/ApkDownloadService$a;

    if-eqz v2, :cond_59

    .line 589
    iget-object v3, v0, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/service/ApkDownloadService$a;->b(Ljava/lang/String;)V

    .line 591
    :cond_59
    iget-object v2, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object p1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") onCleanNotification: stop download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_78
    invoke-direct {p0}, Lcom/anythink/china/common/a;->g()V
    :try_end_7b
    .catchall {:try_start_6 .. :try_end_7b} :catchall_7c

    .line 598
    return-void

    .line 597
    :catchall_7c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 599
    return-void
.end method

.method public final c()Z
    .registers 3

    .line 353
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "hasInstallPermission: "

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_18

    .line 355
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0

    .line 357
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .registers 4

    .line 364
    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    const-string v1, "requestInstallPermission: "

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 368
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void
.end method

.method public final d(Lcom/anythink/china/common/a/e;)V
    .registers 4

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 484
    if-lez v0, :cond_25

    .line 485
    iget-object v0, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    iget-object v1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    .line 486
    if-eqz v0, :cond_24

    .line 487
    iget-object v1, p0, Lcom/anythink/china/common/a;->l:Ljava/util/Map;

    iget-object p1, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-virtual {v0}, Lcom/anythink/china/common/a/e;->d()V

    .line 489
    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a/e;)V

    .line 490
    invoke-virtual {p0}, Lcom/anythink/china/common/a;->b()V

    .line 492
    :cond_24
    return-void

    .line 493
    :cond_25
    iget-object v0, p1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/china/common/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 494
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/e;)V

    return-void

    .line 496
    :cond_31
    invoke-virtual {p0, p1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a/e;)V

    .line 497
    invoke-virtual {p0}, Lcom/anythink/china/common/a;->b()V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    .line 502
    return-void

    .line 501
    :catchall_38
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 503
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 13

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 630
    return-void

    .line 632
    :cond_9
    iget-object v0, p0, Lcom/anythink/china/common/a;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    .line 633
    if-nez v0, :cond_14

    .line 634
    return-void

    .line 637
    :cond_14
    invoke-static {v0}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a/e;)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 639
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 642
    :cond_26
    iget-object v1, p0, Lcom/anythink/china/common/a;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object p1, p0, Lcom/anythink/china/common/a;->n:Ljava/util/Map;

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object p1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/e;)V

    .line 646
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 647
    const-string v1, "action_offer_install_successful"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v1, "receiver_extra_offer_id"

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string v1, "receiver_extra_click_id"

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    iget-object v1, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 653
    iget-object v2, v0, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 655
    iget-object p1, p0, Lcom/anythink/china/common/a;->o:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1
    :try_end_76
    .catchall {:try_start_0 .. :try_end_76} :catchall_8b

    if-nez p1, :cond_87

    .line 656
    nop

    .line 3684
    :try_start_79
    iget-object p1, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_85

    .line 3685
    iget-object v0, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3686
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/china/common/a;->r:Landroid/content/BroadcastReceiver;
    :try_end_85
    .catchall {:try_start_79 .. :try_end_85} :catchall_86

    .line 3690
    :cond_85
    goto :goto_87

    .line 3688
    :catchall_86
    move-exception p1

    .line 658
    :cond_87
    :goto_87
    :try_start_87
    invoke-direct {p0}, Lcom/anythink/china/common/a;->g()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    .line 661
    return-void

    .line 660
    :catchall_8b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 662
    return-void
.end method

.method public final e(Ljava/lang/String;)Lcom/anythink/china/common/a/a$a;
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/anythink/china/common/a;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/china/common/a/a$a;

    return-object p1
.end method

.method public final e()V
    .registers 14

    .line 440
    :try_start_0
    invoke-static {}, Lcom/anythink/china/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 442
    return-void

    .line 445
    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_1a

    array-length v1, v0

    if-nez v1, :cond_1a

    .line 448
    return-void

    .line 451
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 453
    iget-wide v4, p0, Lcom/anythink/china/common/a;->q:J

    .line 454
    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_28
    if-ge v8, v6, :cond_66

    aget-object v9, v0, v8

    .line 455
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 457
    iget-object v10, p0, Lcom/anythink/china/common/a;->i:Landroid/content/Context;

    .line 3053
    if-eqz v10, :cond_50

    if-nez v9, :cond_3f

    goto :goto_50

    .line 3057
    :cond_3f
    invoke-static {v10, v9}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 3058
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4e

    .line 3059
    invoke-static {v10, v11}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    goto :goto_51

    .line 3061
    :cond_4e
    move v10, v7

    goto :goto_51

    .line 3054
    :cond_50
    :goto_50
    move v10, v7

    .line 457
    :goto_51
    if-eqz v10, :cond_57

    .line 458
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    goto :goto_63

    .line 463
    :cond_57
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    add-long/2addr v10, v4

    cmp-long v10, v10, v2

    if-gez v10, :cond_63

    .line 465
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_63
    :goto_63
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 470
    :cond_66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 471
    nop

    :goto_6b
    if-ge v7, v0, :cond_97

    .line 472
    sget-object v2, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clean expired file -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_94
    .catchall {:try_start_0 .. :try_end_94} :catchall_98

    .line 471
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    .line 477
    :cond_97
    return-void

    .line 476
    :catchall_98
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 478
    return-void
.end method

.method public final f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/e;",
            ">;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/anythink/china/common/a;->k:Ljava/util/Map;

    return-object v0
.end method
