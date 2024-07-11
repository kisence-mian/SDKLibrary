.class public Lcom/kwad/sdk/reward/b/c/a/b;
.super Lcom/kwad/sdk/reward/d;


# instance fields
.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/kwad/sdk/c/c;

.field private d:Lcom/kwad/sdk/core/webview/jshandler/a$b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/c/a/b$2;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/c/a/b$2;-><init>(Lcom/kwad/sdk/reward/b/c/a/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->d:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/c/a/b;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/c/a/b;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/c/a/b;)Lcom/kwad/sdk/reward/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 8

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v4, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->l:Lcom/kwad/sdk/c/c;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->c:Lcom/kwad/sdk/c/c;

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/a/b;->d:Lcom/kwad/sdk/core/webview/jshandler/a$b;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/c;->a(Lcom/kwad/sdk/core/webview/jshandler/a$b;)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/a/b;->c:Lcom/kwad/sdk/c/c;

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/c/a/b;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v3, v0, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v5, v0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    iget v6, v0, Lcom/kwad/sdk/reward/a;->e:I

    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/c/c;->a(Landroid/widget/FrameLayout;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/b;I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->c:Lcom/kwad/sdk/c/c;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/a/b;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/c;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->c:Lcom/kwad/sdk/c/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/c;->g()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->c:Lcom/kwad/sdk/c/c;

    instance-of v1, v0, Lcom/kwad/sdk/c/a;

    if-eqz v1, :cond_46

    check-cast v0, Lcom/kwad/sdk/c/a;

    new-instance v1, Lcom/kwad/sdk/reward/b/c/a/b$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/c/a/b$1;-><init>(Lcom/kwad/sdk/reward/b/c/a/b;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/a;->a(Lcom/kwad/sdk/c/a$a;)V

    :cond_46
    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_web_card_container:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->b:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected c()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a/b;->c:Lcom/kwad/sdk/c/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kwad/sdk/c/c;->i()V

    :cond_a
    return-void
.end method
