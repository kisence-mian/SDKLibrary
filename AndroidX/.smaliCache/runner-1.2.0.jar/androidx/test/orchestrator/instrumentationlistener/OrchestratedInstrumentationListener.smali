.class public final Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;
.super Lorg/junit/runner/notification/RunListener;
.source "OrchestratedInstrumentationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;
    }
.end annotation


# static fields
.field private static final ODO_SERVICE_PACKAGE:Ljava/lang/String; = "androidx.test.orchestrator.OrchestratorService"

.field private static final ORCHESTRATOR_PACKAGE:Ljava/lang/String; = "androidx.test.orchestrator"

.field private static final TAG:Ljava/lang/String; = "OrchestrationListener"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final listener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;

.field odoCallback:Landroidx/test/orchestrator/callback/OrchestratorCallback;


# direct methods
.method public constructor <init>(Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 66
    new-instance v0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$1;

    invoke-direct {v0, p0}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$1;-><init>(Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;)V

    iput-object v0, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->connection:Landroid/content/ServiceConnection;

    .line 63
    iput-object p1, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->listener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;)Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;
    .registers 2
    .param p0, "x0"    # Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;

    .line 43
    iget-object v0, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->listener:Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener$OnConnectListener;

    return-object v0
.end method


# virtual methods
.method public addTest(Ljava/lang/String;)V
    .registers 5
    .param p1, "test"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->odoCallback:Landroidx/test/orchestrator/callback/OrchestratorCallback;

    if-eqz v0, :cond_11

    .line 190
    :try_start_4
    invoke-interface {v0, p1}, Landroidx/test/orchestrator/callback/OrchestratorCallback;->addTest(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 193
    goto :goto_10

    .line 191
    :catch_8
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OrchestrationListener"

    const-string v2, "Unable to send test"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void

    .line 186
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to send test, callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTests(Lorg/junit/runner/Description;)V
    .registers 6
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    return-void

    .line 175
    :cond_7
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 176
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->addTest(Ljava/lang/String;)V

    goto :goto_5b

    .line 178
    :cond_43
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    .line 179
    .local v1, "child":Lorg/junit/runner/Description;
    invoke-virtual {p0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->addTests(Lorg/junit/runner/Description;)V

    .line 180
    .end local v1    # "child":Lorg/junit/runner/Description;
    goto :goto_4b

    .line 182
    :cond_5b
    :goto_5b
    return-void
.end method

.method public connect(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.test.orchestrator.OrchestratorService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "androidx.test.orchestrator"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 89
    return-void

    .line 87
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot connect to androidx.test.orchestrator.OrchestratorService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendTestNotification(Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->odoCallback:Landroidx/test/orchestrator/callback/OrchestratorCallback;

    if-eqz v0, :cond_13

    .line 165
    invoke-virtual {p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestEvent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->odoCallback:Landroidx/test/orchestrator/callback/OrchestratorCallback;

    invoke-interface {v0, p2}, Landroidx/test/orchestrator/callback/OrchestratorCallback;->sendTestNotification(Landroid/os/Bundle;)V

    .line 168
    return-void

    .line 163
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to send notification, callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .registers 5
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 143
    :try_start_0
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 144
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getBundleFromFailure(Lorg/junit/runner/notification/Failure;)Landroid/os/Bundle;

    move-result-object v1

    .line 143
    invoke-virtual {p0, v0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->sendTestNotification(Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 148
    nop

    .line 149
    return-void

    .line 145
    :catch_b
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to send TestAssumptionFailure status, terminating"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .registers 5
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 134
    :try_start_0
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getBundleFromFailure(Lorg/junit/runner/notification/Failure;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->sendTestNotification(Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 137
    nop

    .line 138
    return-void

    .line 135
    :catch_b
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to send TestFailure status, terminating"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 124
    :try_start_0
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 125
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getBundleFromDescription(Lorg/junit/runner/Description;)Landroid/os/Bundle;

    move-result-object v1

    .line 124
    invoke-virtual {p0, v0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->sendTestNotification(Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 128
    goto :goto_12

    .line 126
    :catch_a
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OrchestrationListener"

    const-string v2, "Unable to send TestFinished Status to Orchestrator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 154
    :try_start_0
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_IGNORED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 155
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getBundleFromDescription(Lorg/junit/runner/Description;)Landroid/os/Bundle;

    move-result-object v1

    .line 154
    invoke-virtual {p0, v0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->sendTestNotification(Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 158
    goto :goto_12

    .line 156
    :catch_a
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OrchestrationListener"

    const-string v2, "Unable to send TestIgnored Status to Orchestrator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public testRunFinished(Lorg/junit/runner/Result;)V
    .registers 5
    .param p1, "result"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 104
    :try_start_0
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 105
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getBundleFromResult(Lorg/junit/runner/Result;)Landroid/os/Bundle;

    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->sendTestNotification(Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 108
    goto :goto_12

    .line 106
    :catch_a
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OrchestrationListener"

    const-string v2, "Unable to send TestRunFinished Status to Orchestrator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 94
    :try_start_0
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 95
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getBundleFromDescription(Lorg/junit/runner/Description;)Landroid/os/Bundle;

    move-result-object v1

    .line 94
    invoke-virtual {p0, v0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->sendTestNotification(Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 98
    goto :goto_12

    .line 96
    :catch_a
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OrchestrationListener"

    const-string v2, "Unable to send TestRunStarted Status to Orchestrator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 114
    :try_start_0
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 115
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getBundleFromDescription(Lorg/junit/runner/Description;)Landroid/os/Bundle;

    move-result-object v1

    .line 114
    invoke-virtual {p0, v0, v1}, Landroidx/test/orchestrator/instrumentationlistener/OrchestratedInstrumentationListener;->sendTestNotification(Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 118
    goto :goto_12

    .line 116
    :catch_a
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OrchestrationListener"

    const-string v2, "Unable to send TestStarted Status to Orchestrator"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method
