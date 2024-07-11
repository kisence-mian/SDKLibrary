.class public Landroidx/test/orchestrator/listeners/result/TestRunResult;
.super Ljava/lang/Object;
.source "TestRunResult.java"

# interfaces
.implements Landroidx/test/orchestrator/listeners/result/ITestRunListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private aggregateMetrics:Z

.field private elapsedTime:J

.field private isCountDirty:Z

.field private isRunComplete:Z

.field private runFailureError:Ljava/lang/String;

.field private runMetrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCounts:[I

.field private testResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            "Landroidx/test/orchestrator/listeners/result/TestResult;",
            ">;"
        }
    .end annotation
.end field

.field private testRunName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Landroidx/test/orchestrator/listeners/result/TestRunResult;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->LOG_TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    .line 47
    invoke-static {}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->values()[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->statusCounts:[I

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isCountDirty:Z

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->aggregateMetrics:Z

    .line 57
    const-string v0, "not started"

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testRunName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private addTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;)V
    .registers 4
    .param p1, "test"    # Landroidx/test/orchestrator/listeners/result/TestIdentifier;
    .param p2, "testResult"    # Landroidx/test/orchestrator/listeners/result/TestResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "testResult"
        }
    .end annotation

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isCountDirty:Z

    .line 168
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method private combineValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "existingValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "existingValue",
            "newValue"
        }
    .end annotation

    .line 245
    if-eqz p1, :cond_40

    .line 247
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 248
    .local v0, "existingLong":Ljava/lang/Long;
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 249
    .local v1, "newLong":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1f} :catch_20

    return-object v2

    .line 250
    .end local v0    # "existingLong":Ljava/lang/Long;
    .end local v1    # "newLong":Ljava/lang/Long;
    :catch_20
    move-exception v0

    .line 254
    :try_start_21
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 255
    .local v0, "existingDouble":Ljava/lang/Double;
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 256
    .local v1, "newDouble":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_3e} :catch_3f

    return-object v2

    .line 257
    .end local v0    # "existingDouble":Ljava/lang/Double;
    .end local v1    # "newDouble":Ljava/lang/Double;
    :catch_3f
    move-exception v0

    .line 262
    :cond_40
    return-object p2
.end method

