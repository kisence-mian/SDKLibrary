.class public Lcom/kwad/sdk/draw/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private b:J

.field private c:Lcom/kwad/sdk/core/view/b;

.field private d:Lcom/kwad/sdk/contentalliance/detail/video/a;

.field private e:Lcom/kwad/sdk/contentalliance/detail/video/b;

.field private f:Lcom/kwad/sdk/core/view/b$a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/view/b;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/draw/c/a$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/c/a$2;-><init>(Lcom/kwad/sdk/draw/c/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/c/a;->f:Lcom/kwad/sdk/core/view/b$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mKsPlayerClickTimeParam:J

    iput-object p1, p0, Lcom/kwad/sdk/draw/c/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/draw/c/a;->b:J

    iput-object p2, p0, Lcom/kwad/sdk/draw/c/a;->c:Lcom/kwad/sdk/core/view/b;

    new-instance p1, Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p1, p3}, Lcom/kwad/sdk/contentalliance/detail/video/a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    iput-object p1, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Lcom/kwad/sdk/draw/c/a;->f()V

    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    new-instance p2, Lcom/kwad/sdk/draw/c/a$1;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/draw/c/a$1;-><init>(Lcom/kwad/sdk/draw/c/a;)V

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/core/video/a/c$e;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/c/a;->e:Lcom/kwad/sdk/contentalliance/detail/video/b;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/c/a;Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/b;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/c/a;->e:Lcom/kwad/sdk/contentalliance/detail/video/b;

    return-object p1
.end method

.method private a(J)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->c:Lcom/kwad/sdk/core/view/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/view/b;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-wide v1, p0, Lcom/kwad/sdk/draw/c/a;->b:J

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()V

    :cond_19
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/c/a;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/draw/c/a;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/draw/c/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/draw/c/a;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/kwad/sdk/draw/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    return-object p0
.end method

.method private f()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/draw/c/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/c/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/c/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/contentalliance/detail/video/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a()Lcom/kwad/sdk/contentalliance/detail/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a()Lcom/kwad/sdk/core/video/a/c;

    move-result-object v2

    if-nez v2, :cond_f

    invoke-direct {p0}, Lcom/kwad/sdk/draw/c/a;->f()V

    :cond_f
    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/draw/c/a;->a(J)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->c:Lcom/kwad/sdk/core/view/b;

    iget-object v1, p0, Lcom/kwad/sdk/draw/c/a;->f:Lcom/kwad/sdk/core/view/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/b;->a(Lcom/kwad/sdk/core/view/b$a;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/draw/c/a;->e:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->c:Lcom/kwad/sdk/core/view/b;

    iget-object v1, p0, Lcom/kwad/sdk/draw/c/a;->f:Lcom/kwad/sdk/core/view/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/b;->b(Lcom/kwad/sdk/core/view/b$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->f()V

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/b;->a(Z)V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->g()V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    :cond_c
    return-void
.end method
