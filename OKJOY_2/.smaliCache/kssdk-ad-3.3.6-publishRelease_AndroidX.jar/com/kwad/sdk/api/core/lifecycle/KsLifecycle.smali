.class public Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeState;,
        Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;
    }
.end annotation


# instance fields
.field private mBase:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;->mBase:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;)V
    .registers 3

    instance-of v0, p1, Lcom/kwad/sdk/api/core/lifecycle/KsGenericLifecycleObserver;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$1;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$1;-><init>(Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;)V

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;->setBase(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p1, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;->mBase:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_11
    return-void
.end method

.method public getCurrentState()Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeState;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;->mBase:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeState;->createFrom(Landroidx/lifecycle/Lifecycle$State;)Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeState;

    move-result-object v0

    return-object v0
.end method

.method public removeObserver(Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;->mBase:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;->getBase()Landroidx/lifecycle/LifecycleObserver;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
