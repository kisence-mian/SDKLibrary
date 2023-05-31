.class public Lcom/kwad/sdk/contentalliance/detail/photo/c/c;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# static fields
.field private static x:Z


# instance fields
.field private f:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private g:Lcom/kwad/sdk/core/response/model/PhotoInfo;

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:I

.field private t:Z

.field private u:Lcom/kwad/sdk/contentalliance/detail/video/e;

.field private v:Lcom/kwad/sdk/b/e/a;

.field private w:Lcom/kwad/sdk/contentalliance/detail/video/c;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->j:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->k:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->l:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->m:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->n:Z

    iput-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->p:J

    iput-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->q:J

    iput-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->r:J

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->t:Z

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->u:Lcom/kwad/sdk/contentalliance/detail/video/e;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$b;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->v:Lcom/kwad/sdk/b/e/a;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c$c;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->w:Lcom/kwad/sdk/contentalliance/detail/video/c;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->j:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->x:Z

    return p0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)I
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->s:I

    return v0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->r:J

    return-wide p1
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->p:J

    return-wide p1
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->o()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->t:Z

    return p1
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->i:J

    return-wide p1
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->p()V

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->n:Z

    return p1
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->t:Z

    return v0
.end method

.method static synthetic f(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->q()V

    return-void
.end method

.method static synthetic g(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->i:J

    return-wide v0
.end method

.method static synthetic h(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object v0
.end method

.method static synthetic j(Lcom/kwad/sdk/contentalliance/detail/photo/c/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    return-wide v0
.end method

.method static synthetic n()Z
    .registers 1

    sget-boolean v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->x:Z

    return v0
.end method

.method private o()V
    .registers 11

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->g:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->n(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->s:I

    int-to-long v4, v2

    mul-long/2addr v0, v4

    iget-wide v6, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->o:J

    add-long v3, v0, v6

    iput-wide v8, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->p:J

    if-lez v2, :cond_4d

    cmp-long v0, v6, v8

    if-nez v0, :cond_4d

    const/4 v5, 0x1

    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leaveType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoLogPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    iget-wide v6, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->q:J

    iget-wide v8, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->r:J

    invoke-static/range {v0 .. v9}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JJIJJ)V

    return-void

    :cond_4d
    const/4 v5, 0x2

    goto :goto_1d
.end method

.method private p()V
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetParams position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoLogPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->l:Z

    iput-boolean v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->m:Z

    iput-boolean v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->n:Z

    iput v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->s:I

    iput-wide v6, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->o:J

    iput-boolean v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->t:Z

    iput-wide v6, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->p:J

    iput-wide v6, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->q:J

    return-void
.end method

.method private q()V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->l()V

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->m()V

    return-void
.end method


# virtual methods
.method protected g()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoLogPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->p()V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->g:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget v1, v0, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->u:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->w:Lcom/kwad/sdk/contentalliance/detail/video/c;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->v:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected j()V
    .registers 5

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnbind position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoLogPresenter"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->u:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->w:Lcom/kwad/sdk/contentalliance/detail/video/c;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->v:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public l()V
    .registers 7

    const/4 v1, 0x1

    sget-boolean v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->x:Z

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->k:Z

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->l:Z

    if-nez v0, :cond_55

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->q:J

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    sget-wide v4, Lcom/kwad/sdk/b/c/c;->h:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_56

    move v0, v1

    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enterType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sPrePosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/kwad/sdk/b/c/c;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhotoLogPresenter"

    invoke-static {v3, v2}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    invoke-static {v2, v4, v5, v0}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->l:Z

    :cond_55
    return-void

    :cond_56
    cmp-long v0, v2, v4

    if-gez v0, :cond_5c

    const/4 v0, 0x2

    goto :goto_1c

    :cond_5c
    const/4 v0, 0x3

    goto :goto_1c
.end method

.method public m()V
    .registers 7

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->l:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->n:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->m:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1f

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->p:J

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->q:J

    sub-long/2addr v0, v2

    :cond_1f
    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide v4, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->h:J

    invoke-static {v2, v4, v5, v0, v1}, Lcom/kwad/sdk/c/f/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/c;->m:Z

    :cond_29
    return-void
.end method
