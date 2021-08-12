.class public Lcom/kwad/sdk/draw/b/a/a;
.super Lcom/kwad/sdk/draw/a/a;


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

.field private e:Z

.field private f:Lcom/kwad/sdk/contentalliance/detail/video/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/draw/a/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/draw/b/a/a;->e:Z

    new-instance v0, Lcom/kwad/sdk/draw/b/a/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/draw/b/a/a$1;-><init>(Lcom/kwad/sdk/draw/b/a/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/a/a;->f:Lcom/kwad/sdk/contentalliance/detail/video/d;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

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

    iget-object p2, p0, Lcom/kwad/sdk/draw/b/a/a;->d:Ljava/util/List;

    if-eqz p2, :cond_38

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_38

    :cond_15
    iget-object p2, p0, Lcom/kwad/sdk/draw/b/a/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_1b

    iget-object p2, p0, Lcom/kwad/sdk/draw/b/a/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/kwad/sdk/core/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/a/a;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_38
    :goto_38
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/b/a/a;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/draw/b/a/a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/draw/b/a/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/draw/b/a/a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic f(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic g(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic h(Lcom/kwad/sdk/draw/b/a/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/draw/b/a/a;->e:Z

    return p0
.end method

.method static synthetic i(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic j(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic k(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic l(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic m(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method

.method static synthetic n(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/draw/a/a;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/a/a;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/a/a;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->F(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/draw/b/a/a;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->e:Lcom/kwad/sdk/draw/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/a/a;->f:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/c/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/draw/a/a;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a;->a:Lcom/kwad/sdk/draw/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->e:Lcom/kwad/sdk/draw/c/a;

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/a/a;->f:Lcom/kwad/sdk/contentalliance/detail/video/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/draw/c/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/d;)V

    return-void
.end method
