.class public Landroidx/test/runner/AndroidJUnitRunner;
.super Landroidx/test/runner/MonitoringInstrumentation;
.source "AndroidJUnitRunner.java"

# interfaces
.implements Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidJUnitRunner"


# instance fields
.field private arguments:Landroid/os/Bundle;

.field private instrumentationResultPrinter:Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

.field private orchestratorListener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

.field private runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

.field private usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 265
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;-><init>()V

    .line 270
    new-instance v0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->instrumentationResultPrinter:Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    return-void
.end method

.method private addCoverageListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .registers 5
    .param p1, "args"    # Landroidx/test/internal/runner/RunnerArgs;
    .param p2, "builder"    # Landroidx/test/internal/runner/TestExecutor$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 497
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->codeCoverage:Z

    if-eqz v0, :cond_e

    .line 498
    new-instance v0, Landroidx/test/internal/runner/listener/CoverageListener;

    iget-object v1, p1, Landroidx/test/internal/runner/RunnerArgs;->codeCoveragePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/listener/CoverageListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 500
    :cond_e
    return-void
.end method

.method private addDelayListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .registers 5
    .param p1, "args"    # Landroidx/test/internal/runner/RunnerArgs;
    .param p2, "builder"    # Landroidx/test/internal/runner/TestExecutor$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 504
    iget v0, p1, Landroidx/test/internal/runner/RunnerArgs;->delayInMillis:I

    if-lez v0, :cond_f

    .line 505
    new-instance v0, Landroidx/test/internal/runner/listener/DelayInjector;

    iget v1, p1, Landroidx/test/internal/runner/RunnerArgs;->delayInMillis:I

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/listener/DelayInjector;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_23

    .line 506
    :cond_f
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->logOnly:Z

    if-eqz v0, :cond_23

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_23

    .line 509
    new-instance v0, Landroidx/test/internal/runner/listener/DelayInjector;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/listener/DelayInjector;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 511
    :cond_23
    :goto_23
    return-void
.end method

