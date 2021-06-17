.class Landroidx/lifecycle/ProcessLifecycleOwner$3$1;
.super Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/ProcessLifecycleOwner$3;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/ProcessLifecycleOwner$3;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ProcessLifecycleOwner$3;)V
    .registers 2
    .param p1, "this$1"    # Landroidx/lifecycle/ProcessLifecycleOwner$3;

    .line 171
    iput-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;->this$1:Landroidx/lifecycle/ProcessLifecycleOwner$3;

    invoke-direct {p0}, Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 179
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;->this$1:Landroidx/lifecycle/ProcessLifecycleOwner$3;

    iget-object v0, v0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->activityResumed()V

    .line 180
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 174
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;->this$1:Landroidx/lifecycle/ProcessLifecycleOwner$3;

    iget-object v0, v0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->activityStarted()V

    .line 175
    return-void
.end method
