.class public Lcom/kwad/sdk/reward/a;
.super Lcom/kwad/sdk/core/e/b;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/reward/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/kwad/sdk/reward/a/b;

.field public c:Lcom/kwad/sdk/api/KsVideoPlayConfig;

.field public d:Lorg/json/JSONObject;

.field public e:I

.field public f:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field public g:Landroid/app/Activity;

.field public h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field public i:Lcom/kwad/sdk/reward/c/a;

.field public j:Lcom/kwad/sdk/core/download/b/b;

.field public k:Lcom/kwad/sdk/reward/b/b/a/a;

.field public l:Lcom/kwad/sdk/c/c;

.field public m:Lcom/kwad/sdk/c/b;

.field public n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/sdk/reward/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/sdk/reward/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/sdk/reward/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/e/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/reward/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/reward/a;->o:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/reward/a;->p:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->i:Lcom/kwad/sdk/reward/c/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/reward/c/a;->h()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/b/b;->f()V

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->l:Lcom/kwad/sdk/c/c;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/kwad/sdk/c/c;->c()V

    :cond_1d
    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->m:Lcom/kwad/sdk/c/b;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/kwad/sdk/c/b;->c()V

    :cond_24
    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->p:Ljava/util/Set;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2b
    return-void
.end method

.method public a(JJI)V
    .registers 14

    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/kwad/sdk/reward/a/d;

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/kwad/sdk/reward/a/d;->a(JJI)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v1}, Lcom/kwad/sdk/reward/a/f;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method
