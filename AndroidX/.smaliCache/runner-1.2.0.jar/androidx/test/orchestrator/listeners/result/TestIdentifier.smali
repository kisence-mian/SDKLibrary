.class public Landroidx/test/orchestrator/listeners/result/TestIdentifier;
.super Ljava/lang/Object;
.source "TestIdentifier.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final testName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "testName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "testName"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 39
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    .line 41
    return-void

    .line 37
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "className and testName must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 65
    return v0

    .line 67
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 68
    return v1

    .line 70
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 71
    return v1

    .line 73
    :cond_13
    move-object v2, p1

    check-cast v2, Landroidx/test/orchestrator/listeners/result/TestIdentifier;

    .line 74
    .local v2, "other":Landroidx/test/orchestrator/listeners/result/TestIdentifier;
    iget-object v3, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 75
    iget-object v3, v2, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 76
    return v1

    .line 78
    :cond_1f
    iget-object v4, v2, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 79
    return v1

    .line 81
    :cond_28
    iget-object v3, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    if-nez v3, :cond_31

    .line 82
    iget-object v3, v2, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 83
    return v1

    .line 85
    :cond_31
    iget-object v4, v2, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 86
    return v1

    .line 88
    :cond_3a
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 55
    const/16 v0, 0x1f

    .line 56
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 57
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->className:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    .line 58
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->testName:Ljava/lang/String;

    if-nez v3, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1c
    add-int/2addr v1, v4

    .line 59
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/test/orchestrator/listeners/result/TestIdentifier;->getTestName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s#%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
