.class Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$1;
.super Ljava/lang/Object;
.source "OrchestratedInstrumentationListener.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;


# direct methods
.method constructor <init>(Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$1;->this$0:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "service"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$1;->this$0:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    invoke-static {p2}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/test/orchestrator/callback/OrchestratorCallback;

    move-result-object v1

    iput-object v1, v0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->odoCallback:Landroidx/test/orchestrator/callback/OrchestratorCallback;

    .line 71
    const-string v0, "OrchestrationListener"

    const-string v1, "OrchestrationListener connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$1;->this$0:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    # getter for: Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->listener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;
    invoke-static {v0}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->access$000(Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;)Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;->onOrchestratorConnect()V

    .line 73
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$1;->this$0:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->odoCallback:Landroidx/test/orchestrator/callback/OrchestratorCallback;

    .line 78
    const-string v0, "OrchestrationListener"

    const-string v1, "OrchestrationListener disconnected from service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method
