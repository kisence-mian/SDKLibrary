.class public final enum Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
.super Ljava/lang/Enum;
.source "OrchestrationListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/listeners/OrchestrationListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_IGNORED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_RUN_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_RUN_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

.field public static final enum TEST_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 37
    new-instance v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v1, "TEST_RUN_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 38
    new-instance v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v3, "TEST_RUN_FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_RUN_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 39
    new-instance v3, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v5, "TEST_STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_STARTED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 40
    new-instance v5, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v7, "TEST_FINISHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FINISHED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 41
    new-instance v7, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v9, "TEST_FAILURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 42
    new-instance v9, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v11, "TEST_ASSUMPTION_FAILURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_ASSUMPTION_FAILURE:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 43
    new-instance v11, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    const-string v13, "TEST_IGNORED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->TEST_IGNORED:Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    .line 36
    const/4 v13, 0x7

    new-array v13, v13, [Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->$VALUES:[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
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

    .line 36
    const-class v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    return-object v0
.end method

.method public static values()[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;
    .registers 1

    .line 36
    sget-object v0, Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->$VALUES:[Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    invoke-virtual {v0}, [Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/orchestrator/listeners/OrchestrationListenerManager$TestEvent;

    return-object v0
.end method
