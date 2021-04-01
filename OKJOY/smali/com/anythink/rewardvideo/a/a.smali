.class public Lcom/anythink/rewardvideo/a/a;
.super Lcom/anythink/core/b/d;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field n:Ljava/lang/String;

.field o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/anythink/rewardvideo/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/rewardvideo/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/rewardvideo/a/a;->b:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/anythink/rewardvideo/a/a;Lcom/anythink/core/b/f;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a;->g:Lcom/anythink/core/b/f;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lcom/anythink/rewardvideo/a/a;
    .registers 4

    .prologue
    .line 41
    invoke-static {p1}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_a

    instance-of v1, v0, Lcom/anythink/rewardvideo/a/a;

    if-nez v1, :cond_12

    .line 43
    :cond_a
    new-instance v0, Lcom/anythink/rewardvideo/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/rewardvideo/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/d;)V

    .line 46
    :cond_12
    invoke-virtual {v0, p0}, Lcom/anythink/core/b/d;->a(Landroid/content/Context;)V

    .line 47
    check-cast v0, Lcom/anythink/rewardvideo/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/rewardvideo/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/rewardvideo/a/a;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/rewardvideo/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/rewardvideo/a/a;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method private static g()V
    .registers 0

    .prologue
    .line 117
    return-void
.end method

.method static synthetic h(Lcom/anythink/rewardvideo/a/a;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->g:Lcom/anythink/core/b/f;

    return-object v0
.end method

.method private static h()V
    .registers 0

    .prologue
    .line 120
    return-void
.end method

.method static synthetic i(Lcom/anythink/rewardvideo/a/a;)Lcom/anythink/core/b/f;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->g:Lcom/anythink/core/b/f;

    return-object v0
.end method

.method private static i()V
    .registers 0

    .prologue
    .line 123
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/a/d;)V
    .registers 11

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;Z)Lcom/anythink/core/b/c/a;

    move-result-object v2

    .line 58
    if-nez v2, :cond_18

    .line 59
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "No Cache."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/anythink/rewardvideo/a/d;->onRewardedVideoAdPlayFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_42

    .line 114
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 69
    :cond_18
    if-eqz v2, :cond_16

    :try_start_1a
    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v0, :cond_16

    .line 70
    invoke-virtual {p0, v2}, Lcom/anythink/rewardvideo/a/a;->a(Lcom/anythink/core/b/c/a;)V

    .line 74
    invoke-virtual {p0}, Lcom/anythink/rewardvideo/a/a;->f()V

    .line 77
    invoke-virtual {v2}, Lcom/anythink/core/b/c/a;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/anythink/core/b/c/a;->a(I)V

    .line 80
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v6

    new-instance v0, Lcom/anythink/rewardvideo/a/a$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/rewardvideo/a/a$1;-><init>(Lcom/anythink/rewardvideo/a/a;Lcom/anythink/core/b/c/a;Ljava/lang/String;Landroid/app/Activity;Lcom/anythink/rewardvideo/a/d;)V

    invoke-virtual {v6, v0}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_42

    goto :goto_16

    .line 57
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/app/Activity;ZLcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 10

    .prologue
    .line 133
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a;->c:Landroid/content/Context;

    const-string v2, "1"

    iget-object v3, p0, Lcom/anythink/rewardvideo/a/a;->e:Ljava/lang/String;

    new-instance v5, Lcom/anythink/rewardvideo/a/a$2;

    invoke-direct {v5, p0, p1, p3, p2}, Lcom/anythink/rewardvideo/a/a$2;-><init>(Lcom/anythink/rewardvideo/a/a;Landroid/app/Activity;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;Z)V

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/b/d$a;)V

    .line 166
    return-void
.end method

.method public final a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 11

    .prologue
    .line 171
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_35

    .line 172
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_1d

    .line 174
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->b:Ljava/util/HashMap;

    iget v1, p1, Lcom/anythink/core/c/c$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATMediationSetting;

    .line 176
    :cond_1d
    new-instance v1, Lcom/anythink/rewardvideo/a/b;

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/anythink/rewardvideo/a/b;-><init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V

    .line 1026
    iput-object v0, v1, Lcom/anythink/rewardvideo/a/b;->e:Lcom/anythink/core/api/ATMediationSetting;

    .line 178
    iput-object v1, p0, Lcom/anythink/rewardvideo/a/a;->k:Lcom/anythink/core/b/e;

    .line 179
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a;->k:Lcom/anythink/core/b/e;

    invoke-virtual {v0}, Lcom/anythink/core/b/e;->start()Landroid/os/CountDownTimer;

    .line 181
    :cond_35
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 185
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a;->n:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a;->o:Ljava/lang/String;

    .line 187
    return-void
.end method
