.class public Lcom/kwad/sdk/reward/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/reward/a/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Lcom/kwad/sdk/contentalliance/detail/video/a;

.field private e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

.field private f:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

.field private g:Lcom/kwad/sdk/contentalliance/detail/video/e;

.field private h:Z

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/kwad/sdk/utils/g$a;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/reward/c/a;->c:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/reward/c/a;->i:Ljava/util/List;

    new-instance v0, Lcom/kwad/sdk/reward/c/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/c/a$1;-><init>(Lcom/kwad/sdk/reward/c/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/c/a;->j:Lcom/kwad/sdk/utils/g$a;

    iput-object p3, p0, Lcom/kwad/sdk/reward/c/a;->e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    iget-object p3, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iput-object p3, p0, Lcom/kwad/sdk/reward/c/a;->f:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p3

    invoke-static {p3}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/reward/c/a;->b:J

    iget-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mKsPlayerClickTimeParam:J

    iput-wide v0, p0, Lcom/kwad/sdk/reward/c/a;->c:J

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->h()I

    move-result v0

    if-gez v0, :cond_4c

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_5d

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    goto :goto_5b

    :cond_4c
    if-nez v0, :cond_4f

    goto :goto_5b

    :cond_4f
    invoke-virtual {p2}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/c/a;->a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_5b
    iput-object p3, p0, Lcom/kwad/sdk/reward/c/a;->a:Ljava/lang/String;

    :cond_5d
    new-instance p3, Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p3, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    iput-object p3, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Lcom/kwad/sdk/reward/c/a;->k()V

    new-instance p2, Lcom/kwad/sdk/reward/c/a$2;

    invoke-direct {p2, p0, p1}, Lcom/kwad/sdk/reward/c/a$2;-><init>(Lcom/kwad/sdk/reward/c/a;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object p2, p0, Lcom/kwad/sdk/reward/c/a;->g:Lcom/kwad/sdk/contentalliance/detail/video/e;

    iget-object p1, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    new-instance p2, Lcom/kwad/sdk/reward/c/a$3;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/reward/c/a$3;-><init>(Lcom/kwad/sdk/reward/c/a;)V

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/core/video/a/c$e;)V

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/reward/c/a;->j:Lcom/kwad/sdk/utils/g$a;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/utils/b;->a(Lcom/kwad/sdk/utils/g$a;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/c/a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/c/a;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/c/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    return-object p0
.end method

.method private k()V
    .registers 7

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/reward/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/c/a;->f:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-wide v2, p0, Lcom/kwad/sdk/reward/c/a;->b:J

    iget-wide v4, p0, Lcom/kwad/sdk/reward/c/a;->c:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a()Lcom/kwad/sdk/contentalliance/detail/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->e:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/reward/c/a;->a(ZZ)V

    :cond_33
    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a()Lcom/kwad/sdk/core/video/a/c;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/kwad/sdk/reward/c/a;->k()V

    :cond_b
    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/utils/g$a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZZ)V
    .registers 4

    iput-boolean p1, p0, Lcom/kwad/sdk/reward/c/a;->h:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(FF)V

    if-eqz p2, :cond_1c

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/utils/b;->a(Z)V

    goto :goto_1c

    :cond_16
    iget-object p1, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(FF)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/c/a;->e()V

    iget-boolean v0, p0, Lcom/kwad/sdk/reward/c/a;->h:Z

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/b;->a(Z)V

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-boolean v1, p0, Lcom/kwad/sdk/reward/c/a;->h:Z

    invoke-virtual {p0, v1, v1}, Lcom/kwad/sdk/reward/c/a;->a(ZZ)V

    :cond_1e
    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public b(Lcom/kwad/sdk/utils/g$a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/reward/c/a;->f()V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/kwad/sdk/reward/c/a;->g:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    :cond_e
    return-void
.end method

.method public e()V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/reward/e;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->f()V

    return-void
.end method

.method public f()V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/reward/e;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->g()V

    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    :cond_c
    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/c/a;->j:Lcom/kwad/sdk/utils/g$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/b;->b(Lcom/kwad/sdk/utils/g$a;)V

    return-void
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->i()I

    move-result v0

    return v0
.end method

.method public j()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/c/a;->d:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->j()I

    move-result v0

    return v0
.end method