.method private updateTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;Ljava/lang/String;)V
    .registers 8
    .param p1, "test"    # Landroidx/test/orchestrator/listeners/result/TestIdentifier;
    .param p2, "status"    # Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .param p3, "trace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "test",
            "status",
            "trace"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 173
    .local v0, "r":Landroidx/test/orchestrator/listeners/result/TestResult;
    if-nez v0, :cond_21

    .line 174
    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestRunResult;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "received test event without test start for %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v1, Landroidx/test/orchestrator/listeners/result/TestResult;

    invoke-direct {v1}, Landroidx/test/orchestrator/listeners/result/TestResult;-><init>()V

    move-object v0, v1

    .line 177
    :cond_21
    invoke-virtual {v0, p2}, Landroidx/test/orchestrator/listeners/result/TestResult;->setStatus(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 178
    invoke-virtual {v0, p3}, Landroidx/test/orchestrator/listeners/result/TestResult;->setStackTrace(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1, v0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->addTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;)V

    .line 180
    return-void
.end method


# virtual methods
.method public getCompletedTests()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 86
    .local v0, "completedTests":Ljava/util/Set;, "Ljava/util/Set<Landroidx/test/orchestrator/listeners/result/TestIdentifier;>;"
    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getTestResults()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    .local v2, "testEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/orchestrator/listeners/result/TestResult;

    invoke-virtual {v3}, Landroidx/test/orchestrator/listeners/result/TestResult;->getStatus()Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v3

    sget-object v4, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {v3, v4}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/orchestrator/listeners/result/TestIdentifier;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v2    # "testEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;>;"
    :cond_38
    goto :goto_11

    .line 91
    :cond_39
    return-object v0
.end method

.method public getElapsedTime()J
    .registers 3

    .line 146
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testRunName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumAllFailedTests()I
    .registers 2

    .line 141
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {p0, v0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTestsInState(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)I

    move-result v0

    return v0
.end method

.method public getNumCompleteTests()I
    .registers 3

    .line 131
    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTests()I

    move-result v0

    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {p0, v1}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTestsInState(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNumTests()I
    .registers 2

    .line 126
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getNumTestsInState(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)I
    .registers 8
    .param p1, "status"    # Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isCountDirty:Z

    if-eqz v0, :cond_39

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->statusCounts:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_10

    .line 113
    aput v3, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 116
    .end local v0    # "i":I
    :cond_10
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 117
    .local v1, "r":Landroidx/test/orchestrator/listeners/result/TestResult;
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->statusCounts:[I

    invoke-virtual {v1}, Landroidx/test/orchestrator/listeners/result/TestResult;->getStatus()Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ordinal()I

    move-result v4

    aget v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v4

    .line 118
    .end local v1    # "r":Landroidx/test/orchestrator/listeners/result/TestResult;
    goto :goto_1a

    .line 119
    :cond_37
    iput-boolean v3, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isCountDirty:Z

    .line 121
    :cond_39
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->statusCounts:[I

    invoke-virtual {p1}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getRunFailureMessage()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    return-object v0
.end method

.method public getRunMetrics()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    return-object v0
.end method

.method public getTestResults()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            "Landroidx/test/orchestrator/listeners/result/TestResult;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    return-object v0
.end method

.method public getTextSummary()Ljava/lang/String;
    .registers 11

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTests()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Total tests %d, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->values()[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v3, :cond_4b

    aget-object v6, v2, v5

    .line 274
    .local v6, "status":Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    invoke-virtual {p0, v6}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumTestsInState(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)I

    move-result v7

    .line 277
    .local v7, "count":I
    if-lez v7, :cond_48

    .line 278
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "%s %d, "

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v6    # "status":Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .end local v7    # "count":I
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 281
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasFailedTests()Z
    .registers 2

    .line 136
    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->getNumAllFailedTests()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRunComplete()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    return v0
.end method

.method public isRunFailure()Z
    .registers 2

    .line 96
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setAggregateMetrics(Z)V
    .registers 2
    .param p1, "metricAggregation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metricAggregation"
        }
    .end annotation

    .line 61
    iput-boolean p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->aggregateMetrics:Z

    .line 62
    return-void
.end method

.method public setRunComplete(Z)V
    .registers 2
    .param p1, "runComplete"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runComplete"
        }
    .end annotation

    .line 105
    iput-boolean p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    .line 106
    return-void
.end method

.method public testAssumptionFailure(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/lang/String;)V
    .registers 4
    .param p1, "test"    # Landroidx/test/orchestrator/listeners/result/TestIdentifier;
    .param p2, "trace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "trace"
        }
    .end annotation

    .line 189
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-direct {p0, p1, v0, p2}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->updateTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public testEnded(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/util/Map;)V
    .registers 6
    .param p1, "test"    # Landroidx/test/orchestrator/listeners/result/TestIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "testMetrics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p2, "testMetrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 200
    .local v0, "result":Landroidx/test/orchestrator/listeners/result/TestResult;
    if-nez v0, :cond_10

    .line 201
    new-instance v1, Landroidx/test/orchestrator/listeners/result/TestResult;

    invoke-direct {v1}, Landroidx/test/orchestrator/listeners/result/TestResult;-><init>()V

    move-object v0, v1

    .line 203
    :cond_10
    invoke-virtual {v0}, Landroidx/test/orchestrator/listeners/result/TestResult;->getStatus()Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    move-result-object v1

    sget-object v2, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 204
    sget-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->PASSED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {v0, v1}, Landroidx/test/orchestrator/listeners/result/TestResult;->setStatus(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 206
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult;->setEndTime(J)V

    .line 207
    invoke-virtual {v0, p2}, Landroidx/test/orchestrator/listeners/result/TestResult;->setMetrics(Ljava/util/Map;)V

    .line 208
    invoke-direct {p0, p1, v0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->addTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;)V

    .line 209
    return-void
.end method

.method public testFailed(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/lang/String;)V
    .registers 4
    .param p1, "test"    # Landroidx/test/orchestrator/listeners/result/TestIdentifier;
    .param p2, "trace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "trace"
        }
    .end annotation

    .line 184
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-direct {p0, p1, v0, p2}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->updateTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public testIgnored(Landroidx/test/orchestrator/listeners/result/TestIdentifier;)V
    .registers 4
    .param p1, "test"    # Landroidx/test/orchestrator/listeners/result/TestIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 194
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->IGNORED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->updateTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public testRunEnded(JLjava/util/Map;)V
    .registers 10
    .param p1, "elapsedTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elapsedTime",
            "runMetrics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p3, "runMetrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->aggregateMetrics:Z

    if-eqz v0, :cond_3b

    .line 225
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 226
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, "existingValue":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->combineValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "combinedValue":Ljava/lang/String;
    iget-object v4, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "existingValue":Ljava/lang/String;
    .end local v3    # "combinedValue":Ljava/lang/String;
    goto :goto_c

    :cond_3a
    goto :goto_40

    .line 231
    :cond_3b
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runMetrics:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 233
    :goto_40
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    .line 235
    return-void
.end method

.method public testRunFailed(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public testRunStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "runName"    # Ljava/lang/String;
    .param p2, "testCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runName",
            "testCount"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->testRunName:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->runFailureError:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public testRunStopped(J)V
    .registers 5
    .param p1, "elapsedTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elapsedTime"
        }
    .end annotation

    .line 218
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->elapsedTime:J

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/orchestrator/listeners/result/TestRunResult;->isRunComplete:Z

    .line 220
    return-void
.end method

.method public testStarted(Landroidx/test/orchestrator/listeners/result/TestIdentifier;)V
    .registers 3
    .param p1, "test"    # Landroidx/test/orchestrator/listeners/result/TestIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 163
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult;

    invoke-direct {v0}, Landroidx/test/orchestrator/listeners/result/TestResult;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/test/orchestrator/listeners/result/TestRunResult;->addTestResult(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Landroidx/test/orchestrator/listeners/result/TestResult;)V

    .line 164
    return-void
.end method
