.class public Lcom/kwad/sdk/reward/b/c/b/a;
.super Lcom/kwad/sdk/reward/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/kwad/sdk/reward/a/b;

.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private f:Lcom/kwad/sdk/core/download/b/b;

.field private g:Lcom/kwad/sdk/reward/a/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/c/b/a$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/reward/b/c/b/a$1;-><init>(Lcom/kwad/sdk/reward/b/c/b/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->g:Lcom/kwad/sdk/reward/a/f;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/reward/b/c/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/a;->e()V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/reward/b/c/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/a;->n()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/reward/b/c/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/a;->o()V

    return-void
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/b;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget v1, v1, Lcom/kwad/sdk/reward/a;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v1, v2, :cond_36

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-boolean v1, v1, Lcom/kwad/sdk/reward/a;->q:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-boolean v1, v1, Lcom/kwad/sdk/reward/a;->r:Z

    if-eqz v1, :cond_24

    goto :goto_36

    :cond_24
    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->c:Landroid/widget/TextView;

    goto :goto_47

    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->b:Landroid/widget/TextView;

    :goto_47
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/b/a;->m()V

    return-void
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/16 v2, 0x11

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method

.method private n()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v1, v1, Lcom/kwad/sdk/reward/a;->h:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v2, v2, Lcom/kwad/sdk/reward/a;->d:Lorg/json/JSONObject;

    const/16 v3, 0x27

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method private o()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->d:Lcom/kwad/sdk/reward/a/b;

    invoke-interface {v0}, Lcom/kwad/sdk/reward/a/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->b:Lcom/kwad/sdk/reward/a/b;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->d:Lcom/kwad/sdk/reward/a/b;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->f:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->j:Lcom/kwad/sdk/core/download/b/b;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->f:Lcom/kwad/sdk/core/download/b/b;

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->g:Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->b()V

    sget v0, Lcom/kwad/sdk/R$id;->ksad_end_left_call_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->b:Landroid/widget/TextView;

    sget v0, Lcom/kwad/sdk/R$id;->ksad_end_right_call_btn:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->c:Landroid/widget/TextView;

    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/reward/d;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->a:Lcom/kwad/sdk/reward/a;

    iget-object v0, v0, Lcom/kwad/sdk/reward/a;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/b/a;->g:Lcom/kwad/sdk/reward/a/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->b:Landroid/widget/TextView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_18

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/b/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/reward/b/c/b/a$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/reward/b/c/b/a$2;-><init>(Lcom/kwad/sdk/reward/b/c/b/a;)V

    iget-object v2, p0, Lcom/kwad/sdk/reward/b/c/b/a;->f:Lcom/kwad/sdk/core/download/b/b;

    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/core/download/b/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V

    :cond_18
    return-void
.end method
