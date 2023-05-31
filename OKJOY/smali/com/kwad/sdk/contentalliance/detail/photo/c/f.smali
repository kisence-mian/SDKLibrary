.class public Lcom/kwad/sdk/contentalliance/detail/photo/c/f;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/detail/photo/c/f$i;,
        Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;,
        Lcom/kwad/sdk/contentalliance/detail/photo/c/f$k;,
        Lcom/kwad/sdk/contentalliance/detail/photo/c/f$g;,
        Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;
    }
.end annotation


# instance fields
.field private f:Landroid/widget/Button;

.field private g:Lcom/kwad/sdk/contentalliance/detail/video/b;

.field private h:Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

.field private i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

.field private j:Lcom/kwad/sdk/b/e/a;

.field private k:Lcom/kwad/sdk/contentalliance/detail/video/e;

.field private l:Ljava/lang/Runnable;

.field m:Landroid/view/View$OnClickListener;

.field private n:Z

.field private o:Lcom/kwad/sdk/contentalliance/detail/video/b$d;

.field private p:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private q:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$k;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->h:Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->j:Lcom/kwad/sdk/b/e/a;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$b;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->k:Lcom/kwad/sdk/contentalliance/detail/video/e;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$c;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$d;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->m:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n:Z

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$e;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$e;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->o:Lcom/kwad/sdk/contentalliance/detail/video/b$d;

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$f;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->p:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;)Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->h:Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    if-eqz v0, :cond_c

    if-ne p1, v1, :cond_d

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n:Z

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->j()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n:Z

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->m()V

    goto :goto_c
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->a(ZI)V

    return-void
.end method

.method private a(ZI)V
    .registers 5

    if-nez p2, :cond_10

    const-string v0, "ksad_photo_video_play_icon"

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->b(Ljava/lang/String;)V

    :goto_7
    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->f:Landroid/widget/Button;

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_10
    const-string v0, "ksad_photo_video_pause_icon"

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_16
    const/4 v0, 0x4

    goto :goto_c
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->m()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/kwad/sdk/e/l;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;)Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->h:Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    return-object v0
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private n()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->m()V

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$k;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->h:Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->a(ZI)V

    iput-boolean v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n:Z

    return-void
.end method


# virtual methods
.method protected g()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/b/c/b;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n:Z

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->o:Lcom/kwad/sdk/contentalliance/detail/video/b$d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/b$d;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->k:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->j:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->p:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->q:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;->a(Landroid/view/GestureDetector;)V

    return-void
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->h()V

    const-string v0, "ksad_video_control_button"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->f:Landroid/widget/Button;

    const-string v0, "ksad_video_container"

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    return-void
.end method

.method protected j()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->o:Lcom/kwad/sdk/contentalliance/detail/video/b$d;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/b$d;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->g:Lcom/kwad/sdk/contentalliance/detail/video/b;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->k:Lcom/kwad/sdk/contentalliance/detail/video/e;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->j:Lcom/kwad/sdk/b/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->i:Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/widget/KsAdFrameLayout;->b(Landroid/view/GestureDetector;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->n()V

    return-void
.end method

.method public l()Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->h:Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    if-nez v0, :cond_c

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/contentalliance/detail/photo/c/f$j;-><init>(Lcom/kwad/sdk/contentalliance/detail/photo/c/f;Lcom/kwad/sdk/contentalliance/detail/photo/c/f$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->h:Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/photo/c/f;->h:Lcom/kwad/sdk/contentalliance/detail/photo/c/f$h;

    return-object v0
.end method
