.class Landroidx/navigation/fragment/DialogFragmentNavigator$1;
.super Ljava/lang/Object;
.source "DialogFragmentNavigator.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/DialogFragmentNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;


# direct methods
.method constructor <init>(Landroidx/navigation/fragment/DialogFragmentNavigator;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 56
    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 60
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_18

    .line 61
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    .line 62
    .local v0, "dialogFragment":Landroidx/fragment/app/DialogFragment;
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_18

    .line 63
    invoke-static {v0}, Landroidx/navigation/fragment/NavHostFragment;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavController;->popBackStack()Z

    .line 66
    .end local v0    # "dialogFragment":Landroidx/fragment/app/DialogFragment;
    :cond_18
    return-void
.end method
