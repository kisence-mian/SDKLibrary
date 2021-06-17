.class final Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
.super Ljava/lang/Object;
.source "RunnerArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/RunnerArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TestFileArgs"
.end annotation


# instance fields
.field private final packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/RunnerArgs$TestArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->tests:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->packages:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/runner/RunnerArgs$1;)V
    .registers 2
    .param p1, "x0"    # Landroidx/test/internal/runner/RunnerArgs$1;

    .line 151
    invoke-direct {p0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;-><init>()V

    return-void
.end method

.method static synthetic access$3000(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;

    .line 151
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->tests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3100(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;

    .line 151
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->packages:Ljava/util/List;

    return-object v0
.end method
