.class public Lcom/kwad/sdk/b/d/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/kwad/sdk/protocol/model/AdScene;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/b/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/kwad/sdk/core/request/g;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/protocol/model/AdScene;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/a;->b:Ljava/util/List;

    iput-boolean v1, p0, Lcom/kwad/sdk/b/d/a;->e:Z

    iput-boolean v1, p0, Lcom/kwad/sdk/b/d/a;->f:Z

    iput-object p1, p0, Lcom/kwad/sdk/b/d/a;->a:Lcom/kwad/sdk/protocol/model/AdScene;

    new-instance v0, Lcom/kwad/sdk/core/request/g;

    invoke-direct {v0}, Lcom/kwad/sdk/core/request/g;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/a;->d:Lcom/kwad/sdk/core/request/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/b/d/a;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/d/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/d/b;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/b/d/b;->onError(ILjava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/d/a;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/b/d/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/b/d/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/b/d/a;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/b/d/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/a;->d()V

    return-void
.end method

.method private b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/d/b;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/b/d/b;->a(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/b/d/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/b/d/a;->f:Z

    return p1
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/d/b;

    invoke-interface {v0}, Lcom/kwad/sdk/b/d/b;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/b/d/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/a;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/kwad/sdk/b/d/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/b/d/a;->g:Z

    return p1
.end method

.method private d()V
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/a;->g:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->d:Lcom/kwad/sdk/core/request/g;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/a;->a:Lcom/kwad/sdk/protocol/model/AdScene;

    new-instance v2, Lcom/kwad/sdk/b/d/a$c;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/b/d/a$c;-><init>(Lcom/kwad/sdk/b/d/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/request/g;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/g$c;)V

    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/kwad/sdk/b/d/b;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/a;->f:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/b/d/a;->f:Z

    invoke-direct {p0}, Lcom/kwad/sdk/b/d/a;->c()V

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/a;->e:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/kwad/sdk/b/d/a;->g:Z

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/kwad/sdk/b/d/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kwad/sdk/b/d/a$a;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/b/d/a$a;-><init>(Lcom/kwad/sdk/b/d/a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_2b
    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->d:Lcom/kwad/sdk/core/request/g;

    iget-object v1, p0, Lcom/kwad/sdk/b/d/a;->a:Lcom/kwad/sdk/protocol/model/AdScene;

    new-instance v2, Lcom/kwad/sdk/b/d/a$b;

    invoke-direct {v2, p0, p1}, Lcom/kwad/sdk/b/d/a$b;-><init>(Lcom/kwad/sdk/b/d/a;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/request/g;->a(Lcom/kwad/sdk/protocol/model/AdScene;Lcom/kwad/sdk/core/request/g$c;)V

    goto :goto_4
.end method

.method public b(Lcom/kwad/sdk/b/d/b;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/b/d/a;->b:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
