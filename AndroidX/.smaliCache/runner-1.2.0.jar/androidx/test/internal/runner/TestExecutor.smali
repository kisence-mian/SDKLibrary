.class public final Landroidx/test/internal/runner/TestExecutor;
.super Ljava/lang/Object;
.source "TestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/TestExecutor$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestExecutor"


# instance fields
.field private final instr:Landroid/app/Instrumentation;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/internal/runner/TestExecutor$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroidx/test/internal/runner/TestExecutor$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    # getter for: Landroidx/test/internal/runner/TestExecutor$Builder;->listeners:Ljava/util/List;
    invoke-static {p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->access$000(Landroidx/test/internal/runner/TestExecutor$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    .line 46
    # getter for: Landroidx/test/internal/runner/TestExecutor$Builder;->instr:Landroid/app/Instrumentation;
    invoke-static {p1}, Landroidx/test/internal/runner/TestExecutor$Builder;->access$100(Landroidx/test/internal/runner/TestExecutor$Builder;)Landroid/app/Instrumentation;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/TestExecutor;->instr:Landroid/app/Instrumentation;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/TestExecutor$Builder;Landroidx/test/internal/runner/TestExecutor$1;)V
    .registers 3
    .param p1, "x0"    # Landroidx/test/internal/runner/TestExecutor$Builder;
    .param p2, "x1"    # Landroidx/test/internal/runner/TestExecutor$1;

    .line 38
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestExecutor;-><init>(Landroidx/test/internal/runner/TestExecutor$Builder;)V

    return-void
.end method

.method private reportRunEnded(Ljava/util/List;Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V
    .registers 8
    .param p2, "summaryWriter"    # Ljava/io/PrintStream;
    .param p3, "resultBundle"    # Landroid/os/Bundle;
    .param p4, "jUnitResults"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "listeners",
            "summaryWriter",
            "resultBundle",
            "jUnitResults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;",
            "Ljava/io/PrintStream;",
            "Landroid/os/Bundle;",
            "Lorg/junit/runner/Result;",
            ")V"
        }
    .end annotation

    .line 89
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    .line 90
    .local v1, "listener":Lorg/junit/runner/notification/RunListener;
    instance-of v2, v1, Landroidx/test/internal/runner/listener/InstrumentationRunListener;

    if-eqz v2, :cond_1a

    .line 91
    move-object v2, v1

    check-cast v2, Landroidx/test/internal/runner/listener/InstrumentationRunListener;

    .line 92
    invoke-virtual {v2, p2, p3, p4}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->instrumentationRunFinished(Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V

    .line 94
    .end local v1    # "listener":Lorg/junit/runner/notification/RunListener;
    :cond_1a
    goto :goto_4

    .line 95
    :cond_1b
    return-void
.end method

.method private setUpListeners(Lorg/junit/runner/JUnitCore;)V
    .registers 7
    .param p1, "testRunner"    # Lorg/junit/runner/JUnitCore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testRunner"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/notification/RunListener;

    .line 76
    .local v1, "listener":Lorg/junit/runner/notification/RunListener;
    const-string v2, "Adding listener "

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_2b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_31
    const-string v3, "TestExecutor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1, v1}, Lorg/junit/runner/JUnitCore;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 78
    instance-of v2, v1, Landroidx/test/internal/runner/listener/InstrumentationRunListener;

    if-eqz v2, :cond_45

    .line 79
    move-object v2, v1

    check-cast v2, Landroidx/test/internal/runner/listener/InstrumentationRunListener;

    iget-object v3, p0, Landroidx/test/internal/runner/TestExecutor;->instr:Landroid/app/Instrumentation;

    invoke-virtual {v2, v3}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 81
    .end local v1    # "listener":Lorg/junit/runner/notification/RunListener;
    :cond_45
    goto :goto_6

    .line 82
    :cond_46
    return-void
.end method


# virtual methods
.method public execute(Lorg/junit/runner/Request;)Landroid/os/Bundle;
    .registers 14
    .param p1, "request"    # Lorg/junit/runner/Request;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 51
    const-string v0, "\n%s"

    const-string v1, "stream"

    const-string v2, "Fatal exception when running tests"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v3, "resultBundle":Landroid/os/Bundle;
    new-instance v4, Lorg/junit/runner/Result;

    invoke-direct {v4}, Lorg/junit/runner/Result;-><init>()V

    .line 54
    .local v4, "junitResults":Lorg/junit/runner/Result;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_12
    new-instance v7, Lorg/junit/runner/JUnitCore;

    invoke-direct {v7}, Lorg/junit/runner/JUnitCore;-><init>()V

    .line 55
    .local v7, "testRunner":Lorg/junit/runner/JUnitCore;
    invoke-direct {p0, v7}, Landroidx/test/internal/runner/TestExecutor;->setUpListeners(Lorg/junit/runner/JUnitCore;)V

    .line 56
    invoke-virtual {v7, p1}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_41

    move-object v4, v2

    .line 62
    .end local v7    # "testRunner":Lorg/junit/runner/JUnitCore;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v2, "summaryStream":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v7, "summaryWriter":Ljava/io/PrintStream;
    iget-object v8, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    invoke-direct {p0, v8, v7, v3, v4}, Landroidx/test/internal/runner/TestExecutor;->reportRunEnded(Ljava/util/List;Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V

    .line 66
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 67
    new-array v5, v5, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_3d
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v2    # "summaryStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "summaryWriter":Ljava/io/PrintStream;
    goto :goto_7a

    .line 57
    :catchall_41
    move-exception v7

    .line 58
    .local v7, "t":Ljava/lang/Throwable;
    move-object v8, v2

    .line 59
    .local v8, "msg":Ljava/lang/String;
    :try_start_43
    const-string v9, "TestExecutor"

    invoke-static {v9, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-virtual {v4}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lorg/junit/runner/notification/Failure;

    new-array v11, v6, [Ljava/lang/annotation/Annotation;

    invoke-static {v2, v11}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v2

    invoke-direct {v10, v2, v7}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_7b

    .line 62
    nop

    .end local v7    # "t":Ljava/lang/Throwable;
    .end local v8    # "msg":Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .restart local v2    # "summaryStream":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v7, "summaryWriter":Ljava/io/PrintStream;
    iget-object v8, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    invoke-direct {p0, v8, v7, v3, v4}, Landroidx/test/internal/runner/TestExecutor;->reportRunEnded(Ljava/util/List;Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V

    .line 66
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 67
    new-array v5, v5, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 70
    .end local v2    # "summaryStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "summaryWriter":Ljava/io/PrintStream;
    :goto_7a
    return-object v3

    .line 62
    :catchall_7b
    move-exception v2

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v7, "summaryStream":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/PrintStream;

    invoke-direct {v8, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v8, "summaryWriter":Ljava/io/PrintStream;
    iget-object v9, p0, Landroidx/test/internal/runner/TestExecutor;->listeners:Ljava/util/List;

    invoke-direct {p0, v9, v8, v3, v4}, Landroidx/test/internal/runner/TestExecutor;->reportRunEnded(Ljava/util/List;Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V

    .line 66
    invoke-virtual {v8}, Ljava/io/PrintStream;->close()V

    .line 67
    new-array v5, v5, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v7    # "summaryStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "summaryWriter":Ljava/io/PrintStream;
    goto :goto_9f

    :goto_9e
    throw v2

    :goto_9f
    goto :goto_9e
.end method
