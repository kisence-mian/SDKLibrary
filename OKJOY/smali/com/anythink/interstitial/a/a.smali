.class public Lcom/anythink/interstitial/a/a;
.super Lcom/anythink/core/b/d;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/anythink/interstitial/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/interstitial/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/anythink/interstitial/a/a;->g:Lcom/anythink/core/b/f;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/interstitial/a/a;
    .registers 4

    .prologue
    .line 35
    invoke-static {p1}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/anythink/interstitial/a/a;

    if-nez v1, :cond_12

    .line 37
    :cond_a
    new-instance v0, Lcom/anythink/interstitial/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/interstitial/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {p1, v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/d;)V

    .line 40
    :cond_12
    invoke-virtual {v0, p0}, Lcom/anythink/core/b/d;->a(Landroid/content/Context;)V

    .line 41
    check-cast v0, Lcom/anythink/interstitial/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/interstitial/a/a;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/interstitial/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/interstitial/a/a;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->g:Lcom/anythink/core/b/f;

    return-object v0
.end method

.method private static g()V
    .registers 0

    .prologue
    .line 102
    return-void
.end method

.method static synthetic h(Lcom/anythink/interstitial/a/a;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->g:Lcom/anythink/core/b/f;

    return-object v0
.end method

.method private static h()V
    .registers 0

    .prologue
    .line 105
    return-void
.end method

.method static synthetic i(Lcom/anythink/interstitial/a/a;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method private static i()V
    .registers 0

    .prologue
    .line 108
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/interstitial/a/c;)V
    .registers 11

    .prologue
    .line 52
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Z)Lcom/anythink/core/b/c/a;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_2f

    .line 55
    invoke-virtual {p0, v2}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/core/b/c/a;)V

    .line 59
    invoke-virtual {p0}, Lcom/anythink/interstitial/a/a;->f()V

    .line 62
    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/a;->a(I)V

    .line 64
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v6

    new-instance v0, Lcom/anythink/interstitial/a/a$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/interstitial/a/a$1;-><init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/core/b/c/a;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/interstitial/a/c;)V

    invoke-virtual {v6, v0}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_31

    .line 98
    :cond_2f
    monitor-exit p0

    return-void

    .line 52
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;ZLcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 10

    .prologue
    .line 118
    iget-object v1, p0, Lcom/anythink/interstitial/a/a;->c:Landroid/content/Context;

    const-string v2, "3"

    iget-object v3, p0, Lcom/anythink/interstitial/a/a;->e:Ljava/lang/String;

    new-instance v5, Lcom/anythink/interstitial/a/a$2;

    invoke-direct {v5, p0, p1, p3, p2}, Lcom/anythink/interstitial/a/a$2;-><init>(Lcom/anythink/interstitial/a/a;Landroid/content/Context;Lcom/anythink/interstitial/api/ATInterstitialListener;Z)V

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/b/d$a;)V

    .line 149
    return-void
.end method

.method public final a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 11

    .prologue
    .line 153
    new-instance v1, Lcom/anythink/interstitial/a/b;

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/anythink/interstitial/a/b;-><init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V

    .line 154
    iput-object v1, p0, Lcom/anythink/interstitial/a/a;->k:Lcom/anythink/core/b/e;

    .line 155
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->k:Lcom/anythink/core/b/e;

    invoke-virtual {v0}, Lcom/anythink/core/b/e;->start()Landroid/os/CountDownTimer;

    .line 156
    return-void
.end method
