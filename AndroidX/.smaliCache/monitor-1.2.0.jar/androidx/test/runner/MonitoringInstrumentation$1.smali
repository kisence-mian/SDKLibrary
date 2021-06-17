.class Landroidx/test/runner/MonitoringInstrumentation$1;
.super Ljava/lang/Object;
.source "MonitoringInstrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/runner/MonitoringInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/runner/MonitoringInstrumentation;


# direct methods
.method constructor <init>(Landroidx/test/runner/MonitoringInstrumentation;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/test/runner/MonitoringInstrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation$1;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 4

    .line 129
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$1;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    # getter for: Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Landroidx/test/runner/MonitoringInstrumentation;->access$000(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method
