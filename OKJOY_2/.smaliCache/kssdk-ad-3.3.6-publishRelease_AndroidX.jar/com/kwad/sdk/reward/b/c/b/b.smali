.class public Lcom/kwad/sdk/reward/b/c/b/b;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:J

.field private f:Lcom/kwad/sdk/reward/a/f;


# direct methods
.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->c:Landroid/os/Handler;

    new-instance v0, Lcom/kwad/sdk/reward/b/c/b/b$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/c/b/b$1;-><init>(Lcom/kwad/sdk/reward/b/c/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->f:Lcom/kwad/sdk/reward/a/f;

    iput-wide p1, p0, Lcom/kwad/sdk/reward/b/c/b/b;->e:J

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/c/b/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/c/b/b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/c/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/b;->e()V

    return-void
.end method

.method static synthetic d(Lcom/kwad/sdk/reward/b/c/b/b;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/reward/b/c/b/b;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private m()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwad/sdk/reward/a/b;->a(Z)V

    return-void
.end method

.method private o()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->e()V

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/kwad/sdk/reward/b/c/b/b;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/reward/b/c/b/b;->d:Z

    return-object p0
.end method

.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/b;->f:Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_end_close_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->b:Landroid/view/View;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/b;->f:Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected d()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/b;->b:Landroid/view/View;

    if-ne p1, v0, :cond_d

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/b;->o()V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/b;->n()V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/b;->m()V

    :cond_d
    return-void
.end method
