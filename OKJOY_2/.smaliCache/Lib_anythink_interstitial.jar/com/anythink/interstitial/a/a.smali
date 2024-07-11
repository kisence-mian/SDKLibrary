.class public Lcom/anythink/interstitial/a/a;
.super Lcom/anythink/core/common/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/d<",
        "Lcom/anythink/interstitial/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/anythink/interstitial/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/interstitial/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static a(Lcom/anythink/interstitial/a/c;)Lcom/anythink/core/common/f;
    .registers 3

    .line 141
    new-instance v0, Lcom/anythink/interstitial/a/d;

    iget-object v1, p0, Lcom/anythink/interstitial/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/interstitial/a/d;-><init>(Landroid/content/Context;)V

    .line 142
    iget-object v1, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 1034
    iput-object v1, v0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 143
    iget-boolean p0, p0, Lcom/anythink/interstitial/a/c;->d:Z

    invoke-virtual {v0, p0}, Lcom/anythink/interstitial/a/d;->a(Z)V

    .line 144
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/interstitial/a/a;
    .registers 4

    .line 42
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/anythink/interstitial/a/a;

    if-nez v1, :cond_1a

    .line 44
    :cond_e
    new-instance v0, Lcom/anythink/interstitial/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/interstitial/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Lcom/anythink/core/common/d;)V

    .line 47
    :cond_1a
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;)V

    .line 48
    check-cast v0, Lcom/anythink/interstitial/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/a;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Lcom/anythink/interstitial/a/c;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_9

    .line 157
    iget-object p0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {p0, p1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 159
    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method private static b(Lcom/anythink/interstitial/a/c;)V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_9

    .line 150
    iget-object p0, p0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {p0}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoaded()V

    .line 152
    :cond_9
    return-void
.end method

.method static synthetic c(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method private static g()V
    .registers 0

    .line 113
    return-void
.end method

.method private static h()V
    .registers 0

    .line 116
    return-void
.end method

.method private static i()V
    .registers 0

    .line 119
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 12

    monitor-enter p0

    .line 59
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Z)Lcom/anythink/core/common/d/b;

    move-result-object v3

    .line 61
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v1, :cond_2f

    .line 62
    invoke-virtual {p0, v3}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/core/common/d/b;)V

    .line 66
    invoke-virtual {p0}, Lcom/anythink/interstitial/a/a;->e()V

    .line 69
    invoke-virtual {v3}, Lcom/anythink/core/common/d/b;->e()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Lcom/anythink/core/common/d/b;->a(I)V

    .line 71
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v7, Lcom/anythink/interstitial/a/a$1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/anythink/interstitial/a/a$1;-><init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/core/common/d/b;Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_31

    .line 109
    :cond_2f
    monitor-exit p0

    return-void

    .line 58
    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;ZLcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 5

    .line 129
    new-instance v0, Lcom/anythink/interstitial/a/c;

    invoke-direct {v0}, Lcom/anythink/interstitial/a/c;-><init>()V

    .line 130
    iput-object p1, v0, Lcom/anythink/interstitial/a/c;->b:Landroid/content/Context;

    .line 131
    iput-object p3, v0, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 132
    iput-boolean p2, v0, Lcom/anythink/interstitial/a/c;->d:Z

    .line 134
    iget-object p1, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/anythink/interstitial/a/a;->d:Ljava/lang/String;

    const-string p3, "3"

    invoke-super {p0, p1, p3, p2, v0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)V

    .line 136
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;)V
    .registers 3

    .line 34
    check-cast p1, Lcom/anythink/interstitial/a/c;

    .line 2149
    iget-object v0, p1, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_b

    .line 2150
    iget-object p1, p1, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {p1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoaded()V

    .line 34
    :cond_b
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 34
    check-cast p1, Lcom/anythink/interstitial/a/c;

    .line 1156
    iget-object v0, p1, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_b

    .line 1157
    iget-object p1, p1, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {p1, p2}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 34
    :cond_b
    return-void
.end method

.method public final synthetic b(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;
    .registers 4

    .line 34
    check-cast p1, Lcom/anythink/interstitial/a/c;

    .line 3141
    new-instance v0, Lcom/anythink/interstitial/a/d;

    iget-object v1, p1, Lcom/anythink/interstitial/a/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/interstitial/a/d;-><init>(Landroid/content/Context;)V

    .line 3142
    iget-object v1, p1, Lcom/anythink/interstitial/a/c;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 4034
    iput-object v1, v0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 3143
    iget-boolean p1, p1, Lcom/anythink/interstitial/a/c;->d:Z

    invoke-virtual {v0, p1}, Lcom/anythink/interstitial/a/d;->a(Z)V

    .line 3144
    nop

    .line 34
    return-object v0
.end method
