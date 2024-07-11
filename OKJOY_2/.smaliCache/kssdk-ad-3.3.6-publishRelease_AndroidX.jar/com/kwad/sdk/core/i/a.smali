.class public Lcom/kwad/sdk/core/i/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/i/b;
.implements Lcom/kwad/sdk/utils/ai$a;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lcom/kwad/sdk/utils/ai;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/sdk/core/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/kwad/sdk/api/core/fragment/KsFragment;

.field private e:Landroid/view/View;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/view/View;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/core/i/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/kwad/sdk/core/i/a;->d:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    iput-object p2, p0, Lcom/kwad/sdk/core/i/a;->e:Landroid/view/View;

    iput p3, p0, Lcom/kwad/sdk/core/i/a;->f:I

    new-instance p1, Lcom/kwad/sdk/utils/ai;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/utils/ai;-><init>(Lcom/kwad/sdk/utils/ai$a;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/i/a;->b:Lcom/kwad/sdk/utils/ai;

    return-void
.end method

.method private a(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isAllFragmentIsHidden()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->c:Ljava/util/Set;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/i/c;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_1d

    invoke-interface {v1}, Lcom/kwad/sdk/core/i/c;->a_()V

    goto :goto_9

    :cond_1d
    invoke-interface {v1}, Lcom/kwad/sdk/core/i/c;->e()V

    goto :goto_9

    :cond_21
    return-void
.end method

.method private e()Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->e:Landroid/view/View;

    iget v1, p0, Lcom/kwad/sdk/core/i/a;->f:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;IZ)Z

    move-result v0

    return v0
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start notifyPageVisible by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/i/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentPageVisibleHelper"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/i/a;->b(Z)V

    :cond_26
    return-void
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start notifyPageInVisible by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/i/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentPageVisibleHelper"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/i/a;->b(Z)V

    :cond_26
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->b:Lcom/kwad/sdk/utils/ai;

    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x29a

    if-ne p1, v0, :cond_34

    iget-object p1, p0, Lcom/kwad/sdk/core/i/a;->d:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    if-nez p1, :cond_12

    const-string p1, "FragmentPageVisibleHelper"

    const-string v0, "mFragment is null"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/i/a;->a(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "message fragment"

    iput-object p1, p0, Lcom/kwad/sdk/core/i/a;->g:Ljava/lang/String;

    :cond_1c
    invoke-direct {p0}, Lcom/kwad/sdk/core/i/a;->g()V

    goto :goto_2d

    :cond_20
    const-string p1, "message view"

    iput-object p1, p0, Lcom/kwad/sdk/core/i/a;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kwad/sdk/core/i/a;->e()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-direct {p0}, Lcom/kwad/sdk/core/i/a;->f()V

    :goto_2d
    iget-object p1, p0, Lcom/kwad/sdk/core/i/a;->b:Lcom/kwad/sdk/utils/ai;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessageDelayed(IJ)Z

    :cond_34
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/i/c;)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/utils/s;->a()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->c:Ljava/util/Set;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/i/a;->c:Ljava/util/Set;

    :cond_11
    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Lcom/kwad/sdk/core/i/c;->a_()V

    goto :goto_20

    :cond_1d
    invoke-interface {p1}, Lcom/kwad/sdk/core/i/c;->e()V

    :goto_20
    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->b:Lcom/kwad/sdk/utils/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/ai;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/kwad/sdk/core/i/c;)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/utils/s;->a()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/kwad/sdk/core/i/a;->c:Ljava/util/Set;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "FragmentPageVisibleHelper"

    const-string v1, "onFragmentPause"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/i/a;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kwad/sdk/core/i/a;->g()V

    return-void
.end method
