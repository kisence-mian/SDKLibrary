.class public Lcom/kwad/sdk/core/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/i/b;
.implements Lcom/kwad/sdk/utils/ai$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/view/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwad/sdk/utils/ai;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/sdk/core/view/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/sdk/core/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/view/b;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/view/b;->e:Z

    iput-object p1, p0, Lcom/kwad/sdk/core/view/b;->f:Landroid/view/View;

    iput p2, p0, Lcom/kwad/sdk/core/view/b;->g:I

    new-instance p1, Lcom/kwad/sdk/utils/ai;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/utils/ai;-><init>(Lcom/kwad/sdk/utils/ai$a;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/view/b;->a:Lcom/kwad/sdk/utils/ai;

    return-void
.end method

.method private a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->b:Ljava/util/Set;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/view/b$a;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1}, Lcom/kwad/sdk/core/view/b$a;->a(Z)V

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->c:Ljava/util/Set;

    if-eqz v0, :cond_59

    iget-boolean v1, p0, Lcom/kwad/sdk/core/view/b;->d:Z

    if-ne p1, v1, :cond_26

    iget-boolean v1, p0, Lcom/kwad/sdk/core/view/b;->e:Z

    if-eqz v1, :cond_59

    :cond_26
    iput-boolean p1, p0, Lcom/kwad/sdk/core/view/b;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kwad/sdk/core/view/b;->e:Z

    if-eqz p1, :cond_43

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/i/c;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/kwad/sdk/core/i/c;->a_()V

    goto :goto_31

    :cond_43
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_47
    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/i/c;

    if-eqz v0, :cond_47

    invoke-interface {v0}, Lcom/kwad/sdk/core/i/c;->a_()V

    goto :goto_47

    :cond_59
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->a:Lcom/kwad/sdk/utils/ai;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/ai;->removeMessages(I)V

    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->a:Lcom/kwad/sdk/utils/ai;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    invoke-virtual {p0}, Lcom/kwad/sdk/core/view/b;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/view/b;->a(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/core/view/b;->a:Lcom/kwad/sdk/utils/ai;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kwad/sdk/utils/ai;->sendEmptyMessageDelayed(IJ)Z

    :cond_13
    return-void
.end method

.method public a(Lcom/kwad/sdk/core/i/c;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->c:Ljava/util/Set;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/view/b;->c:Ljava/util/Set;

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/view/b$a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->b:Ljava/util/Set;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/view/b;->b:Ljava/util/Set;

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->a:Lcom/kwad/sdk/utils/ai;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/ai;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/kwad/sdk/core/i/c;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->c:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public b(Lcom/kwad/sdk/core/view/b$a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->b:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/view/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->b:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->c:Ljava/util/Set;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_11
    return-void
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/view/b;->f:Landroid/view/View;

    iget v1, p0, Lcom/kwad/sdk/core/view/b;->g:I

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
