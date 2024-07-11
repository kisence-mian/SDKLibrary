.class Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;->addObserver(Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;

.field final synthetic val$observer:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$1;->this$0:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle;

    iput-object p2, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$1;->val$observer:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$1;->val$observer:Lcom/kwad/sdk/api/core/lifecycle/KsLifecycleObserver;

    check-cast p1, Lcom/kwad/sdk/api/core/lifecycle/KsGenericLifecycleObserver;

    invoke-static {p2}, Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;->createfrom(Landroidx/lifecycle/Lifecycle$Event;)Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/api/core/lifecycle/KsGenericLifecycleObserver;->onStateChanged(Lcom/kwad/sdk/api/core/lifecycle/KsLifecycle$KsLifeEvent;)V

    return-void
.end method
