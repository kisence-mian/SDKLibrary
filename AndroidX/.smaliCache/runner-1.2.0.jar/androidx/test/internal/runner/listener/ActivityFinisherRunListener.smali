.class public Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;
.super Lorg/junit/runner/notification/RunListener;
.source "ActivityFinisherRunListener.java"


# instance fields
.field private final activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

.field private final instrumentation:Landroid/app/Instrumentation;

.field private final waitForActivitiesToFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .param p2, "finisher"    # Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    .param p3, "waitForActivitiesToFinishRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instrumentation",
            "finisher",
            "waitForActivitiesToFinishRunnable"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 40
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    iput-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->instrumentation:Landroid/app/Instrumentation;

    .line 41
    invoke-static {p2}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    iput-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 42
    invoke-static {p3}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->waitForActivitiesToFinishRunnable:Ljava/lang/Runnable;

    .line 43
    return-void
.end method


# virtual methods
.method public testFinished(Lorg/junit/runner/Description;)V
    .registers 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->getInstance()Landroidx/test/internal/runner/InstrumentationConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/internal/runner/InstrumentationConnection;->requestRemoteInstancesActivityCleanup()V

    .line 54
    iget-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->instrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 55
    iget-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->waitForActivitiesToFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 56
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .registers 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->instrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 48
    iget-object v0, p0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;->waitForActivitiesToFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49
    return-void
.end method
