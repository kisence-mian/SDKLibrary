.class public Lcom/iab/omid/library/mintegral/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/mintegral/a/c;
.implements Lcom/iab/omid/library/mintegral/b/b$a;


# static fields
.field private static a:Lcom/iab/omid/library/mintegral/b/e;


# instance fields
.field private b:F

.field private final c:Lcom/iab/omid/library/mintegral/a/e;

.field private final d:Lcom/iab/omid/library/mintegral/a/b;

.field private e:Lcom/iab/omid/library/mintegral/a/d;

.field private f:Lcom/iab/omid/library/mintegral/b/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mintegral/a/e;Lcom/iab/omid/library/mintegral/a/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/mintegral/b/e;->b:F

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/b/e;->c:Lcom/iab/omid/library/mintegral/a/e;

    iput-object p2, p0, Lcom/iab/omid/library/mintegral/b/e;->d:Lcom/iab/omid/library/mintegral/a/b;

    return-void
.end method

.method public static a()Lcom/iab/omid/library/mintegral/b/e;
    .registers 3

    sget-object v0, Lcom/iab/omid/library/mintegral/b/e;->a:Lcom/iab/omid/library/mintegral/b/e;

    if-nez v0, :cond_15

    new-instance v0, Lcom/iab/omid/library/mintegral/a/b;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/a/b;-><init>()V

    new-instance v1, Lcom/iab/omid/library/mintegral/a/e;

    invoke-direct {v1}, Lcom/iab/omid/library/mintegral/a/e;-><init>()V

    new-instance v2, Lcom/iab/omid/library/mintegral/b/e;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/mintegral/b/e;-><init>(Lcom/iab/omid/library/mintegral/a/e;Lcom/iab/omid/library/mintegral/a/b;)V

    sput-object v2, Lcom/iab/omid/library/mintegral/b/e;->a:Lcom/iab/omid/library/mintegral/b/e;

    :cond_15
    sget-object v0, Lcom/iab/omid/library/mintegral/b/e;->a:Lcom/iab/omid/library/mintegral/b/e;

    return-object v0
.end method

.method private e()Lcom/iab/omid/library/mintegral/b/a;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/e;->f:Lcom/iab/omid/library/mintegral/b/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/a;->a()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/b/e;->f:Lcom/iab/omid/library/mintegral/b/a;

    :cond_a
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/e;->f:Lcom/iab/omid/library/mintegral/b/a;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 4

    iput p1, p0, Lcom/iab/omid/library/mintegral/b/e;->b:F

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/b/e;->e()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/a;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(F)V

    goto :goto_e

    :cond_22
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/e;->d:Lcom/iab/omid/library/mintegral/a/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/a/b;->a()Lcom/iab/omid/library/mintegral/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/b/e;->c:Lcom/iab/omid/library/mintegral/a/e;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/iab/omid/library/mintegral/a/e;->a(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/mintegral/a/a;Lcom/iab/omid/library/mintegral/a/c;)Lcom/iab/omid/library/mintegral/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/b/e;->e:Lcom/iab/omid/library/mintegral/a/d;

    return-void
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/mintegral/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->a()V

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/mintegral/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->c()V

    goto :goto_9
.end method

.method public b()V
    .registers 2

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/b;->a()Lcom/iab/omid/library/mintegral/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mintegral/b/b;->a(Lcom/iab/omid/library/mintegral/b/b$a;)V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/b;->a()Lcom/iab/omid/library/mintegral/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/b;->b()V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/b;->a()Lcom/iab/omid/library/mintegral/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/mintegral/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->a()V

    :cond_1f
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/e;->e:Lcom/iab/omid/library/mintegral/a/d;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/a/d;->a()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-static {}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->getInstance()Lcom/iab/omid/library/mintegral/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/walking/TreeWalker;->b()V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/b;->a()Lcom/iab/omid/library/mintegral/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/b;->c()V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/e;->e:Lcom/iab/omid/library/mintegral/a/d;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/a/d;->b()V

    return-void
.end method

.method public d()F
    .registers 2

    iget v0, p0, Lcom/iab/omid/library/mintegral/b/e;->b:F

    return v0
.end method
