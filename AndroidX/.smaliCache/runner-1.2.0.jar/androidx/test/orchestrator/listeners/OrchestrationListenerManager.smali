.class public final Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;
.super Ljava/lang/Object;
.source "OrchestrationListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    }
.end annotation


# static fields
.field public static final KEY_TEST_EVENT:Ljava/lang/String; = "TestEvent"

.field private static final TAG:Ljava/lang/String; = "ListenerManager"


# instance fields
.field private final instrumentation:Landroid/app/Instrumentation;

.field private lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/orchestrator/listeners/OrchestrationRunListener;",
            ">;"
        }
    .end annotation
.end field

.field private markTerminationAsFailure:Z


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .registers 4
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instrumentation"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    .line 55
    if-eqz p1, :cond_12

    .line 59
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->instrumentation:Landroid/app/Instrumentation;

    .line 60
    return-void

    .line 56
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Instrumentation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cacheStatus(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 110
    invoke-static {p1}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

    .line 113
    :cond_c
    const-string v0, "TestEvent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->valueOf(Ljava/lang/String;)Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    move-result-object v0

    .line 114
    .local v0, "status":Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$1;->$SwitchMap$androidx$test$orchestrator$listeners$OrchestrationListenerManager$TestEvent:[I

    invoke-virtual {v0}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_2e

    goto :goto_2d

    .line 125
    :pswitch_23
    iput-boolean v2, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    .line 126
    goto :goto_2d

    .line 121
    :pswitch_26
    iput-boolean v2, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    .line 122
    goto :goto_2d

    .line 117
    :pswitch_29
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    .line 118
    nop

    .line 130
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
    .end packed-switch
.end method

.method private handleNotificationForListener(Landroidx/test/orchestrator/listeners/OrchestrationRunListener;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "listener"    # Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "bundle"
        }
    .end annotation

    .line 134
    const-string v0, "TestEvent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->valueOf(Ljava/lang/String;)Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    move-result-object v0

    .line 136
    .local v0, "status":Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    sget-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$1;->$SwitchMap$androidx$test$orchestrator$listeners$OrchestrationListenerManager$TestEvent:[I

    invoke-virtual {v0}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    .line 166
    const-string v1, "ListenerManager"

    const-string v2, "Unknown notification type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 158
    :pswitch_1d
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testIgnored(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    .line 159
    goto :goto_55

    .line 154
    :pswitch_25
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getFailure(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableFailure;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testAssumptionFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V

    .line 155
    goto :goto_55

    .line 146
    :pswitch_2d
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testFinished(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    .line 147
    goto :goto_55

    .line 142
    :pswitch_35
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    .line 143
    goto :goto_55

    .line 162
    :pswitch_3d
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getResult(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableResult;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testRunFinished(Landroidx/test/orchestrator/junit/ParcelableResult;)V

    .line 163
    goto :goto_55

    .line 150
    :pswitch_45
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getFailure(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableFailure;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V

    .line 151
    goto :goto_55

    .line 138
    :pswitch_4d
    invoke-static {p2}, Landroidx/test/orchestrator/junit/BundleJUnitUtils;->getDescription(Landroid/os/Bundle;)Landroidx/test/orchestrator/junit/ParcelableDescription;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testRunStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    .line 139
    nop

    .line 168
    :goto_55
    return-void

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public addListener(Landroidx/test/orchestrator/listeners/OrchestrationRunListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p1, v0}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 64
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public handleNotification(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 102
    invoke-direct {p0, p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->cacheStatus(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;

    .line 104
    .local v1, "listener":Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
    invoke-direct {p0, v1, p1}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->handleNotificationForListener(Landroidx/test/orchestrator/listeners/OrchestrationRunListener;Landroid/os/Bundle;)V

    .line 105
    .end local v1    # "listener":Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
    goto :goto_14

    .line 106
    :cond_24
    return-void
.end method

.method public orchestrationRunStarted(I)V
    .registers 4
    .param p1, "testCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testCount"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;

    .line 70
    .local v1, "listener":Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
    invoke-virtual {v1, p1}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->orchestrationRunStarted(I)V

    .line 71
    .end local v1    # "listener":Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
    goto :goto_6

    .line 72
    :cond_16
    return-void
.end method

.method public testProcessFinished(Ljava/lang/String;)V
    .registers 9
    .param p1, "outputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFile"
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    if-eqz v0, :cond_4e

    .line 83
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;

    .line 84
    .local v1, "listener":Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
    new-instance v2, Landroidx/test/orchestrator/junit/ParcelableFailure;

    iget-object v3, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

    new-instance v4, Ljava/lang/Throwable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x38

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Test instrumentation process crashed. Check "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Landroidx/test/orchestrator/junit/ParcelableFailure;-><init>(Landroidx/test/orchestrator/junit/ParcelableDescription;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V

    .line 89
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

    invoke-virtual {v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->testFinished(Landroidx/test/orchestrator/junit/ParcelableDescription;)V

    .line 90
    .end local v1    # "listener":Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
    goto :goto_a

    .line 92
    :cond_4e
    return-void
.end method

.method public testProcessStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .registers 3
    .param p1, "description"    # Landroidx/test/orchestrator/junit/ParcelableDescription;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->lastDescription:Landroidx/test/orchestrator/junit/ParcelableDescription;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;->markTerminationAsFailure:Z

    .line 78
    return-void
.end method
