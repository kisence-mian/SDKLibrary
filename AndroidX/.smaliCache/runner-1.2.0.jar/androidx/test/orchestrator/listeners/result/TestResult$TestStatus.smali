.class public final enum Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
.super Ljava/lang/Enum;
.source "TestResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/listeners/result/TestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum IGNORED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

.field public static final enum PASSED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 31
    new-instance v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v1, "FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 33
    new-instance v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v3, "PASSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->PASSED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 35
    new-instance v3, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v5, "INCOMPLETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->INCOMPLETE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 37
    new-instance v5, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v7, "ASSUMPTION_FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 39
    new-instance v7, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    const-string v9, "IGNORED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->IGNORED:Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    .line 29
    const/4 v9, 0x5

    new-array v9, v9, [Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->$VALUES:[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 29
    const-class v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-object v0
.end method

.method public static values()[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;
    .registers 1

    .line 29
    sget-object v0, Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->$VALUES:[Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    invoke-virtual {v0}, [Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/orchestrator/listeners/result/TestResult$TestStatus;

    return-object v0
.end method
