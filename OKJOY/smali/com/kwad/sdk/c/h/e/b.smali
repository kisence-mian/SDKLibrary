.class public Lcom/kwad/sdk/c/h/e/b;
.super Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;
.source ""

# interfaces
.implements Lcom/kwad/sdk/c/h/e/d;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/media/AudioManager;

.field private e:Lcom/kwad/sdk/c/h/d/c;

.field private f:Landroid/widget/FrameLayout;

.field private g:Lcom/kwad/sdk/c/h/c;

.field private h:Lcom/kwad/sdk/c/h/e/c;

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:Landroid/view/Surface;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Lcom/kwad/sdk/c/h/d/c$e;

.field private r:Lcom/kwad/sdk/c/h/d/c$h;

.field private s:Lcom/kwad/sdk/c/h/d/c$b;

.field private t:Lcom/kwad/sdk/c/h/d/c$c;

.field private u:Lcom/kwad/sdk/c/h/d/c$d;

.field private v:Lcom/kwad/sdk/c/h/d/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/c/h/e/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/view/KsAdBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    iput-boolean v0, p0, Lcom/kwad/sdk/c/h/e/b;->m:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/c/h/e/b;->o:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/c/h/e/b;->p:Z

    new-instance v0, Lcom/kwad/sdk/c/h/e/b$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/h/e/b$a;-><init>(Lcom/kwad/sdk/c/h/e/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->q:Lcom/kwad/sdk/c/h/d/c$e;

    new-instance v0, Lcom/kwad/sdk/c/h/e/b$b;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/h/e/b$b;-><init>(Lcom/kwad/sdk/c/h/e/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->r:Lcom/kwad/sdk/c/h/d/c$h;

    new-instance v0, Lcom/kwad/sdk/c/h/e/b$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/h/e/b$c;-><init>(Lcom/kwad/sdk/c/h/e/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->s:Lcom/kwad/sdk/c/h/d/c$b;

    new-instance v0, Lcom/kwad/sdk/c/h/e/b$d;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/h/e/b$d;-><init>(Lcom/kwad/sdk/c/h/e/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->t:Lcom/kwad/sdk/c/h/d/c$c;

    new-instance v0, Lcom/kwad/sdk/c/h/e/b$e;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/h/e/b$e;-><init>(Lcom/kwad/sdk/c/h/e/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->u:Lcom/kwad/sdk/c/h/d/c$d;

    new-instance v0, Lcom/kwad/sdk/c/h/e/b$f;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/h/e/b$f;-><init>(Lcom/kwad/sdk/c/h/e/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->v:Lcom/kwad/sdk/c/h/d/c$a;

    new-instance v0, Lcom/kwad/sdk/c/h/e/b$g;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/h/e/b$g;-><init>(Lcom/kwad/sdk/c/h/e/b;)V

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/b;->l()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/c/h/e/b;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    return v0
.end method

.method static synthetic a(Lcom/kwad/sdk/c/h/e/b;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/c/h/e/b;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/c/h/e/b;->l:I

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/e/c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/c/h/e/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/c/h/e/b;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/kwad/sdk/c/h/e/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/kwad/sdk/c/h/e/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kwad/sdk/c/h/e/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/c/h/e/b;->n:J

    return-wide v0
.end method

.method static synthetic g(Lcom/kwad/sdk/c/h/e/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/c/h/e/b;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/kwad/sdk/c/h/e/b;)Lcom/kwad/sdk/c/h/c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->g:Lcom/kwad/sdk/c/h/c;

    return-object v0
.end method

.method static synthetic i(Lcom/kwad/sdk/c/h/e/b;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private k()V
    .registers 5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->g:Lcom/kwad/sdk/c/h/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/kwad/sdk/c/h/e/b;->g:Lcom/kwad/sdk/c/h/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private l()V
    .registers 4

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private m()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/kwad/sdk/c/h/d/b;

    invoke-direct {v0}, Lcom/kwad/sdk/c/h/d/b;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(I)V

    iget-boolean v0, p0, Lcom/kwad/sdk/c/h/e/b;->o:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0, v2, v2}, Lcom/kwad/sdk/c/h/d/c;->a(FF)V

    :cond_1b
    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->g:Lcom/kwad/sdk/c/h/c;

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwad/sdk/c/h/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/c/h/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->g:Lcom/kwad/sdk/c/h/c;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->g:Lcom/kwad/sdk/c/h/c;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_12
    return-void
.end method

.method private o()V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->q:Lcom/kwad/sdk/c/h/d/c$e;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$e;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->r:Lcom/kwad/sdk/c/h/d/c$h;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$h;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->s:Lcom/kwad/sdk/c/h/d/c$b;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$b;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->t:Lcom/kwad/sdk/c/h/d/c$c;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$c;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->u:Lcom/kwad/sdk/c/h/d/c$d;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$d;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->v:Lcom/kwad/sdk/c/h/d/c$a;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Lcom/kwad/sdk/c/h/d/c$a;)V

    :try_start_30
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->j:Landroid/view/Surface;

    if-nez v0, :cond_44

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->i:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->j:Landroid/view/Surface;

    :cond_44
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->j:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/c/h/d/c;->a(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->e()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    iget v1, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "STATE_PREPARING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_61} :catch_62

    :goto_61
    return-void

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "KSVideoPlayerViewView"

    const-string v2, "\u6253\u5f00\u64ad\u653e\u5668\u53d1\u751f\u9519\u8bef"

    invoke-static {v1, v2, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_61
.end method


# virtual methods
.method public a()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->a()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    iget v1, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "STATE_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->a()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    iget v1, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "STATE_BUFFERING_PAUSED"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b;->k:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()V
    .registers 5

    iget-boolean v0, p0, Lcom/kwad/sdk/c/h/e/b;->m:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/b;->i()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/b;->g()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/b;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_1c
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/b;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/b;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/e/c;->c()V

    :cond_31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void

    :cond_39
    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/b;->h()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->k:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/e/m;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_27
.end method

.method public d()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->start()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    iget v1, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "STATE_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    const/4 v1, 0x6

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->start()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    iget v1, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/c/h/e/c;->a(I)V

    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "STATE_BUFFERING_PLAYING"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_36
    const/4 v1, 0x7

    if-eq v0, v1, :cond_3c

    const/4 v1, -0x1

    if-ne v0, v1, :cond_45

    :cond_3c
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->b()V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/b;->o()V

    goto :goto_1b

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KSVideoPlayer\u5728\u72b6\u6001\u4e3a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u65f6\u4e0d\u80fd\u8c03\u7528restart()\u65b9\u6cd5."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KSVideoPlayerViewView"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public e()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public f()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public g()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getBufferPercentage()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->l:I

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->getCurrentPosition()J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getDuration()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->getDuration()J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public getMaxVolume()I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getVolume()I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public h()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public i()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public j()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iput-object v2, p0, Lcom/kwad/sdk/c/h/e/b;->d:Landroid/media/AudioManager;

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/kwad/sdk/c/h/d/c;->c()V

    iput-object v2, p0, Lcom/kwad/sdk/c/h/e/b;->e:Lcom/kwad/sdk/c/h/d/c;

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->g:Lcom/kwad/sdk/c/h/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->j:Landroid/view/Surface;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/kwad/sdk/c/h/e/b;->j:Landroid/view/Surface;

    :cond_23
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v2, p0, Lcom/kwad/sdk/c/h/e/b;->i:Landroid/graphics/SurfaceTexture;

    :cond_2c
    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->i:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_a

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b;->i:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/b;->o()V

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->g:Lcom/kwad/sdk/c/h/c;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_9
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public setController(Lcom/kwad/sdk/c/h/e/c;)V
    .registers 5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/e/c;->c()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/b;->f:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/kwad/sdk/c/h/e/b;->h:Lcom/kwad/sdk/c/h/e/c;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPortraitFullscreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/c/h/e/b;->p:Z

    return-void
.end method

.method public setVideoSoundEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/c/h/e/b;->o:Z

    return-void
.end method

.method public setVolume(I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/b;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_9
    return-void
.end method

.method public start()V
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/c/h/e/b;->b:I

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/b;->m()V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/b;->n()V

    invoke-direct {p0}, Lcom/kwad/sdk/c/h/e/b;->k()V

    :goto_d
    return-void

    :cond_e
    const-string v0, "KSVideoPlayerViewView"

    const-string v1, "KSVideoPlayer\u53ea\u6709\u5728\u72b6\u6001\u4e3aSTATE_IDLE\u65f6\u624d\u80fd\u8c03\u7528start\u65b9\u6cd5."

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method
