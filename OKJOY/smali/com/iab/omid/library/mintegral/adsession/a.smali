.class public Lcom/iab/omid/library/mintegral/adsession/a;
.super Lcom/iab/omid/library/mintegral/adsession/AdSession;


# instance fields
.field private final a:Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;

.field private final b:Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iab/omid/library/mintegral/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/iab/omid/library/mintegral/e/a;

.field private e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method constructor <init>(Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcom/iab/omid/library/mintegral/adsession/a;->f:Z

    iput-boolean v1, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/adsession/a;->b:Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;

    iput-object p2, p0, Lcom/iab/omid/library/mintegral/adsession/a;->a:Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iab/omid/library/mintegral/adsession/a;->c(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getAdSessionContextType()Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_46

    new-instance v0, Lcom/iab/omid/library/mintegral/publisher/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/a;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    :goto_34
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a()V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/a;->a()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mintegral/b/a;->a(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;)V

    return-void

    :cond_46
    new-instance v0, Lcom/iab/omid/library/mintegral/publisher/b;

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getVerificationScriptResources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getOmidJsScriptContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/mintegral/publisher/b;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    goto :goto_34
.end method

.method private a(Landroid/view/View;)Lcom/iab/omid/library/mintegral/e/a;
    .registers 5

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/e/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/e/a;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_6

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FriendlyObstruction is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method

.method private c(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/iab/omid/library/mintegral/e/a;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/mintegral/e/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->d:Lcom/iab/omid/library/mintegral/e/a;

    return-void
.end method

.method private d(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/a;->a()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/a;->b()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/a;

    if-eq v0, p0, :cond_14

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->c()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_14

    iget-object v0, v0, Lcom/iab/omid/library/mintegral/adsession/a;->d:Lcom/iab/omid/library/mintegral/e/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/e/a;->clear()V

    goto :goto_14

    :cond_2e
    return-void
.end method

.method private i()V
    .registers 3

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->i:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iab/omid/library/mintegral/e/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public addFriendlyObstruction(Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/adsession/a;->b(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/adsession/a;->a(Landroid/view/View;)Lcom/iab/omid/library/mintegral/e/a;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->c:Ljava/util/List;

    new-instance v1, Lcom/iab/omid/library/mintegral/e/a;

    invoke-direct {v1, p1}, Lcom/iab/omid/library/mintegral/e/a;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method b()V
    .registers 2

    invoke-direct {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->i()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->i:Z

    return-void
.end method

.method public c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->d:Lcom/iab/omid/library/mintegral/e/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/e/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->f:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->f:Z

    return v0
.end method

.method public error(Lcom/iab/omid/library/mintegral/adsession/ErrorType;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdSession is finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v0, "Error type is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Message is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/mintegral/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    return v0
.end method

.method public finish()V
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->d:Lcom/iab/omid/library/mintegral/e/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/e/a;->clear()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->removeAllFriendlyObstructions()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->f()V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/a;->a()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mintegral/b/a;->c(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    goto :goto_4
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->b:Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->isNativeImpressionOwner()Z

    move-result v0

    return v0
.end method

.method public getAdSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->b:Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->isNativeVideoEventsOwner()Z

    move-result v0

    return v0
.end method

.method public registerAdView(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->c()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_4

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/adsession/a;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->h()V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/adsession/a;->d(Landroid/view/View;)V

    goto :goto_4
.end method

.method public removeAllFriendlyObstructions()V
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_4
.end method

.method public removeFriendlyObstruction(Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->g:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/adsession/a;->b(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/adsession/a;->a(Landroid/view/View;)Lcom/iab/omid/library/mintegral/e/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public start()V
    .registers 3

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->f:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->f:Z

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/a;->a()Lcom/iab/omid/library/mintegral/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mintegral/b/a;->b(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/e;->a()Lcom/iab/omid/library/mintegral/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/b/e;->d()F

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/a;->e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(F)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/a;->e:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/a;->a:Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;

    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/mintegral/adsession/a;Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;)V

    goto :goto_4
.end method
