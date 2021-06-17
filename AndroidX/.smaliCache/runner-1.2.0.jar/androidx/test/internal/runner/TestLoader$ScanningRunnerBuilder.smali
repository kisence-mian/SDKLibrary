.class Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "TestLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/TestLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanningRunnerBuilder"
.end annotation


# instance fields
.field private final runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;


# direct methods
.method constructor <init>(Lorg/junit/runners/model/RunnerBuilder;)V
    .registers 2
    .param p1, "runnerBuilder"    # Lorg/junit/runners/model/RunnerBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerBuilder"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    .line 129
    iput-object p1, p0, Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;->runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

    .line 130
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

    .line 138
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Skipping abstract class %s: not a test"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # invokes: Landroidx/test/internal/runner/TestLoader;->logDebug(Ljava/lang/String;)V
    invoke-static {v0}, Landroidx/test/internal/runner/TestLoader;->access$000(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 143
    :cond_1f
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;->runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

    invoke-virtual {v0, p1}, Lorg/junit/runners/model/RunnerBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    return-object v0
.end method
