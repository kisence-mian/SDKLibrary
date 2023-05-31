.class public Lcom/kwad/sdk/contentalliance/detail/video/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/b/e/a;
.implements Lcom/kwad/sdk/e/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/detail/video/b$d;
    }
.end annotation


# static fields
.field private static m:Z


# instance fields
.field private a:Lcom/kwad/sdk/e/q;

.field private b:Landroid/view/ViewGroup;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/kwad/sdk/contentalliance/detail/video/a;

.field private f:Landroid/support/v4/app/Fragment;

.field private g:Landroid/content/Context;

.field private h:J

.field private i:J

.field private j:Lcom/kwad/sdk/b/e/c;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/contentalliance/detail/video/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/contentalliance/detail/video/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->i:J

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/b$c;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/b$c;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->j:Lcom/kwad/sdk/b/e/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->l:Ljava/util/List;

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->f:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static {p3}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->d:Ljava/lang/String;

    :goto_36
    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {v0, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetailPlayModule createPlayerAndPrepare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailPlayModule"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->n()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/b$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/video/b$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/c/h/d/c$e;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/b$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/video/b$b;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/b;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->b:Landroid/view/ViewGroup;

    return-void

    :cond_79
    invoke-static {p3}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->p(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->d:Ljava/lang/String;

    goto :goto_36
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/b;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->i:J

    return-wide p1
.end method

.method private a(Z)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/c;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c;->a()V

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/c;

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/c;->b()V

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)Z
    .registers 4
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/video/b;)Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->f:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/video/b;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/contentalliance/detail/video/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->i:J

    return-wide v0
.end method

.method static synthetic e(Lcom/kwad/sdk/contentalliance/detail/video/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->h:J

    return-wide v0
.end method

.method static synthetic f(Lcom/kwad/sdk/contentalliance/detail/video/b;)Lcom/kwad/sdk/contentalliance/detail/video/a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    return-object v0
.end method

.method static synthetic g(Lcom/kwad/sdk/contentalliance/detail/video/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->q()V

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->i()V

    return-void
.end method

.method private o()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/c/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/s/a;->a(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/videocache/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->d:Ljava/lang/String;

    goto :goto_16
.end method

.method private p()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:Lcom/kwad/sdk/e/q;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kwad/sdk/e/q;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/e/q;-><init>(Lcom/kwad/sdk/e/q$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:Lcom/kwad/sdk/e/q;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:Lcom/kwad/sdk/e/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private q()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:Lcom/kwad/sdk/e/q;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:Lcom/kwad/sdk/e/q;

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_7d

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->f:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->f:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_57

    :cond_22
    move v0, v2

    :goto_23
    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->b:Landroid/view/ViewGroup;

    const/16 v4, 0x46

    invoke-static {v3, v4, v1}, Lcom/kwad/sdk/e/p;->b(Landroid/view/View;IZ)Z

    move-result v3

    if-eqz v3, :cond_59

    if-nez v0, :cond_59

    sget-boolean v0, Lcom/kwad/sdk/contentalliance/detail/video/b;->m:Z

    if-eqz v0, :cond_41

    const-string v0, "DetailPlayModule"

    const-string v3, "removeMessages(MSG_UPDATE_SESSION_ID)"

    invoke-static {v0, v3}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:Lcom/kwad/sdk/e/q;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    sput-boolean v1, Lcom/kwad/sdk/contentalliance/detail/video/b;->m:Z

    :cond_41
    invoke-direct {p0, v2}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->m()V

    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:Lcom/kwad/sdk/e/q;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    :cond_57
    move v0, v1

    goto :goto_23

    :cond_59
    sget-boolean v0, Lcom/kwad/sdk/contentalliance/detail/video/b;->m:Z

    if-nez v0, :cond_6e

    const-string v0, "DetailPlayModule"

    const-string v3, "sendEmptyMessageDelayed(MSG_UPDATE_SESSION_ID)"

    invoke-static {v0, v3}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->a:Lcom/kwad/sdk/e/q;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sput-boolean v2, Lcom/kwad/sdk/contentalliance/detail/video/b;->m:Z

    :cond_6e
    invoke-direct {p0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/b;->a(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->j()V

    goto :goto_4f

    :cond_7d
    if-ne v0, v6, :cond_b

    invoke-static {}, Lcom/kwad/sdk/c/f/i;->f()Ljava/lang/String;

    sput-boolean v1, Lcom/kwad/sdk/contentalliance/detail/video/b;->m:Z

    goto :goto_b
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/b$d;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/c;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->c:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->k()V

    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/b$d;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/c;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b(Lcom/kwad/sdk/contentalliance/detail/video/e;)V

    return-void
.end method

.method public c()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "becomesAttachedOnPageSelected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailPlayModule"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->h:J

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->c:Z

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->c()Lcom/kwad/sdk/c/h/d/c;

    move-result-object v0

    if-nez v0, :cond_36

    const-string v0, "DetailPlayModule"

    const-string v1, "becomesAttachedOnPageSelected createPlayerAndPrepare"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->n()V

    :cond_36
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->f()Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string v0, "DetailPlayModule"

    const-string v1, "becomesAttachedOnPageSelected play start"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->i:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "becomesAttachedOnPageSelected mStartPlayDuration= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailPlayModule"

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->o()V

    :cond_6d
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()J
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lcom/kwad/sdk/b/e/c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->j:Lcom/kwad/sdk/b/e/c;

    return-object v0
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->i:J

    return-wide v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->e()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->g()Z

    move-result v0

    return v0
.end method

.method public j()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->c:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->h()V

    :cond_9
    return-void
.end method

.method public k()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->m()V

    return-void
.end method

.method public m()V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->c:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->f:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/b$d;

    if-nez v1, :cond_28

    invoke-interface {v0}, Lcom/kwad/sdk/contentalliance/detail/video/b$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_28
    const/4 v0, 0x1

    move v1, v0

    goto :goto_14

    :cond_2b
    move v1, v2

    goto :goto_14

    :cond_2d
    if-eqz v1, :cond_30

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/b;->e:Lcom/kwad/sdk/contentalliance/detail/video/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->n()V

    goto :goto_2f
.end method
