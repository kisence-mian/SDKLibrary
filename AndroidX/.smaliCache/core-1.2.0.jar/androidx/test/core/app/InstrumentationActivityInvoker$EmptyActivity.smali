.class public Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;
.super Landroid/app/Activity;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyActivity"
.end annotation


# instance fields
.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 268
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 269
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity$1;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;)V

    iput-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 292
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_ACTIVITY_RESUMED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    return-void
.end method
