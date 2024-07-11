.class public Lcom/kwad/sdk/core/download/a/a;
.super Lcom/kwad/sdk/core/view/a;


# instance fields
.field private final a:Landroid/app/Dialog;

.field private b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field private c:Lcom/kwad/sdk/core/download/a/d;

.field private d:Lcom/kwad/sdk/mvp/Presenter;

.field private e:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private f:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/download/a/b;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/view/a;-><init>(Landroid/content/Context;)V

    iput p4, p0, Lcom/kwad/sdk/core/download/a/a;->g:I

    iput-object p2, p0, Lcom/kwad/sdk/core/download/a/a;->a:Landroid/app/Dialog;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/a/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/core/download/a/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/download/a/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/kwad/sdk/R$layout;->ksad_download_dialog_layout:I

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/core/download/a/a;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/kwad/sdk/R$id;->ksad_root_container:I

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/download/a/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/a;->b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/download/a/a;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/download/a/a;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method private d()Lcom/kwad/sdk/core/download/a/d;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/download/a/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/a/d;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/a;->b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iput-object v1, v0, Lcom/kwad/sdk/core/download/a/d;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object v1, v0, Lcom/kwad/sdk/core/download/a/d;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v1, p0, Lcom/kwad/sdk/core/download/a/a;->g:I

    iput v1, v0, Lcom/kwad/sdk/core/download/a/d;->a:I

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/a;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/kwad/sdk/core/download/b/b;

    iget-object v2, p0, Lcom/kwad/sdk/core/download/a/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v1, v2}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iput-object v1, v0, Lcom/kwad/sdk/core/download/a/d;->f:Lcom/kwad/sdk/core/download/b/b;

    :cond_22
    new-instance v1, Lcom/kwad/sdk/core/download/a/a$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/download/a/a$1;-><init>(Lcom/kwad/sdk/core/download/a/a;)V

    iput-object v1, v0, Lcom/kwad/sdk/core/download/a/d;->b:Lcom/kwad/sdk/core/download/a/e;

    return-object v0
.end method

.method private e()Lcom/kwad/sdk/mvp/Presenter;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v1, Lcom/kwad/sdk/core/download/a/f;

    invoke-direct {v1}, Lcom/kwad/sdk/core/download/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/a;->d()Lcom/kwad/sdk/core/download/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/a;->c:Lcom/kwad/sdk/core/download/a/d;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/a;->e()Lcom/kwad/sdk/mvp/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/download/a/a;->d:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/a;->b:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/a;->d:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/a/a;->c:Lcom/kwad/sdk/core/download/a/d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/a;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/download/a/a;->f:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/a;->c:Lcom/kwad/sdk/core/download/a/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/a/d;->a()V

    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/core/download/a/a;->d:Lcom/kwad/sdk/mvp/Presenter;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->g()V

    :cond_e
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method
