.class public Lcom/tramini/plugin/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tramini/plugin/a/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/tramini/plugin/a/a/b;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->d:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic a(Lcom/tramini/plugin/a/a/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b;->d:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static a()Lcom/tramini/plugin/a/a/b;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcom/tramini/plugin/a/a/b;->a:Lcom/tramini/plugin/a/a/b;

    if-nez v0, :cond_f

    .line 36
    const-class v1, Lcom/tramini/plugin/a/a/b;

    monitor-enter v1

    .line 37
    :try_start_7
    new-instance v0, Lcom/tramini/plugin/a/a/b;

    invoke-direct {v0}, Lcom/tramini/plugin/a/a/b;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/a/b;->a:Lcom/tramini/plugin/a/a/b;

    .line 38
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 40
    :cond_f
    sget-object v0, Lcom/tramini/plugin/a/a/b;->a:Lcom/tramini/plugin/a/a/b;

    return-object v0

    .line 38
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method static synthetic a(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/a/b;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/b/a;)V

    return-void
.end method

.method private a(Lcom/tramini/plugin/b/a;)V
    .registers 3

    .prologue
    .line 122
    new-instance v0, Lcom/tramini/plugin/a/a/b$2;

    invoke-direct {v0, p0, p1}, Lcom/tramini/plugin/a/a/b$2;-><init>(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V

    invoke-direct {p0, v0}, Lcom/tramini/plugin/a/a/b;->b(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 185
    invoke-static {}, Lcom/tramini/plugin/a/f/a/a;->a()Lcom/tramini/plugin/a/f/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tramini/plugin/a/f/a/a;->a(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method static synthetic b(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method private static b(Ljava/lang/Runnable;J)V
    .registers 4

    .prologue
    .line 197
    invoke-static {}, Lcom/tramini/plugin/a/f/a/a;->a()Lcom/tramini/plugin/a/f/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tramini/plugin/a/f/a/a;->a(Ljava/lang/Runnable;J)V

    .line 198
    return-void
.end method

.method private static c()V
    .registers 0

    .prologue
    .line 235
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b;->b:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->b:Landroid/content/Context;

    const-string v1, "tramini"

    const-string v2, "P_CE_PE"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 84
    invoke-static {v0}, Lcom/tramini/plugin/a/f/b;->c(Ljava/lang/String;)V

    .line 87
    :cond_15
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/a/b;->e(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 92
    invoke-static {p1}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/b/a;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/tramini/plugin/a/a/b;->b(Landroid/content/Context;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 62
    if-nez p1, :cond_3

    .line 74
    :goto_2
    return-void

    .line 67
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1048
    iput-object v0, p0, Lcom/tramini/plugin/a/a/b;->b:Landroid/content/Context;

    .line 1082
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->b:Landroid/content/Context;

    const-string v1, "tramini"

    const-string v2, "P_CE_PE"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/tramini/plugin/a/f/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1084
    invoke-static {v0}, Lcom/tramini/plugin/a/f/b;->c(Ljava/lang/String;)V

    .line 1087
    :cond_1e
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/a/b;->e(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    goto :goto_2

    .line 74
    :catch_22
    move-exception v0

    goto :goto_2
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 168
    invoke-static {}, Lcom/tramini/plugin/a/f/a/a;->a()Lcom/tramini/plugin/a/f/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/a/b$3;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/a/b$3;-><init>(Lcom/tramini/plugin/a/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/f/a/a;->a(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public final b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 106
    invoke-static {}, Lcom/tramini/plugin/a/f/a/a;->a()Lcom/tramini/plugin/a/f/a/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/a/b$1;-><init>(Lcom/tramini/plugin/a/a/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/f/a/a;->a(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
