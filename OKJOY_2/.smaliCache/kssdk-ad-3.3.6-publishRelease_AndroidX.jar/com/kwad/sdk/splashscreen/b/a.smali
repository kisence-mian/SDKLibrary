.class public Lcom/kwad/sdk/splashscreen/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/i/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/kwad/sdk/contentalliance/detail/video/a;

.field private c:Lcom/kwad/sdk/api/KsVideoPlayConfig;

.field private d:J

.field private e:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

.field private f:Z

.field private g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/kwad/sdk/utils/g$a;

.field private j:J


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->h:Ljava/util/List;

    new-instance v0, Lcom/kwad/sdk/splashscreen/b/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/splashscreen/b/a$1;-><init>(Lcom/kwad/sdk/splashscreen/b/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->i:Lcom/kwad/sdk/utils/g$a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->j:J

    iput-object p3, p0, Lcom/kwad/sdk/splashscreen/b/a;->c:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p3

    invoke-static {p3}, Lcom/kwad/sdk/core/response/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->e:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->a()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kwad/sdk/core/diskcache/b/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_39

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/kwad/sdk/splashscreen/b/a;->a:Ljava/lang/String;

    :cond_39
    new-instance p3, Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p3, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    iput-object p3, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p3

    invoke-static {p3}, Lcom/kwad/sdk/core/response/b/a;->i(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->d:J

    iget-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mKsPlayerClickTimeParam:J

    iput-wide v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->j:J

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    new-instance p3, Lcom/kwad/sdk/splashscreen/b/a$2;

    invoke-direct {p3, p0, p2}, Lcom/kwad/sdk/splashscreen/b/a$2;-><init>(Lcom/kwad/sdk/splashscreen/b/a;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    invoke-virtual {p1, p3}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/core/video/a/c$e;)V

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/b/a;->i:Lcom/kwad/sdk/utils/g$a;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/utils/b;->a(Lcom/kwad/sdk/utils/g$a;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/b/a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/b/a;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/splashscreen/b/a;)Lcom/kwad/sdk/contentalliance/detail/video/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    return-object p0
.end method

.method private h()V
    .registers 7

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/b/a;->e:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Ljava/lang/String;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-wide v2, p0, Lcom/kwad/sdk/splashscreen/b/a;->d:J

    iget-wide v4, p0, Lcom/kwad/sdk/splashscreen/b/a;->j:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kwad/sdk/contentalliance/detail/video/b;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c$a;->a()Lcom/kwad/sdk/contentalliance/detail/video/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->c:Lcom/kwad/sdk/api/KsVideoPlayConfig;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isVideoSoundEnable()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/splashscreen/b/a;->a(ZZ)V

    :cond_33
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->d()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/utils/g$a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/splashscreen/b/a;->g:Z

    return-void
.end method

.method public a(ZZ)V
    .registers 4

    iput-boolean p1, p0, Lcom/kwad/sdk/splashscreen/b/a;->f:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(FF)V

    if-eqz p2, :cond_1c

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/utils/b;->a(Z)V

    goto :goto_1c

    :cond_16
    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(FF)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public a_()V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/b/a;->c()V

    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method public b(Lcom/kwad/sdk/utils/g$a;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->f()V

    iget-boolean v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->f:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->g:Z

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/b;->a(Z)V

    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    iput-boolean v1, p0, Lcom/kwad/sdk/splashscreen/b/a;->f:Z

    invoke-virtual {p0, v1, v1}, Lcom/kwad/sdk/splashscreen/b/a;->a(ZZ)V

    :cond_24
    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->g()V

    return-void
.end method

.method public e()V
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/b/a;->d()V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->m()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    :cond_c
    invoke-static {}, Lcom/kwad/sdk/utils/b;->a()Lcom/kwad/sdk/utils/b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/b/a;->i:Lcom/kwad/sdk/utils/g$a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/b;->b(Lcom/kwad/sdk/utils/g$a;)V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a()Lcom/kwad/sdk/core/video/a/c;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/kwad/sdk/splashscreen/b/a;->h()V

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b/a;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()V

    return-void
.end method
