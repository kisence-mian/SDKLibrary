.class Landroidx/test/runner/MonitoringInstrumentation$5;
.super Ljava/lang/Object;
.source "MonitoringInstrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/runner/MonitoringInstrumentation;->tryLoadingJsBridge(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/runner/MonitoringInstrumentation;

.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/test/runner/MonitoringInstrumentation;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/test/runner/MonitoringInstrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$className"
        }
    .end annotation

    .line 824
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation$5;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    iput-object p2, p0, Landroidx/test/runner/MonitoringInstrumentation$5;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 828
    :try_start_0
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$5;->val$className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 829
    .local v0, "jsBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "installBridge"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 830
    .local v1, "install":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation$5;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    # getter for: Landroidx/test/runner/MonitoringInstrumentation;->isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Landroidx/test/runner/MonitoringInstrumentation;->access$300(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1f} :catch_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1f} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1f} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1f} :catch_20

    .end local v0    # "jsBridge":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "install":Ljava/lang/reflect/Method;
    goto :goto_35

    .line 834
    :catch_20
    move-exception v0

    goto :goto_23

    :catch_22
    move-exception v0

    .line 835
    .local v0, "ite":Ljava/lang/ReflectiveOperationException;
    :goto_23
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "JSbridge is available at runtime, but calling it failed."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 832
    .end local v0    # "ite":Ljava/lang/ReflectiveOperationException;
    :catch_2b
    move-exception v0

    goto :goto_2e

    :catch_2d
    move-exception v0

    .line 833
    .local v0, "ignored":Ljava/lang/ReflectiveOperationException;
    :goto_2e
    const-string v1, "MonitoringInstr"

    const-string v2, "No JSBridge."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v0    # "ignored":Ljava/lang/ReflectiveOperationException;
    :goto_35
    nop

    .line 838
    return-void
.end method
