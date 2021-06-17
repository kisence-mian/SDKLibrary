.class Landroidx/test/internal/runner/AndroidRunnerBuilder;
.super Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;
.source "AndroidRunnerBuilder.java"


# instance fields
.field private final androidAnnotatedBuilder:Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;

.field private final androidJUnit3Builder:Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;

.field private final androidJUnit4Builder:Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;

.field private final androidSuiteBuilder:Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;

.field private final customRunnerBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredBuilder:Lorg/junit/internal/builders/IgnoredBuilder;


# direct methods
.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 5
    .param p1, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerParams"
        }
    .end annotation

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Landroidx/test/internal/runner/AndroidRunnerBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V
    .registers 5
    .param p1, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .param p2, "scanningPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "runnerParams",
            "scanningPath",
            "customRunnerBuilderClasses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;)V"
        }
    .end annotation

    .line 63
    .local p3, "customRunnerBuilderClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/test/internal/runner/AndroidRunnerBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V
    .registers 7
    .param p1, "suiteBuilder"    # Lorg/junit/runners/model/RunnerBuilder;
    .param p2, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .param p3, "scanningPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "suiteBuilder",
            "runnerParams",
            "scanningPath",
            "customRunnerBuilderClasses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/RunnerBuilder;",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;)V"
        }
    .end annotation

    .line 85
    .local p4, "customRunnerBuilderClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;-><init>(Z)V

    .line 86
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;

    invoke-direct {v0, p2, p3}, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidJUnit3Builder:Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;

    .line 87
    new-instance v0, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;

    invoke-direct {v0, p2, p3}, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidJUnit4Builder:Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;

    .line 88
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;

    invoke-direct {v0, p2}, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;)V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidSuiteBuilder:Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;

    .line 89
    new-instance v0, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;

    .line 90
    if-nez p1, :cond_1f

    move-object v1, p0

    goto :goto_20

    :cond_1f
    move-object v1, p1

    :goto_20
    invoke-direct {v0, v1, p2}, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;)V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidAnnotatedBuilder:Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;

    .line 91
    new-instance v0, Lorg/junit/internal/builders/IgnoredBuilder;

    invoke-direct {v0}, Lorg/junit/internal/builders/IgnoredBuilder;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->ignoredBuilder:Lorg/junit/internal/builders/IgnoredBuilder;

    .line 93
    invoke-direct {p0, p4}, Landroidx/test/internal/runner/AndroidRunnerBuilder;->instantiateRunnerBuilders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->customRunnerBuilders:Ljava/util/List;

    .line 94
    return-void
.end method

.method private instantiateRunnerBuilders(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customRunnerBuilderClasses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;"
        }
    .end annotation

    .line 105
    .local p1, "customRunnerBuilderClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;>;"
    const-string v0, ", make sure that it is a public concrete class with a public no-argument constructor"

    const-string v1, "Could not create instance of "

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "runnerBuilders":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/RunnerBuilder;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 108
    .local v4, "customRunnerBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;"
    const/4 v5, 0x0

    :try_start_1a
    new-array v6, v5, [Ljava/lang/Class;

    .line 109
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/junit/runners/model/RunnerBuilder;

    .line 110
    .local v5, "runnerBuilder":Lorg/junit/runners/model/RunnerBuilder;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/InstantiationException; {:try_start_1a .. :try_end_2b} :catch_ad
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_2b} :catch_83
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_2b} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_2b} :catch_2d

    .line 138
    nop

    .line 139
    .end local v4    # "customRunnerBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;"
    .end local v5    # "runnerBuilder":Lorg/junit/runners/model/RunnerBuilder;
    goto :goto_d

    .line 132
    .restart local v4    # "customRunnerBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;"
    :catch_2d
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", the constructor must not throw an exception"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 125
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_59
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x71

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 118
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_83
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x71

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 111
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_ad
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x71

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 140
    .end local v3    # "e":Ljava/lang/InstantiationException;
    .end local v4    # "customRunnerBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;"
    :cond_d7
    return-object v2
.end method


# virtual methods
.method protected annotatedBuilder()Lorg/junit/internal/builders/AnnotatedBuilder;
    .registers 2

    .line 168
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidAnnotatedBuilder:Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;

    return-object v0
.end method

.method protected ignoredBuilder()Lorg/junit/internal/builders/IgnoredBuilder;
    .registers 2

    .line 173
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->ignoredBuilder:Lorg/junit/internal/builders/IgnoredBuilder;

    return-object v0
.end method

.method protected junit3Builder()Lorg/junit/internal/builders/JUnit3Builder;
    .registers 2

    .line 163
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidJUnit3Builder:Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;

    return-object v0
.end method

.method protected junit4Builder()Lorg/junit/internal/builders/JUnit4Builder;
    .registers 2

    .line 158
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidJUnit4Builder:Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;

    return-object v0
.end method

.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 5
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
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 146
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->customRunnerBuilders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/RunnerBuilder;

    .line 147
    .local v1, "customRunnerBuilder":Lorg/junit/runners/model/RunnerBuilder;
    invoke-virtual {v1, p1}, Lorg/junit/runners/model/RunnerBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v2

    .line 148
    .local v2, "runner":Lorg/junit/runner/Runner;
    if-eqz v2, :cond_19

    .line 149
    return-object v2

    .line 151
    .end local v1    # "customRunnerBuilder":Lorg/junit/runners/model/RunnerBuilder;
    .end local v2    # "runner":Lorg/junit/runner/Runner;
    :cond_19
    goto :goto_6

    .line 153
    :cond_1a
    invoke-super {p0, p1}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    return-object v0
.end method

.method protected suiteMethodBuilder()Lorg/junit/runners/model/RunnerBuilder;
    .registers 2

    .line 178
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidRunnerBuilder;->androidSuiteBuilder:Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;

    return-object v0
.end method