.method private addListenersFromArg(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .registers 5
    .param p1, "args"    # Landroidx/test/internal/runner/RunnerArgs;
    .param p2, "builder"    # Landroidx/test/internal/runner/TestExecutor$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 514
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    .line 515
    .local v1, "listener":Lorg/junit/runner/notification/RunListener;
    invoke-virtual {p2, v1}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 516
    .end local v1    # "listener":Lorg/junit/runner/notification/RunListener;
    goto :goto_6

    .line 517
    :cond_16
    return-void
.end method

.method private addListenersLegacyOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .registers 6
    .param p1, "args"    # Landroidx/test/internal/runner/RunnerArgs;
    .param p2, "builder"    # Landroidx/test/internal/runner/TestExecutor$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 425
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->logOnly:Z

    if-eqz v0, :cond_c

    .line 428
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_48

    .line 429
    :cond_c
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->suiteAssignment:Z

    if-eqz v0, :cond_19

    .line 430
    new-instance v0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_48

    .line 432
    :cond_19
    new-instance v0, Landroidx/test/internal/runner/listener/LogRunListener;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/LogRunListener;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 433
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->orchestratorListener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    if-eqz v0, :cond_29

    .line 434
    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_30

    .line 436
    :cond_29
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 438
    :goto_30
    new-instance v0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-direct {v1, p0}, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    new-instance v2, Landroidx/test/runner/AndroidJUnitRunner$1;

    invoke-direct {v2, p0}, Landroidx/test/runner/AndroidJUnitRunner$1;-><init>(Landroidx/test/runner/AndroidJUnitRunner;)V

    invoke-direct {v0, p0, v1, v2}, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;-><init>(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 450
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addDelayListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 451
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addCoverageListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 453
    :goto_48
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersFromArg(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 454
    return-void
.end method

.method private addListenersNewOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .registers 6
    .param p1, "args"    # Landroidx/test/internal/runner/RunnerArgs;
    .param p2, "builder"    # Landroidx/test/internal/runner/TestExecutor$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 460
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersFromArg(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 461
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->logOnly:Z

    if-eqz v0, :cond_f

    .line 464
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_4b

    .line 465
    :cond_f
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->suiteAssignment:Z

    if-eqz v0, :cond_1c

    .line 466
    new-instance v0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_4b

    .line 468
    :cond_1c
    new-instance v0, Landroidx/test/internal/runner/listener/LogRunListener;

    invoke-direct {v0}, Landroidx/test/internal/runner/listener/LogRunListener;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 469
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addDelayListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 470
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addCoverageListener(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 471
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->orchestratorListener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    if-eqz v0, :cond_32

    .line 472
    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    goto :goto_39

    .line 474
    :cond_32
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 476
    :goto_39
    new-instance v0, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-direct {v1, p0}, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    new-instance v2, Landroidx/test/runner/AndroidJUnitRunner$2;

    invoke-direct {v2, p0}, Landroidx/test/runner/AndroidJUnitRunner$2;-><init>(Landroidx/test/runner/AndroidJUnitRunner;)V

    invoke-direct {v0, p0, v1, v2}, Landroidx/test/internal/runner/listener/ActivityFinisherRunListener;-><init>(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroidx/test/internal/runner/TestExecutor$Builder;->addRunListener(Lorg/junit/runner/notification/RunListener;)Landroidx/test/internal/runner/TestExecutor$Builder;

    .line 489
    :goto_4b
    return-void
.end method

.method private addScreenCaptureProcessors(Landroidx/test/internal/runner/RunnerArgs;)V
    .registers 4
    .param p1, "args"    # Landroidx/test/internal/runner/RunnerArgs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 492
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/test/internal/runner/RunnerArgs;->screenCaptureProcessors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Landroidx/test/runner/screenshot/Screenshot;->addScreenCaptureProcessors(Ljava/util/Set;)V

    .line 494
    return-void
.end method

.method private getArguments()Landroid/os/Bundle;
    .registers 2

    .line 348
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method private parseRunnerArgs(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 339
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs$Builder;

    invoke-direct {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->fromManifest(Landroid/app/Instrumentation;)Landroidx/test/internal/runner/RunnerArgs$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->fromBundle(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/RunnerArgs$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->build()Landroidx/test/internal/runner/RunnerArgs;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    .line 340
    return-void
.end method

.method private registerUserTracker()V
    .registers 4

    .line 551
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    .line 552
    .local v0, "targetContext":Landroid/content/Context;
    if-eqz v0, :cond_14

    .line 553
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    new-instance v2, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    invoke-direct {v2, v0}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    invoke-virtual {v2}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->buildIfPossible()Landroidx/test/internal/runner/tracker/UsageTracker;

    move-result-object v2

    .line 553
    invoke-virtual {v1, v2}, Landroidx/test/runner/UsageTrackerFacilitator;->registerUsageTracker(Landroidx/test/internal/runner/tracker/UsageTracker;)V

    .line 556
    :cond_14
    return-void
.end method

.method private waitForDebugger(Landroidx/test/internal/runner/RunnerArgs;)Z
    .registers 3
    .param p1, "arguments"    # Landroidx/test/internal/runner/RunnerArgs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 316
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->debug:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->listTestsForOrchestrator:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method final addListeners(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .registers 4
    .param p1, "args"    # Landroidx/test/internal/runner/RunnerArgs;
    .param p2, "builder"    # Landroidx/test/internal/runner/TestExecutor$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "builder"
        }
    .end annotation

    .line 417
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->newRunListenerMode:Z

    if-eqz v0, :cond_8

    .line 418
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersNewOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    goto :goto_b

    .line 420
    :cond_8
    invoke-direct {p0, p1, p2}, Landroidx/test/runner/AndroidJUnitRunner;->addListenersLegacyOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 422
    :goto_b
    return-void
.end method

.method buildRequest(Landroidx/test/internal/runner/RunnerArgs;Landroid/os/Bundle;)Lorg/junit/runner/Request;
    .registers 5
    .param p1, "runnerArgs"    # Landroidx/test/internal/runner/RunnerArgs;
    .param p2, "bundleArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnerArgs",
            "bundleArgs"
        }
    .end annotation

    .line 533
    invoke-virtual {p0, p0, p2}, Landroidx/test/runner/AndroidJUnitRunner;->createTestRequestBuilder(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/TestRequestBuilder;

    move-result-object v0

    .line 534
    .local v0, "builder":Landroidx/test/internal/runner/TestRequestBuilder;
    iget-object v1, p1, Landroidx/test/internal/runner/RunnerArgs;->classpathToScan:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addPathsToScan(Ljava/lang/Iterable;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 535
    iget-object v1, p1, Landroidx/test/internal/runner/RunnerArgs;->classpathToScan:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 541
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addPathToScan(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 543
    :cond_1c
    invoke-virtual {v0, p1}, Landroidx/test/internal/runner/TestRequestBuilder;->addFromRunnerArgs(Landroidx/test/internal/runner/RunnerArgs;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 545
    invoke-direct {p0}, Landroidx/test/runner/AndroidJUnitRunner;->registerUserTracker()V

    .line 547
    invoke-virtual {v0}, Landroidx/test/internal/runner/TestRequestBuilder;->build()Lorg/junit/runner/Request;

    move-result-object v1

    return-object v1
.end method

.method createTestRequestBuilder(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 4
    .param p1, "instr"    # Landroid/app/Instrumentation;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instr",
            "arguments"
        }
    .end annotation

    .line 560
    new-instance v0, Landroidx/test/internal/runner/TestRequestBuilder;

    invoke-direct {v0, p1, p2}, Landroidx/test/internal/runner/TestRequestBuilder;-><init>(Landroid/app/Instrumentation;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public finish(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "results"
        }
    .end annotation

    .line 407
    const-string v0, "AndroidJUnitRunner"

    :try_start_2
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    const-string v2, "1.2.0"

    invoke-virtual {v1, v0, v2}, Landroidx/test/runner/UsageTrackerFacilitator;->trackUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    invoke-virtual {v1}, Landroidx/test/runner/UsageTrackerFacilitator;->sendUsages()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_e} :catch_f

    .line 411
    goto :goto_15

    .line 409
    :catch_f
    move-exception v1

    .line 410
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v2, "Failed to send analytics."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :goto_15
    invoke-super {p0, p1, p2}, Landroidx/test/runner/MonitoringInstrumentation;->finish(ILandroid/os/Bundle;)V

    .line 413
    return-void
.end method

.method getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;
    .registers 2

    .line 353
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->instrumentationResultPrinter:Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner;->arguments:Landroid/os/Bundle;

    .line 279
    invoke-direct {p0, p1}, Landroidx/test/runner/AndroidJUnitRunner;->parseRunnerArgs(Landroid/os/Bundle;)V

    .line 281
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {p0, v0}, Landroidx/test/runner/AndroidJUnitRunner;->waitForDebugger(Landroidx/test/internal/runner/RunnerArgs;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 282
    const-string v0, "AndroidJUnitRunner"

    const-string v1, "Waiting for debugger to connect..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 284
    const-string v1, "Debugger connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1c
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs;->targetProcess:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/test/runner/AndroidJUnitRunner;->isPrimaryInstrProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 289
    new-instance v0, Landroidx/test/runner/UsageTrackerFacilitator;

    iget-object v1, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {v0, v1}, Landroidx/test/runner/UsageTrackerFacilitator;-><init>(Landroidx/test/internal/runner/RunnerArgs;)V

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    goto :goto_38

    .line 291
    :cond_30
    new-instance v0, Landroidx/test/runner/UsageTrackerFacilitator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/runner/UsageTrackerFacilitator;-><init>(Z)V

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->usageTrackerFacilitator:Landroidx/test/runner/UsageTrackerFacilitator;

    .line 294
    :goto_38
    invoke-super {p0, p1}, Landroidx/test/runner/MonitoringInstrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs;->appListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 297
    .local v1, "listener":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    invoke-static {}, Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitor;->addLifecycleCallback(Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;)V

    .line 298
    .end local v1    # "listener":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    goto :goto_43

    .line 300
    :cond_57
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {p0, v0}, Landroidx/test/runner/AndroidJUnitRunner;->addScreenCaptureProcessors(Landroidx/test/internal/runner/RunnerArgs;)V

    .line 302
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs;->orchestratorService:Ljava/lang/String;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs;->targetProcess:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/test/runner/AndroidJUnitRunner;->isPrimaryInstrProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 305
    new-instance v0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    invoke-direct {v0, p0}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;-><init>(Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;)V

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->orchestratorListener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    .line 306
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->connect(Landroid/content/Context;)V

    goto :goto_7e

    .line 310
    :cond_7b
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->start()V

    .line 312
    :goto_7e
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "e"
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getInstrumentationResultPrinter()Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;

    move-result-object v0

    .line 522
    .local v0, "instResultPrinter":Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;
    if-eqz v0, :cond_9

    .line 524
    invoke-virtual {v0, p2}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->reportProcessCrash(Ljava/lang/Throwable;)V

    .line 526
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/test/runner/MonitoringInstrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    return v1
.end method

.method public onOrchestratorConnect()V
    .registers 1

    .line 327
    invoke-virtual {p0}, Landroidx/test/runner/AndroidJUnitRunner;->start()V

    .line 328
    return-void
.end method

.method public onStart()V
    .registers 8

    .line 358
    const-string v0, "androidx.test.espresso.web.bridge.JavaScriptBridge"

    invoke-virtual {p0, v0}, Landroidx/test/runner/AndroidJUnitRunner;->setJsBridgeClassName(Ljava/lang/String;)V

    .line 359
    invoke-super {p0}, Landroidx/test/runner/MonitoringInstrumentation;->onStart()V

    .line 367
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-boolean v0, v0, Landroidx/test/internal/runner/RunnerArgs;->listTestsForOrchestrator:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs;->targetProcess:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/test/runner/AndroidJUnitRunner;->isPrimaryInstrProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 368
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/test/runner/AndroidJUnitRunner;->buildRequest(Landroidx/test/internal/runner/RunnerArgs;Landroid/os/Bundle;)Lorg/junit/runner/Request;

    move-result-object v0

    .line 369
    .local v0, "testRequest":Lorg/junit/runner/Request;
    iget-object v2, p0, Landroidx/test/runner/AndroidJUnitRunner;->orchestratorListener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->addTests(Lorg/junit/runner/Description;)V

    .line 370
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1, v2}, Landroidx/test/runner/AndroidJUnitRunner;->finish(ILandroid/os/Bundle;)V

    .line 371
    return-void

    .line 374
    .end local v0    # "testRequest":Lorg/junit/runner/Request;
    :cond_39
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    if-eqz v0, :cond_4e

    .line 375
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v2, v2, Landroidx/test/internal/runner/RunnerArgs;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    iget-object v2, v2, Landroidx/test/internal/runner/RunnerArgs$TestArg;->methodName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/test/internal/util/ReflectionUtil;->reflectivelyInvokeRemoteMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_4e
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    iget-object v0, v0, Landroidx/test/internal/runner/RunnerArgs;->targetProcess:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/test/runner/AndroidJUnitRunner;->isPrimaryInstrProcess(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "AndroidJUnitRunner"

    if-nez v0, :cond_60

    .line 380
    const-string v0, "Runner is idle..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 384
    :cond_60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v0, "results":Landroid/os/Bundle;
    :try_start_65
    new-instance v3, Landroidx/test/internal/runner/TestExecutor$Builder;

    invoke-direct {v3, p0}, Landroidx/test/internal/runner/TestExecutor$Builder;-><init>(Landroid/app/Instrumentation;)V

    .line 388
    .local v3, "executorBuilder":Landroidx/test/internal/runner/TestExecutor$Builder;
    iget-object v4, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-virtual {p0, v4, v3}, Landroidx/test/runner/AndroidJUnitRunner;->addListeners(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V

    .line 390
    iget-object v4, p0, Landroidx/test/runner/AndroidJUnitRunner;->runnerArgs:Landroidx/test/internal/runner/RunnerArgs;

    invoke-direct {p0}, Landroidx/test/runner/AndroidJUnitRunner;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroidx/test/runner/AndroidJUnitRunner;->buildRequest(Landroidx/test/internal/runner/RunnerArgs;Landroid/os/Bundle;)Lorg/junit/runner/Request;

    move-result-object v4

    .line 392
    .local v4, "testRequest":Lorg/junit/runner/Request;
    invoke-virtual {v3}, Landroidx/test/internal/runner/TestExecutor$Builder;->build()Landroidx/test/internal/runner/TestExecutor;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/test/internal/runner/TestExecutor;->execute(Lorg/junit/runner/Request;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_81} :catch_83

    move-object v0, v2

    .line 400
    .end local v3    # "executorBuilder":Landroidx/test/internal/runner/TestExecutor$Builder;
    .end local v4    # "testRequest":Lorg/junit/runner/Request;
    goto :goto_af

    .line 394
    :catch_83
    move-exception v3

    .line 395
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "Fatal exception when running tests"

    .line 396
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "Fatal exception when running tests"

    invoke-static {v2, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    const-string v2, "Fatal exception when running tests\n"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a4

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_aa

    :cond_a4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 398
    :goto_aa
    const-string v5, "stream"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "msg":Ljava/lang/String;
    :goto_af
    invoke-virtual {p0, v1, v0}, Landroidx/test/runner/AndroidJUnitRunner;->finish(ILandroid/os/Bundle;)V

    .line 402
    return-void
.end method
