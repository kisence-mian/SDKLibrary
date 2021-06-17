.class Landroidx/lifecycle/ProcessLifecycleOwner$3;
.super Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ProcessLifecycleOwner;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 161
    iput-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Landroidx/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_11

    .line 190
    invoke-static {p1}, Landroidx/lifecycle/ReportFragment;->get(Landroid/app/Activity;)Landroidx/lifecycle/ReportFragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    iget-object v1, v1, Landroidx/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ReportFragment;->setProcessListener(Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 192
    :cond_11
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 196
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->activityPaused()V

    .line 197
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 171
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$3$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 182
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 201
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$3;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->activityStopped()V

    .line 202
    return-void
.end method
