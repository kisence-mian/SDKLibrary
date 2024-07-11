.class public Lcom/anythink/rewardvideo/a/a;
.super Lcom/anythink/core/common/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/d<",
        "Lcom/anythink/rewardvideo/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field l:Ljava/lang/String;

.field m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/anythink/rewardvideo/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/rewardvideo/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private a(Lcom/anythink/rewardvideo/a/d;)Lcom/anythink/core/common/f;
    .registers 5

    .line 143
    new-instance v0, Lcom/anythink/rewardvideo/a/b;

    iget-object v1, p1, Lcom/anythink/rewardvideo/a/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/rewardvideo/a/b;-><init>(Landroid/content/Context;)V

    .line 144
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/rewardvideo/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p1, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 1033
    iput-object v1, v0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 146
    iget-boolean p1, p1, Lcom/anythink/rewardvideo/a/d;->d:Z

    invoke-virtual {v0, p1}, Lcom/anythink/rewardvideo/a/b;->a(Z)V

    .line 147
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/rewardvideo/a/a;
    .registers 4

    .line 47
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/anythink/rewardvideo/a/a;

    if-nez v1, :cond_1a

    .line 49
    :cond_e
    new-instance v0, Lcom/anythink/rewardvideo/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/rewardvideo/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Lcom/anythink/core/common/d;)V

    .line 52
    :cond_1a
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;)V

    .line 53
    check-cast v0, Lcom/anythink/rewardvideo/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/rewardvideo/a/a;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/anythink/rewardvideo/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Lcom/anythink/rewardvideo/a/d;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_9

    .line 160
    iget-object p0, p0, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V

    .line 162
    :cond_9
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a;->l:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a;->m:Ljava/lang/String;

    .line 167
    return-void
.end method

.method static synthetic b(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/anythink/rewardvideo/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method private static b(Lcom/anythink/rewardvideo/a/d;)V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_9

    .line 153
    iget-object p0, p0, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdLoaded()V

    .line 155
    :cond_9
    return-void
.end method

.method static synthetic c(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/anythink/rewardvideo/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/anythink/rewardvideo/a/a;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 12

    monitor-enter p0

    .line 62
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;Z)Lcom/anythink/core/common/d/b;

    move-result-object v3

    .line 63
    if-nez v3, :cond_1e

    .line 64
    const-string p1, "4001"

    const-string p2, ""

    const-string v0, "No Cache."

    invoke-static {p1, p2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 66
    if-eqz p3, :cond_1c

    .line 67
    const/4 p2, 0x0

    invoke-static {p2}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_49

    .line 70
    :cond_1c
    monitor-exit p0

    return-void

    .line 74
    :cond_1e
    if-eqz v3, :cond_47

    :try_start_20
    invoke-virtual {v3}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    if-eqz v1, :cond_47

    .line 75
    invoke-virtual {p0, v3}, Lcom/anythink/rewardvideo/a/a;->a(Lcom/anythink/core/common/d/b;)V

    .line 79
    invoke-virtual {p0}, Lcom/anythink/rewardvideo/a/a;->e()V

    .line 82
    invoke-virtual {v3}, Lcom/anythink/core/common/d/b;->e()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Lcom/anythink/core/common/d/b;->a(I)V

    .line 85
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v7, Lcom/anythink/rewardvideo/a/a$1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/anythink/rewardvideo/a/a$1;-><init>(Lcom/anythink/rewardvideo/a/a;Lcom/anythink/core/common/d/b;Ljava/lang/String;Landroid/app/Activity;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_49

    .line 122
    :cond_47
    monitor-exit p0

    return-void

    .line 61
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;ZLcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 5

    .line 130
    new-instance v0, Lcom/anythink/rewardvideo/a/d;

    invoke-direct {v0}, Lcom/anythink/rewardvideo/a/d;-><init>()V

    .line 131
    iput-boolean p2, v0, Lcom/anythink/rewardvideo/a/d;->d:Z

    .line 132
    iget-object p2, p0, Lcom/anythink/rewardvideo/a/a;->l:Ljava/lang/String;

    iput-object p2, v0, Lcom/anythink/rewardvideo/a/d;->c:Ljava/lang/String;

    .line 133
    iget-object p2, p0, Lcom/anythink/rewardvideo/a/a;->m:Ljava/lang/String;

    iput-object p2, v0, Lcom/anythink/rewardvideo/a/d;->f:Ljava/lang/String;

    .line 134
    iput-object p3, v0, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 135
    iput-object p1, v0, Lcom/anythink/rewardvideo/a/d;->b:Landroid/content/Context;

    .line 137
    iget-object p1, p0, Lcom/anythink/rewardvideo/a/a;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/anythink/rewardvideo/a/a;->d:Ljava/lang/String;

    const-string p3, "1"

    invoke-super {p0, p1, p3, p2, v0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)V

    .line 138
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;)V
    .registers 3

    .line 36
    check-cast p1, Lcom/anythink/rewardvideo/a/d;

    .line 2152
    iget-object v0, p1, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_b

    .line 2153
    iget-object p1, p1, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdLoaded()V

    .line 36
    :cond_b
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 36
    check-cast p1, Lcom/anythink/rewardvideo/a/d;

    .line 1159
    iget-object v0, p1, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v0, :cond_b

    .line 1160
    iget-object p1, p1, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-interface {p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V

    .line 36
    :cond_b
    return-void
.end method

.method public final synthetic b(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;
    .registers 5

    .line 36
    check-cast p1, Lcom/anythink/rewardvideo/a/d;

    .line 3143
    new-instance v0, Lcom/anythink/rewardvideo/a/b;

    iget-object v1, p1, Lcom/anythink/rewardvideo/a/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/rewardvideo/a/b;-><init>(Landroid/content/Context;)V

    .line 3144
    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/rewardvideo/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    iget-object v1, p1, Lcom/anythink/rewardvideo/a/d;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 4033
    iput-object v1, v0, Lcom/anythink/rewardvideo/a/b;->a:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 3146
    iget-boolean p1, p1, Lcom/anythink/rewardvideo/a/d;->d:Z

    invoke-virtual {v0, p1}, Lcom/anythink/rewardvideo/a/b;->a(Z)V

    .line 3147
    nop

    .line 36
    return-object v0
.end method
