.class public final enum Landroidx/test/runner/lifecycle/Stage;
.super Ljava/lang/Enum;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/runner/lifecycle/Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/runner/lifecycle/Stage;

.field public static final enum CREATED:Landroidx/test/runner/lifecycle/Stage;

.field public static final enum DESTROYED:Landroidx/test/runner/lifecycle/Stage;

.field public static final enum PAUSED:Landroidx/test/runner/lifecycle/Stage;

.field public static final enum PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

.field public static final enum RESTARTED:Landroidx/test/runner/lifecycle/Stage;

.field public static final enum RESUMED:Landroidx/test/runner/lifecycle/Stage;

.field public static final enum STARTED:Landroidx/test/runner/lifecycle/Stage;

.field public static final enum STOPPED:Landroidx/test/runner/lifecycle/Stage;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 26
    new-instance v0, Landroidx/test/runner/lifecycle/Stage;

    const-string v1, "PRE_ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/runner/lifecycle/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    .line 28
    new-instance v1, Landroidx/test/runner/lifecycle/Stage;

    const-string v3, "CREATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/test/runner/lifecycle/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/test/runner/lifecycle/Stage;->CREATED:Landroidx/test/runner/lifecycle/Stage;

    .line 30
    new-instance v3, Landroidx/test/runner/lifecycle/Stage;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/test/runner/lifecycle/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/test/runner/lifecycle/Stage;->STARTED:Landroidx/test/runner/lifecycle/Stage;

    .line 32
    new-instance v5, Landroidx/test/runner/lifecycle/Stage;

    const-string v7, "RESUMED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/test/runner/lifecycle/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    .line 34
    new-instance v7, Landroidx/test/runner/lifecycle/Stage;

    const-string v9, "PAUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/test/runner/lifecycle/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    .line 36
    new-instance v9, Landroidx/test/runner/lifecycle/Stage;

    const-string v11, "STOPPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/test/runner/lifecycle/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    .line 38
    new-instance v11, Landroidx/test/runner/lifecycle/Stage;

    const-string v13, "RESTARTED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroidx/test/runner/lifecycle/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/test/runner/lifecycle/Stage;->RESTARTED:Landroidx/test/runner/lifecycle/Stage;

    .line 40
    new-instance v13, Landroidx/test/runner/lifecycle/Stage;

    const-string v15, "DESTROYED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroidx/test/runner/lifecycle/Stage;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    .line 24
    const/16 v15, 0x8

    new-array v15, v15, [Landroidx/test/runner/lifecycle/Stage;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Landroidx/test/runner/lifecycle/Stage;->$VALUES:[Landroidx/test/runner/lifecycle/Stage;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/runner/lifecycle/Stage;
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

    .line 24
    const-class v0, Landroidx/test/runner/lifecycle/Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/runner/lifecycle/Stage;

    return-object v0
.end method

.method public static values()[Landroidx/test/runner/lifecycle/Stage;
    .registers 1

    .line 24
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->$VALUES:[Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0}, [Landroidx/test/runner/lifecycle/Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/runner/lifecycle/Stage;

    return-object v0
.end method
