.class Landroidx/navigation/NavController$1;
.super Ljava/lang/Object;
.source "NavController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/navigation/NavController;

    .line 103
    iput-object p1, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 107
    iget-object v0, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    iget-object v0, v0, Landroidx/navigation/NavController;->mGraph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1e

    .line 108
    iget-object v0, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    iget-object v0, v0, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 109
    .local v1, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v1, p2}, Landroidx/navigation/NavBackStackEntry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 110
    .end local v1    # "entry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_e

    .line 112
    :cond_1e
    return-void
.end method
