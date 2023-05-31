.class public Lcom/kwad/sdk/b/c/f/b/b;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# static fields
.field private static u:Z


# instance fields
.field private f:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private g:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:Z

.field private r:Lcom/kwad/sdk/contentalliance/detail/video/e;

.field private s:Lcom/kwad/sdk/b/e/a;

.field private t:Lcom/kwad/sdk/contentalliance/detail/video/c;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->i:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->j:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->k:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->l:Z

    iput-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->n:J

    iput-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->o:J

    iput-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->p:J

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->q:Z

    new-instance v0, Lcom/kwad/sdk/b/c/f/b/b$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/f/b/b$a;-><init>(Lcom/kwad/sdk/b/c/f/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->r:Lcom/kwad/sdk/contentalliance/detail/video/e;

    new-instance v0, Lcom/kwad/sdk/b/c/f/b/b$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/f/b/b$b;-><init>(Lcom/kwad/sdk/b/c/f/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->s:Lcom/kwad/sdk/b/e/a;

    new-instance v0, Lcom/kwad/sdk/b/c/f/b/b$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/b/c/f/b/b$c;-><init>(Lcom/kwad/sdk/b/c/f/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->t:Lcom/kwad/sdk/contentalliance/detail/video/c;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/c/f/b/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->m:J

    return-wide v0
.end method

.method private a(J)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->z(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    goto :goto_8
.end method

.method static synthetic a(Lcom/kwad/sdk/b/c/f/b/b;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/b/c/f/b/b;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/c/f/b/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/b/c/f/b/b;->q:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/kwad/sdk/b/c/f/b/b;->u:Z

    return p0
.end method

.method static synthetic b(Lcom/kwad/sdk/b/c/f/b/b;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/b/c/f/b/b;->p:J

    return-wide p1
.end method

.method private b(J)V
    .registers 14

    const/4 v5, 0x2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->n:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leaveType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdLogPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide v1, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    iget-wide v6, p0, Lcom/kwad/sdk/b/c/f/b/b;->o:J

    iget-wide v8, p0, Lcom/kwad/sdk/b/c/f/b/b;->p:J

    move-wide v3, p1

    invoke-static/range {v0 .. v9}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JJIJJ)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/b/c/f/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/f/b/b;->q()V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/b/c/f/b/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/b/c/f/b/b;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/kwad/sdk/b/c/f/b/b;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/b/c/f/b/b;->m:J

    return-wide p1
.end method

.method static synthetic c(Lcom/kwad/sdk/b/c/f/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/f/b/b;->p()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/b/c/f/b/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/b/c/f/b/b;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/kwad/sdk/b/c/f/b/b;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/b/c/f/b/b;->b(J)V

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/b/c/f/b/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->q:Z

    return v0
.end method

.method static synthetic e(Lcom/kwad/sdk/b/c/f/b/b;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/b/c/f/b/b;->n:J

    return-wide p1
.end method

.method static synthetic e(Lcom/kwad/sdk/b/c/f/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/f/b/b;->r()V

    return-void
.end method

.method static synthetic f(Lcom/kwad/sdk/b/c/f/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/f/b/b;->o()V

    return-void
.end method

.method static synthetic g(Lcom/kwad/sdk/b/c/f/b/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    return-wide v0
.end method

.method static synthetic n()Z
    .registers 1

    sget-boolean v0, Lcom/kwad/sdk/b/c/f/b/b;->u:Z

    return v0
.end method

.method private o()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method private q()V
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetParams position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdLogPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/kwad/sdk/b/c/f/b/b;->j:Z

    iput-boolean v4, p0, Lcom/kwad/sdk/b/c/f/b/b;->k:Z

    iput-boolean v4, p0, Lcom/kwad/sdk/b/c/f/b/b;->l:Z

    iput-wide v6, p0, Lcom/kwad/sdk/b/c/f/b/b;->m:J

    iput-boolean v4, p0, Lcom/kwad/sdk/b/c/f/b/b;->q:Z

    iput-wide v6, p0, Lcom/kwad/sdk/b/c/f/b/b;->n:J

    iput-wide v6, p0, Lcom/kwad/sdk/b/c/f/b/b;->o:J

    return-void
.end method

.method private r()V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/f/b/b;->l()V

    invoke-virtual {p0}, Lcom/kwad/sdk/b/c/f/b/b;->m()V

    return-void
.end method


# virtual methods
.method protected g()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->g:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget v1, v0, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/b;->r:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/b;->t:Lcom/kwad/sdk/contentalliance/detail/video/c;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/b;->s:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/b;->r:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/b;->t:Lcom/kwad/sdk/contentalliance/detail/video/c;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/b/c/f/b/b;->s:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public l()V
    .registers 7

    const/4 v1, 0x1

    sget-boolean v0, Lcom/kwad/sdk/b/c/f/b/b;->u:Z

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->i:Z

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->j:Z

    if-nez v0, :cond_49

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->o:J

    iget-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    sget-wide v4, Lcom/kwad/sdk/b/c/c;->h:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4a

    move v0, v1

    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enterType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdLogPresenter"

    invoke-static {v3, v2}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide v4, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    invoke-static {v2, v4, v5, v0}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    iput-boolean v1, p0, Lcom/kwad/sdk/b/c/f/b/b;->j:Z

    :cond_49
    return-void

    :cond_4a
    cmp-long v0, v2, v4

    if-gez v0, :cond_50

    const/4 v0, 0x2

    goto :goto_1c

    :cond_50
    const/4 v0, 0x3

    goto :goto_1c
.end method

.method public m()V
    .registers 7

    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->j:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->l:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->k:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1f

    iget-wide v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->n:J

    iget-wide v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->o:J

    sub-long/2addr v0, v2

    :cond_1f
    iget-object v2, p0, Lcom/kwad/sdk/b/c/f/b/b;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide v4, p0, Lcom/kwad/sdk/b/c/f/b/b;->h:J

    invoke-static {v2, v4, v5, v0, v1}, Lcom/kwad/sdk/c/f/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/b/c/f/b/b;->k:Z

    :cond_29
    return-void
.end method
