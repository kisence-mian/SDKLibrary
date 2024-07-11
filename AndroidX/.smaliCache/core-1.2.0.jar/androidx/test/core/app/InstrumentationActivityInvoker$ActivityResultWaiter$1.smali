.class Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;
.super Landroid/content/BroadcastReceiver;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;


# direct methods
.method constructor <init>(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 223
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    nop

    .line 226
    const-string v0, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 227
    .local v0, "resultCode":I
    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 228
    .local v1, "resultData":Landroid/content/Intent;
    if-eqz v1, :cond_1b

    .line 230
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v1, v2

    .line 232
    :cond_1b
    iget-object v2, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    new-instance v3, Landroid/app/Instrumentation$ActivityResult;

    invoke-direct {v3, v0, v1}, Landroid/app/Instrumentation$ActivityResult;-><init>(ILandroid/content/Intent;)V

    # setter for: Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->activityResult:Landroid/app/Instrumentation$ActivityResult;
    invoke-static {v2, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->access$002(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;Landroid/app/Instrumentation$ActivityResult;)Landroid/app/Instrumentation$ActivityResult;

    .line 233
    iget-object v2, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    # getter for: Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->latch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->access$100(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 234
    return-void
.end method
