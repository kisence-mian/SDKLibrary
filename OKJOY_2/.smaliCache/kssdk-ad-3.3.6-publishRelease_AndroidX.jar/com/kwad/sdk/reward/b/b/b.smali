.class public Lcom/kwad/sdk/reward/b/b/b;
.super Lcom/kwad/sdk/reward/d;


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    if-eqz p1, :cond_b

    new-instance p1, Lcom/kwad/sdk/reward/b/b/b/e;

    invoke-direct {p1}, Lcom/kwad/sdk/reward/b/b/b/e;-><init>()V

    goto :goto_18

    :cond_b
    new-instance p1, Lcom/kwad/sdk/reward/b/b/b/a;

    invoke-direct {p1}, Lcom/kwad/sdk/reward/b/b/b/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/b/b/b;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance p1, Lcom/kwad/sdk/reward/b/b/b/b;

    invoke-direct {p1}, Lcom/kwad/sdk/reward/b/b/b/b;-><init>()V

    :goto_18
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/b/b/b;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance p1, Lcom/kwad/sdk/reward/b/b/b/d;

    invoke-direct {p1}, Lcom/kwad/sdk/reward/b/b/b/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/b/b/b;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    new-instance p1, Lcom/kwad/sdk/reward/b/b/b/c;

    invoke-direct {p1}, Lcom/kwad/sdk/reward/b/b/b/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/b/b/b;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_play_detail_top_toolbar:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/b/b;->a(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/b/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->o:Ljava/util/Set;

    new-instance v2, Lcom/kwad/sdk/reward/b/b/b$1;

    invoke-direct {v2, p0, v0}, Lcom/kwad/sdk/reward/b/b/b$1;-><init>(Lcom/kwad/sdk/reward/b/b/b;Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
