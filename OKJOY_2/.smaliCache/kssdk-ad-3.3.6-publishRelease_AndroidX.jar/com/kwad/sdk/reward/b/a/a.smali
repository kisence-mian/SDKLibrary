.class public Lcom/kwad/sdk/reward/b/a/a;
.super Lcom/kwad/sdk/reward/d;


# instance fields
.field private b:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private c:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/kwad/sdk/contentalliance/detail/a/a/a;

.field private f:J

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Ljava/lang/Runnable;

.field private j:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/a/a/a;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->e:Lcom/kwad/sdk/contentalliance/detail/a/a/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/reward/b/a/a;->f:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->g:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/reward/b/a/a;->h:Z

    new-instance v0, Lcom/kwad/sdk/reward/b/a/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/a/a$1;-><init>(Lcom/kwad/sdk/reward/b/a/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/kwad/sdk/reward/b/a/a$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/a/a$2;-><init>(Lcom/kwad/sdk/reward/b/a/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/contentalliance/detail/a/a/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->e:Lcom/kwad/sdk/contentalliance/detail/a/a/a;

    return-object p0
.end method

.method private a(J)V
    .registers 5

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lcom/kwad/sdk/reward/b/a/a;->d:Ljava/util/List;

    if-eqz p2, :cond_3b

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_3b

    :cond_15
    iget-object p2, p0, Lcom/kwad/sdk/reward/b/a/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_1b

    iget-object p2, p0, Lcom/kwad/sdk/reward/b/a/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    invoke-static {p2, p1, v1}, Lcom/kwad/sdk/core/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/a/a;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/a/a;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/reward/b/a/a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/a/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/reward/b/a/a;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/a/a;J)J
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/reward/b/a/a;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/a/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/reward/b/a/a;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic g(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic h(Lcom/kwad/sdk/reward/b/a/a;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic i(Lcom/kwad/sdk/reward/b/a/a;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/kwad/sdk/reward/b/a/a;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->F(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/a/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/a/a;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected c()V
    .registers 9

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/a/a;->j:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/reward/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/a/a;->e:Lcom/kwad/sdk/contentalliance/detail/a/a/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a;->d()Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/a/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v1, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide v3, p0, Lcom/kwad/sdk/reward/b/a/a;->f:J

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->b()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/a/a/a$a;->a()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/core/report/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JJI)V

    return-void
.end method
