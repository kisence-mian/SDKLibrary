.class public final Lcom/anythink/basead/a/f;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/anythink/basead/a/f;


# instance fields
.field a:Lcom/anythink/basead/a/e;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/anythink/basead/a/f;->c:Landroid/content/Context;

    .line 32
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/a/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/basead/a/f;
    .registers 3

    const-class v0, Lcom/anythink/basead/a/f;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/anythink/basead/a/f;->b:Lcom/anythink/basead/a/f;

    if-nez v1, :cond_e

    .line 37
    new-instance v1, Lcom/anythink/basead/a/f;

    invoke-direct {v1, p0}, Lcom/anythink/basead/a/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/basead/a/f;->b:Lcom/anythink/basead/a/f;

    .line 39
    :cond_e
    sget-object p0, Lcom/anythink/basead/a/f;->b:Lcom/anythink/basead/a/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 35
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/a/f;->a:Lcom/anythink/basead/a/e;

    if-eqz v0, :cond_c

    .line 61
    iget-object v1, p0, Lcom/anythink/basead/a/f;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/a/f;->a:Lcom/anythink/basead/a/e;

    .line 64
    :cond_c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/anythink/basead/a/f;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 44
    return-void

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/a/f;->a:Lcom/anythink/basead/a/e;

    if-nez v0, :cond_30

    .line 47
    new-instance v0, Lcom/anythink/basead/a/e;

    invoke-direct {v0}, Lcom/anythink/basead/a/e;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/a/f;->a:Lcom/anythink/basead/a/e;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    const-string v1, "action_offer_download_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "action_offer_download_end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "action_offer_install_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "action_offer_install_successful"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/anythink/basead/a/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/a/f;->a:Lcom/anythink/basead/a/e;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    :cond_30
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/d/h;)V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/anythink/basead/a/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/anythink/basead/a/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d/h;

    .line 72
    if-eqz p1, :cond_21

    .line 73
    new-instance v0, Lcom/anythink/basead/c/h;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/anythink/basead/c/c;

    invoke-direct {v1}, Lcom/anythink/basead/c/c;-><init>()V

    iput-object v1, v0, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    .line 75
    iget-object v1, v0, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    iput-object p2, v1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    .line 76
    const/16 p2, 0x12

    invoke-static {p2, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 78
    :cond_21
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 81
    iget-object v0, p0, Lcom/anythink/basead/a/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d/h;

    .line 82
    if-eqz p1, :cond_21

    .line 83
    new-instance v0, Lcom/anythink/basead/c/h;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lcom/anythink/basead/c/c;

    invoke-direct {v1}, Lcom/anythink/basead/c/c;-><init>()V

    iput-object v1, v0, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    .line 85
    iget-object v1, v0, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    iput-object p2, v1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    .line 86
    const/16 p2, 0x13

    invoke-static {p2, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 88
    :cond_21
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/anythink/basead/a/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d/h;

    .line 92
    if-eqz p1, :cond_21

    .line 93
    new-instance v0, Lcom/anythink/basead/c/h;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/anythink/basead/c/c;

    invoke-direct {v1}, Lcom/anythink/basead/c/c;-><init>()V

    iput-object v1, v0, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    .line 95
    iget-object v1, v0, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    iput-object p2, v1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    .line 96
    const/16 p2, 0x14

    invoke-static {p2, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 98
    :cond_21
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/anythink/basead/a/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d/h;

    .line 102
    if-eqz p1, :cond_21

    .line 103
    new-instance v0, Lcom/anythink/basead/c/h;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/anythink/basead/c/c;

    invoke-direct {v1}, Lcom/anythink/basead/c/c;-><init>()V

    iput-object v1, v0, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    .line 105
    iget-object v1, v0, Lcom/anythink/basead/c/h;->i:Lcom/anythink/basead/c/c;

    iput-object p2, v1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    .line 106
    const/16 p2, 0x15

    invoke-static {p2, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 109
    :cond_21
    iget-object p1, p0, Lcom/anythink/basead/a/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_36

    .line 110
    nop

    .line 1060
    iget-object p1, p0, Lcom/anythink/basead/a/f;->a:Lcom/anythink/basead/a/e;

    if-eqz p1, :cond_36

    .line 1061
    iget-object p2, p0, Lcom/anythink/basead/a/f;->c:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1062
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/basead/a/f;->a:Lcom/anythink/basead/a/e;

    .line 112
    :cond_36
    return-void
.end method
