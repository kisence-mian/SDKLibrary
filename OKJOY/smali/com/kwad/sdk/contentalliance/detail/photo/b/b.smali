.class public Lcom/kwad/sdk/contentalliance/detail/photo/b/b;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;
    }
.end annotation


# instance fields
.field protected a:Lcom/kwad/sdk/mvp/Presenter;

.field protected b:Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/Button;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->c:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->d:Landroid/widget/Button;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->e:Ljava/util/List;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/b/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->f:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->d()V

    return-void
.end method

.method private b(Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)Lcom/kwad/sdk/contentalliance/detail/photo/b/c;
    .registers 4
    .param p1    # Lcom/kwad/sdk/contentalliance/detail/photo/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/c;-><init>()V

    iput-object p1, v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/c;->a:Lcom/kwad/sdk/contentalliance/detail/photo/b/d;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->f:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    iput-object v1, v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/c;->b:Lcom/kwad/sdk/contentalliance/detail/photo/d/b;

    return-object v0
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ksad_content_alliance_bottom_panel"

    invoke-static {v1, v2}, Lcom/kwad/sdk/e/l;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_photo_bottom_panel_buttons_layout"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$b;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ksad_photo_bottom_panel_cancel_button"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/l;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->d:Landroid/widget/Button;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$c;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$c;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$d;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/b/b;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->c()V

    return-void
.end method

.method private c(Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)Lcom/kwad/sdk/mvp/Presenter;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;

    invoke-direct {v1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->a:Lcom/kwad/sdk/mvp/Presenter;

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->b()V

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)V
    .registers 4
    .param p1    # Lcom/kwad/sdk/contentalliance/detail/photo/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->b(Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->b:Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->a:Lcom/kwad/sdk/mvp/Presenter;

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->c(Lcom/kwad/sdk/contentalliance/detail/photo/b/d;)Lcom/kwad/sdk/mvp/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->a:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->a:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Landroid/view/View;)V

    :cond_17
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->a:Lcom/kwad/sdk/mvp/Presenter;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->b:Lcom/kwad/sdk/contentalliance/detail/photo/b/c;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/contentalliance/detail/photo/b/b$e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/b/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
