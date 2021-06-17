.class public final Landroidx/test/runner/AndroidJUnit4;
.super Lorg/junit/runner/Runner;
.source "AndroidJUnit4.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidJUnit4"


# instance fields
.field private final delegate:Lorg/junit/runner/Runner;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "klass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 59
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 60
    invoke-static {p1}, Landroidx/test/runner/AndroidJUnit4;->loadRunner(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 4
    .param p2, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "klass",
            "runnerParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 50
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 52
    new-instance v0, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;

    invoke-direct {v0, p1, p2}, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;-><init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V

    iput-object v0, p0, Landroidx/test/runner/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    .line 53
    return-void
.end method

.method private static loadRunner(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 64
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 65
    const-string v0, "android.junit.runner"

    const-string v1, "org.robolectric.RobolectricTestRunner"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "runnerClassName":Ljava/lang/String;
    invoke-static {p0, v0}, Landroidx/test/runner/AndroidJUnit4;->loadRunner(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Runner;

    move-result-object v1

    return-object v1
.end method

.method private static loadRunner(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Runner;
    .registers 9
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testClass",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 73
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, " could not be loaded"

    const-string v1, "AndroidJUnit4"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 74
    .local v4, "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/junit/runner/Runner;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_1e} :catch_53
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1e} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_1e} :catch_39
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_1e} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_1e} :catch_1f

    return-object v5

    .line 87
    .end local v4    # "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    :catch_1f
    move-exception v4

    .line 88
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 84
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2c
    move-exception v4

    .line 85
    .local v4, "e":Ljava/lang/InstantiationException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/InstantiationException;
    goto :goto_5f

    .line 81
    :catch_39
    move-exception v4

    .line 82
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_5f

    .line 78
    :catch_46
    move-exception v4

    .line 79
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_5f

    .line 75
    :catch_53
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_5f
    nop

    .line 91
    :goto_60
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 92
    const-string v2, "Attempted to use AndroidJUnit4 with standard JUnit runner and delegate runner \'%s\'could not be loaded. Check your build configuration."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .registers 3
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    check-cast v0, Lorg/junit/runner/manipulation/Filterable;

    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Filterable;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 110
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 99
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 3
    .param p1, "runNotifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runNotifier"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    invoke-virtual {v0, p1}, Lorg/junit/runner/Runner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    .line 105
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .registers 3
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sorter"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    check-cast v0, Lorg/junit/runner/manipulation/Sortable;

    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Sortable;->sort(Lorg/junit/runner/manipulation/Sorter;)V

    .line 115
    return-void
.end method
