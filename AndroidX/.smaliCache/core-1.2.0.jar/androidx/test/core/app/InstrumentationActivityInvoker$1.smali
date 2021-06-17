.class Landroidx/test/core/app/InstrumentationActivityInvoker$1;
.super Landroid/content/BroadcastReceiver;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker;->startFloatingEmptyActivitySync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroidx/test/core/app/InstrumentationActivityInvoker;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/test/core/app/InstrumentationActivityInvoker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$latch"
        }
    .end annotation

    .line 395
    iput-object p2, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
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

    .line 398
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 399
    return-void
.end method
