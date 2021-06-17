.class public final Landroidx/test/ext/junit/runners/AndroidJUnit4;
.super Lorg/junit/runner/Runner;
.source "AndroidJUnit4.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


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

    .line 45
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 46
    invoke-static {p1}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->loadRunner(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    .line 47
    return-void
.end method

.method private static getRunnerClassName()Ljava/lang/String;
    .registers 3

    .line 55
    const-string v0, "android.junit.runner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "runnerClassName":Ljava/lang/String;
    if-nez v0, :cond_21

    .line 58
    const-string v1, "java.runtime.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 59
    const-string v1, "androidx.test.internal.runner.junit4.AndroidJUnit4ClassRunner"

    return-object v1

    .line 61
    :cond_1e
    const-string v1, "org.robolectric.RobolectricTestRunner"

    return-object v1

    .line 64
    :cond_21
    return-object v0
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

    .line 50
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->getRunnerClassName()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "runnerClassName":Ljava/lang/String;
    invoke-static {p0, v0}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->loadRunner(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Runner;

    move-result-object v1

    return-object v1
.end method

.method private static loadRunner(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Runner;
    .registers 7
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

    .line 71
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Runner;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_25
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_1a} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    .line 81
    .end local v0    # "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    :catch_1b
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p1, v0}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    .line 79
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_20
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-static {p1, v0}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_33

    .line 77
    :catch_25
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {p1, v0}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_33

    .line 75
    :catch_2a
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {p1, v0}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_33

    .line 73
    :catch_2f
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p1, v0}, Landroidx/test/ext/junit/runners/AndroidJUnit4;->throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_33
    nop

    .line 84
    :goto_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwInitializationError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "delegateRunner"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delegateRunner",
            "cause"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 92
    const-string v3, "Delegate runner \'%s\' for AndroidJUnit4 could not be loaded."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    check-cast v0, Lorg/junit/runner/manipulation/Filterable;

    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Filterable;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 110
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 99
    iget-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

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
    iget-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

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
    iget-object v0, p0, Landroidx/test/ext/junit/runners/AndroidJUnit4;->delegate:Lorg/junit/runner/Runner;

    check-cast v0, Lorg/junit/runner/manipulation/Sortable;

    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Sortable;->sort(Lorg/junit/runner/manipulation/Sorter;)V

    .line 115
    return-void
.end method
