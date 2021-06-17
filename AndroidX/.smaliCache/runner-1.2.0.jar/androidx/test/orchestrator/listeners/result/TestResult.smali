.class public Landroidx/test/orchestrator/listeners/result/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    }
.end annotation


# instance fields
.field private endTime:J

.field private metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stackTrace:Ljava/lang/String;

.field private startTime:J

.field private status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->startTime:J

    .line 47
    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->endTime:J

    .line 50
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    iput-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->startTime:J

    .line 52
    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 132
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 116
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 117
    return v0

    .line 119
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 120
    return v1

    .line 122
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 123
    return v1

    .line 125
    :cond_13
    move-object v2, p1

    check-cast v2, Landroidx/test/orchestrator/listeners/result/TestResult;

    .line 126
    .local v2, "other":Landroidx/test/orchestrator/listeners/result/TestResult;
    iget-object v3, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    iget-object v4, v2, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    invoke-static {v3, v4}, Landroidx/test/orchestrator/listeners/result/TestResult;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    iget-object v4, v2, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    .line 127
    invoke-static {v3, v4}, Landroidx/test/orchestrator/listeners/result/TestResult;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    iget-object v4, v2, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 128
    invoke-static {v3, v4}, Landroidx/test/orchestrator/listeners/result/TestResult;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 126
    :goto_36
    return v0
.end method

.method public getEndTime()J
    .registers 3

    .line 90
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->endTime:J

    return-wide v0
.end method

.method public getMetrics()Ljava/util/Map;
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

    .line 69
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .line 82
    iget-wide v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->startTime:J

    return-wide v0
.end method

.method public getStatus()Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .registers 2

    .line 56
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEndTime(J)V
    .registers 3
    .param p1, "currentTimeMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTimeMillis"
        }
    .end annotation

    .line 106
    iput-wide p1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->endTime:J

    .line 107
    return-void
.end method

.method public setMetrics(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metrics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "metrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->metrics:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .registers 2
    .param p1, "trace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trace"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->stackTrace:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setStatus(Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;)Landroidx/test/orchestrator/listeners/result/TestResult;
    .registers 2
    .param p1, "status"    # Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestResult;->status:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 96
    return-object p0
.end method
