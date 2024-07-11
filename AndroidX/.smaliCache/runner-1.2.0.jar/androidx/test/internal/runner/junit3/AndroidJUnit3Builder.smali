.class public Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;
.super Lorg/junit/internal/builders/JUnit3Builder;
.source "AndroidJUnit3Builder.java"


# static fields
.field public static final NOT_A_VALID_TEST:Lorg/junit/runner/Runner;

.field private static final TAG:Ljava/lang/String; = "AndroidJUnit3Builder"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

.field private final scanningPath:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder$1;

    invoke-direct {v0}, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder$1;-><init>()V

    sput-object v0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->NOT_A_VALID_TEST:Lorg/junit/runner/Runner;

    return-void
.end method

.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 3
    .param p1, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerParams"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V
    .registers 3
    .param p1, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .param p2, "scanningPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnerParams",
            "scanningPath"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/junit/internal/builders/JUnit3Builder;-><init>()V

    .line 63
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 64
    iput-boolean p2, p0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->scanningPath:Z

    .line 65
    return-void
.end method


# virtual methods
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

    .line 79
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->isJUnit3Test(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 82
    iget-boolean v0, p0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->scanningPath:Z

    if-eqz v0, :cond_13

    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->hasJUnit3TestMethod(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 85
    sget-object v0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->NOT_A_VALID_TEST:Lorg/junit/runner/Runner;

    return-object v0

    .line 87
    :cond_13
    new-instance v0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;

    new-instance v1, Landroidx/test/internal/runner/junit3/AndroidTestSuite;

    iget-object v2, p0, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-direct {v1, p1, v2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;-><init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_23

    return-object v0

    .line 93
    :cond_20
    nop

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 89
    :catchall_23
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "AndroidJUnit3Builder"

    const-string v2, "Error constructing runner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    throw v0
.end method
