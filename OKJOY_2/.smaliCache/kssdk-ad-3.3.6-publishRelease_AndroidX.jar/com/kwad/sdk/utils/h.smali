.class public Lcom/kwad/sdk/utils/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile b:Lcom/kwad/sdk/utils/h;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/kwad/sdk/utils/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kwad/sdk/utils/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/utils/h;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/kwad/sdk/utils/h;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/utils/h;->b:Lcom/kwad/sdk/utils/h;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwad/sdk/utils/h;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/utils/h;->b:Lcom/kwad/sdk/utils/h;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/utils/h;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/utils/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/kwad/sdk/utils/h;->b:Lcom/kwad/sdk/utils/h;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/kwad/sdk/utils/h;->b:Lcom/kwad/sdk/utils/h;

    return-object p0
.end method

.method private c()V
    .registers 4

    sget-object v0, Lcom/kwad/sdk/utils/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/kwad/sdk/utils/h;->c:Landroid/content/Context;

    if-nez v1, :cond_d

    goto :goto_16

    :cond_d
    iget-object v2, p0, Lcom/kwad/sdk/utils/h;->d:Lcom/kwad/sdk/utils/a;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/utils/h;->c:Landroid/content/Context;

    if-eqz v0, :cond_37

    sget-object v0, Lcom/kwad/sdk/utils/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_37

    :cond_d
    iget-object v1, p0, Lcom/kwad/sdk/utils/h;->d:Lcom/kwad/sdk/utils/a;

    if-nez v1, :cond_18

    new-instance v1, Lcom/kwad/sdk/utils/a;

    invoke-direct {v1}, Lcom/kwad/sdk/utils/a;-><init>()V

    iput-object v1, p0, Lcom/kwad/sdk/utils/h;->d:Lcom/kwad/sdk/utils/a;

    :cond_18
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kwad/sdk/utils/h;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/kwad/sdk/utils/h;->d:Lcom/kwad/sdk/utils/a;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_37
    :goto_37
    return-void
.end method

.method public b()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/utils/h;->c()V

    return-void
.end method
