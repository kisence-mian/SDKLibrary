.class public Lcom/kwad/sdk/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private b:J

.field private c:Lcom/kwad/sdk/core/view/b;

.field private d:Lcom/kwad/sdk/contentalliance/detail/video/a;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/kwad/sdk/contentalliance/detail/video/e;

.field private i:Z

.field private j:Lcom/kwad/sdk/core/view/b$a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/view/b;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/a/c/a;->i:Z

    new-instance v1, Lcom/kwad/sdk/a/c/a$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/a/c/a$3;-><init>(Lcom/kwad/sdk/a/c/a;)V

    iput-object v1, p0, Lcom/kwad/sdk/a/c/a;->j:Lcom/kwad/sdk/core/view/b$a;

    iput-object p1, p0, Lcom/kwad/sdk/a/c/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kwad/sdk/a/c/a;->b:J

    iput-object p2, p0, Lcom/kwad/sdk/a/c/a;->c:Lcom/kwad/sdk/core/view/b;

    const/4 p2, 0x1

    if-eqz p4, :cond_26

    invoke-interface {p4}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, p2

    goto :goto_27

    :cond_26
    move v1, v0

    :goto_27
    iput-boolean v1, p0, Lcom/kwad/sdk/a/c/a;->e:Z

    if-eqz p4, :cond_32

    invoke-interface {p4}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isDataFlowAutoStart()Z

    move-result v1

    if-eqz v1, :cond_32

    move v0, p2

    :cond_32
    iput-boolean v0, p0, Lcom/kwad/sdk/a/c/a;->f:Z

    invoke-virtual {p3}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/sdk/a/c/a;->g:Landroid/content/Context;

    new-instance p2, Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p2, p3}, Lcom/kwad/sdk/contentalliance/detail/video/a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    iput-object p2, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    if-eqz p4, :cond_4e

    :try_start_43
    invoke-interface {p4}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isNoCache()Z

    move-result p2

    iput-boolean p2, p0, Lcom/kwad/sdk/a/c/a;->i:Z
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p2

    invoke-static {p2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    new-instance p2, Lcom/kwad/sdk/a/c/a$1;

    invoke-direct {p2, p0, p1}, Lcom/kwad/sdk/a/c/a$1;-><init>(Lcom/kwad/sdk/a/c/a;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object p2, p0, Lcom/kwad/sdk/a/c/a;->h:Lcom/kwad/sdk/contentalliance/detail/video/e;

    iget-object p1, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    invoke-direct {p0}, Lcom/kwad/sdk/a/c/a;->g()V

    iget-object p1, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    new-instance p2, Lcom/kwad/sdk/a/c/a$2;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/a/c/a$2;-><init>(Lcom/kwad/sdk/a/c/a;)V

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/core/video/a/c$e;)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_7
    iget-object p1, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1, v0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/a/c/a;)Z
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/a/c/a;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/kwad/sdk/a/c/a;)Lcom/kwad/sdk/core/view/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/c/a;->c:Lcom/kwad/sdk/core/view/b;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/a/c/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/a/c/a;->b:J

    return-wide v0
.end method

.method static synthetic d(Lcom/kwad/sdk/a/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    return-object p0
.end method

.method private g()V
    .registers 3

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/a/c/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/c/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kwad/sdk/a/c/a;->i:Z

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Z)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/c/a;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/contentalliance/detail/video/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a()Lcom/kwad/sdk/contentalliance/detail/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-boolean v0, p0, Lcom/kwad/sdk/a/c/a;->e:Z

    invoke-direct {p0, v0}, Lcom/kwad/sdk/a/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/kwad/sdk/a/c/a;->h()Z

    move-result v0

    if-nez v0, :cond_3c

    return-void

    :cond_3c
    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->d()V

    return-void
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/a/c/a;->f:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksad/download/d/b;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/a/c/a;->f:Z

    :cond_c
    iget-boolean v0, p0, Lcom/kwad/sdk/a/c/a;->f:Z

    return v0
.end method


# virtual methods
.method public a()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a()Lcom/kwad/sdk/core/video/a/c;

    move-result-object v2

    if-nez v2, :cond_f

    invoke-direct {p0}, Lcom/kwad/sdk/a/c/a;->g()V

    :cond_f
    invoke-direct {p0}, Lcom/kwad/sdk/a/c/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/kwad/sdk/a/c/a;->c:Lcom/kwad/sdk/core/view/b;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/view/b;->d()Z

    move-result v2

    if-eqz v2, :cond_2e

    new-instance v2, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-wide v3, p0, Lcom/kwad/sdk/a/c/a;->b:J

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()V

    :cond_2e
    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->c:Lcom/kwad/sdk/core/view/b;

    iget-object v1, p0, Lcom/kwad/sdk/a/c/a;->j:Lcom/kwad/sdk/core/view/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/b;->a(Lcom/kwad/sdk/core/view/b$a;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->c:Lcom/kwad/sdk/core/view/b;

    iget-object v1, p0, Lcom/kwad/sdk/a/c/a;->j:Lcom/kwad/sdk/core/view/b$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/b;->b(Lcom/kwad/sdk/core/view/b$a;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/a/c/a;->h()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/kwad/sdk/a/c/a;->e:Z

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/b;->a(Z)V

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    iput-boolean v1, p0, Lcom/kwad/sdk/a/c/a;->e:Z

    invoke-direct {p0, v1}, Lcom/kwad/sdk/a/c/a;->a(Z)V

    :cond_22
    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->f()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->g()V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    :cond_c
    return-void
.end method

.method public f()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/a/c/a;->f:Z

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->c:Lcom/kwad/sdk/core/view/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/view/b;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-wide v1, p0, Lcom/kwad/sdk/a/c/a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    iget-object v1, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    iget-object v0, p0, Lcom/kwad/sdk/a/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()V

    :cond_20
    return-void
.end method
