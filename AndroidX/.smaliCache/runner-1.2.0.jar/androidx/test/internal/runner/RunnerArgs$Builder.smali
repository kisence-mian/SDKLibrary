.class public Landroidx/test/internal/runner/RunnerArgs$Builder;
.super Ljava/lang/Object;
.source "RunnerArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/RunnerArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private classLoader:Ljava/lang/ClassLoader;

.field private classpathToScan:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private codeCoverage:Z

.field private codeCoveragePath:Ljava/lang/String;

.field private debug:Z

.field private delayInMillis:I

.field private disableAnalytics:Z

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/manipulation/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private listTestsForOrchestrator:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field

.field private logOnly:Z

.field private newRunListenerMode:Z

.field private final notAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notTestPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notTests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/RunnerArgs$TestArg;",
            ">;"
        }
    .end annotation
.end field

.field private numShards:I

.field private orchestratorService:Ljava/lang/String;

.field private remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

.field private runnerBuilderClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field private screenCaptureProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private shardIndex:I

.field public shellExecBinderKey:Ljava/lang/String;

.field private suiteAssignment:Z

.field private targetProcess:Ljava/lang/String;

.field private testPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private testSize:Ljava/lang/String;

.field private testTimeout:J

.field private tests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/RunnerArgs$TestArg;",
            ">;"
        }
    .end annotation
.end field

.field private testsRegEx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->debug:Z

    .line 192
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->suiteAssignment:Z

    .line 193
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoverage:Z

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoveragePath:Ljava/lang/String;

    .line 195
    const/4 v2, -0x1

    iput v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->delayInMillis:I

    .line 196
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->logOnly:Z

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPackages:Ljava/util/List;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTestPackages:Ljava/util/List;

    .line 199
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testSize:Ljava/lang/String;

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->annotations:Ljava/util/List;

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notAnnotations:Ljava/util/List;

    .line 202
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testTimeout:J

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listeners:Ljava/util/List;

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->filters:Ljava/util/List;

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->runnerBuilderClasses:Ljava/util/List;

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->tests:Ljava/util/List;

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTests:Ljava/util/List;

    .line 208
    iput v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->numShards:I

    .line 209
    iput v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->shardIndex:I

    .line 210
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->disableAnalytics:Z

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->appListeners:Ljava/util/List;

    .line 213
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classLoader:Ljava/lang/ClassLoader;

    .line 214
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classpathToScan:Ljava/util/Set;

    .line 215
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    .line 216
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->orchestratorService:Ljava/lang/String;

    .line 217
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listTestsForOrchestrator:Z

    .line 218
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->targetProcess:Ljava/lang/String;

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->screenCaptureProcessors:Ljava/util/List;

    .line 221
    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->newRunListenerMode:Z

    .line 222
    iput-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testsRegEx:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->debug:Z

    return v0
.end method

.method static synthetic access$100(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->suiteAssignment:Z

    return v0
.end method

.method static synthetic access$1000(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notAnnotations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Landroidx/test/internal/runner/RunnerArgs$Builder;)J
    .registers 3
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-wide v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testTimeout:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->filters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->runnerBuilderClasses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->tests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Landroidx/test/internal/runner/RunnerArgs$Builder;)I
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->numShards:I

    return v0
.end method

.method static synthetic access$1800(Landroidx/test/internal/runner/RunnerArgs$Builder;)I
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->shardIndex:I

    return v0
.end method

.method static synthetic access$1900(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->disableAnalytics:Z

    return v0
.end method

.method static synthetic access$200(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoverage:Z

    return v0
.end method

.method static synthetic access$2000(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->appListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/ClassLoader;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$2200(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classpathToScan:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2300(Landroidx/test/internal/runner/RunnerArgs$Builder;)Landroidx/test/internal/runner/RunnerArgs$TestArg;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    return-object v0
.end method

.method static synthetic access$2400(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->orchestratorService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listTestsForOrchestrator:Z

    return v0
.end method

.method static synthetic access$2600(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->screenCaptureProcessors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->targetProcess:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->newRunListenerMode:Z

    return v0
.end method

.method static synthetic access$2900(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testsRegEx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoveragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/test/internal/runner/RunnerArgs$Builder;)I
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->delayInMillis:I

    return v0
.end method

.method static synthetic access$500(Landroidx/test/internal/runner/RunnerArgs$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->logOnly:Z

    return v0
.end method

.method static synthetic access$600(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTestPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/test/internal/runner/RunnerArgs$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/RunnerArgs$Builder;

    .line 190
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->annotations:Ljava/util/List;

    return-object v0
.end method

.method static isClassOrMethod(Ljava/lang/String;)Z
    .registers 2
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 492
    const-string v0, "^([\\p{L}_$][\\p{L}\\p{N}_$]*\\.)*[\\p{Lu}_$][\\p{L}\\p{N}_$]*(#[\\p{L}_$][\\p{L}\\p{N}_$]*)?$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadClassByNameAndAdd(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 10
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classes",
            "className",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+TT;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 620
    .local p1, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+TT;>;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, " does not extend "

    if-eqz p2, :cond_9f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_9f

    .line 624
    :cond_c
    :try_start_c
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 625
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 629
    move-object v2, v1

    .line 630
    .local v2, "castClass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    nop

    .line 636
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "castClass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    return-void

    .line 626
    .restart local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+TT;>;>;"
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v2
    :try_end_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_4e} :catch_81
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_4e} :catch_4e

    .line 633
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+TT;>;>;"
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_4e
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_81
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not find extra class "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_95

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9b

    :cond_95
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_9b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_9f
    :goto_9f
    return-void
.end method

.method private loadClassByNameInstantiateAndAdd(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 12
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objects",
            "className",
            "type",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 540
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Failed to create: "

    if-eqz p2, :cond_109

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_109

    .line 545
    :cond_c
    :try_start_c
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_10} :catch_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_10} :catch_cd
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_10} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_10} :catch_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_10} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_10} :catch_42

    .line 552
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_12
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 553
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    new-array v3, v3, [Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_1a} :catch_eb
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_1a} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_1a} :catch_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_1a} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_1a} :catch_42

    .line 572
    .local v3, "arguments":[Ljava/lang/Object;
    goto :goto_2e

    .line 554
    .end local v3    # "arguments":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    :catch_1b
    move-exception v4

    .line 557
    .local v4, "nsme1":Ljava/lang/NoSuchMethodException;
    if-eqz p4, :cond_40

    .line 559
    :try_start_1e
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 560
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    new-array v6, v2, [Ljava/lang/Object;

    aput-object p4, v6, v3
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_2c} :catch_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_2c} :catch_eb
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_2c} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_1e .. :try_end_2c} :catch_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_2c} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_2c} :catch_42

    move-object v3, v6

    .line 567
    .restart local v3    # "arguments":[Ljava/lang/Object;
    move-object v4, v5

    .line 573
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    :goto_2e
    :try_start_2e
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 575
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 576
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    nop

    .line 591
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    .end local v3    # "arguments":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    return-void

    .line 561
    .restart local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local v4, "nsme1":Ljava/lang/NoSuchMethodException;
    :catch_3a
    move-exception v2

    .line 565
    .local v2, "nsme2":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 566
    nop

    .end local p1    # "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p4    # "bundle":Landroid/os/Bundle;
    throw v2

    .line 570
    .end local v2    # "nsme2":Ljava/lang/NoSuchMethodException;
    .restart local p1    # "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p4    # "bundle":Landroid/os/Bundle;
    :cond_40
    nop

    .end local p1    # "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p4    # "bundle":Landroid/os/Bundle;
    throw v4
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_42} :catch_eb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_42} :catch_cd
    .catch Ljava/lang/ClassCastException; {:try_start_2e .. :try_end_42} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_2e .. :try_end_42} :catch_7c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_42} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_42} :catch_42

    .line 588
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .end local v4    # "nsme1":Ljava/lang/NoSuchMethodException;
    .restart local p1    # "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p4    # "bundle":Landroid/os/Bundle;
    :catch_42
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to create listener: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_56

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    :cond_56
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_5c
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 586
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_60
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_72

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_72
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_78
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 584
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_7c
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8e

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_94

    :cond_8e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_94
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 582
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_98
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not extend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_cd
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must have no argument constructor for class "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e1

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e7

    :cond_e1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_e7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_eb
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not find extra class "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_ff

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_105

    :cond_ff
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_105
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_109
    :goto_109
    return-void
.end method

.method private openFile(Landroid/app/Instrumentation;Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 11
    .param p1, "instr"    # Landroid/app/Instrumentation;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instr",
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_16

    .line 474
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 475
    .local v0, "isInstantApp":Z
    :goto_17
    new-instance v1, Ljava/io/BufferedReader;

    .line 476
    if-eqz v0, :cond_45

    .line 477
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 479
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v4

    const-string v5, "cat "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_34

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3a

    :cond_34
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_3a
    invoke-virtual {v4, v5}, Landroid/app/UiAutomation;->executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_4f

    .line 480
    :cond_45
    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    :goto_4f
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 475
    return-object v1
.end method

.method private parseAndLoadClasses(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .param p1, "classString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classString",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+TT;>;>;"
        }
    .end annotation

    .line 599
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+TT;>;>;"
    if-eqz p1, :cond_19

    .line 601
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 602
    .local v4, "className":Ljava/lang/String;
    invoke-direct {p0, v0, v4, p2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->loadClassByNameAndAdd(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)V

    .line 601
    .end local v4    # "className":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 605
    :cond_19
    return-object v0
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .registers 2
    .param p0, "booleanValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "booleanValue"
        }
    .end annotation

    .line 326
    if-eqz p0, :cond_a

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static parseClasspath(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "classpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classpath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 407
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, -0x1

    const-string v2, ":"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 405
    :cond_1a
    :goto_1a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private parseFromFile(Landroid/app/Instrumentation;Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    .registers 10
    .param p1, "instr"    # Landroid/app/Instrumentation;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instr",
            "filePath"
        }
    .end annotation

    .line 437
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;-><init>(Landroidx/test/internal/runner/RunnerArgs$1;)V

    .line 438
    .local v0, "args":Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    if-nez p2, :cond_9

    .line 439
    return-object v0

    .line 441
    :cond_9
    const/4 v1, 0x0

    .line 443
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_a
    invoke-direct {p0, p1, p2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->openFile(Landroid/app/Instrumentation;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v2

    move-object v1, v2

    .line 445
    :goto_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_34

    .line 446
    invoke-static {v3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->isClassOrMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 447
    # getter for: Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->tests:Ljava/util/List;
    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3000(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestArg;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 450
    :cond_28
    # getter for: Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->packages:Ljava/util/List;
    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3100(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_33} :catch_5d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_3f
    .catchall {:try_start_a .. :try_end_33} :catchall_3d

    goto :goto_f

    .line 458
    .end local v3    # "line":Ljava/lang/String;
    :cond_34
    if-eqz v1, :cond_3c

    .line 460
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 463
    :goto_39
    goto :goto_3c

    .line 461
    :catch_3a
    move-exception v2

    goto :goto_39

    .line 466
    :cond_3c
    :goto_3c
    return-object v0

    .line 458
    :catchall_3d
    move-exception v2

    goto :goto_7b

    .line 455
    :catch_3f
    move-exception v2

    .line 456
    .local v2, "e":Ljava/io/IOException;
    :try_start_40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Could not read test file "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_59

    :cond_53
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_59
    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "args":Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "instr":Landroid/app/Instrumentation;
    .end local p2    # "filePath":Ljava/lang/String;
    throw v3

    .line 453
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "args":Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "instr":Landroid/app/Instrumentation;
    .restart local p2    # "filePath":Ljava/lang/String;
    :catch_5d
    move-exception v2

    .line 454
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "testfile not found: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_71

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_77

    :cond_71
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_77
    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "args":Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local p1    # "instr":Landroid/app/Instrumentation;
    .end local p2    # "filePath":Ljava/lang/String;
    throw v3
    :try_end_7b
    .catchall {:try_start_40 .. :try_end_7b} :catchall_3d

    .line 458
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "args":Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local p1    # "instr":Landroid/app/Instrumentation;
    .restart local p2    # "filePath":Ljava/lang/String;
    :goto_7b
    if-eqz v1, :cond_82

    .line 460
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 463
    goto :goto_82

    .line 461
    :catch_81
    move-exception v3

    .line 463
    :cond_82
    :goto_82
    goto :goto_84

    :goto_83
    throw v2

    :goto_84
    goto :goto_83
.end method

.method private parseLoadAndInstantiateClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .param p1, "classString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classString",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 517
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 518
    .local v1, "classLoaders":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    .line 519
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_18

    .line 523
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 520
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 521
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Expected 1 class loader, %d given"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_30
    return-object v0
.end method

.method private parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;
    .registers 9
    .param p1, "classString"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classString",
            "type",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 502
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_19

    .line 504
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 505
    .local v4, "className":Ljava/lang/String;
    invoke-direct {p0, v0, v4, p2, p3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->loadClassByNameInstantiateAndAdd(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 504
    .end local v4    # "className":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 508
    :cond_19
    return-object v0
.end method

.method private static parseStrings(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    if-nez p0, :cond_7

    .line 315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 317
    :cond_7
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static parseTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestArg;
    .registers 4
    .param p0, "testClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClassName"
        }
    .end annotation

    .line 416
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 417
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_8
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 420
    .local v0, "methodSeparatorIndex":I
    if-lez v0, :cond_21

    .line 421
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "testMethodName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 423
    new-instance v2, Landroidx/test/internal/runner/RunnerArgs$TestArg;

    invoke-direct {v2, p0, v1}, Landroidx/test/internal/runner/RunnerArgs$TestArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 425
    .end local v1    # "testMethodName":Ljava/lang/String;
    :cond_21
    new-instance v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;

    invoke-direct {v1, p0}, Landroidx/test/internal/runner/RunnerArgs$TestArg;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private parseTestClasses(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "classesArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classesArg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/RunnerArgs$TestArg;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v0, "tests":Ljava/util/List;, "Ljava/util/List<Landroidx/test/internal/runner/RunnerArgs$TestArg;>;"
    if-eqz p1, :cond_1d

    .line 389
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 390
    .local v4, "className":Ljava/lang/String;
    invoke-static {v4}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestArg;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v4    # "className":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 393
    :cond_1d
    return-object v0
.end method

.method private static parseTestPackages(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p0, "packagesArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packagesArg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_19

    .line 373
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 374
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v4    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 377
    :cond_19
    return-object v0
.end method

.method private static parseUnsignedInt(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "name"
        }
    .end annotation

    .line 336
    if-eqz p0, :cond_1d

    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, "intValue":I
    if-ltz v0, :cond_d

    .line 342
    return v0

    .line 339
    :cond_d
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " can not be negative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    .end local v0    # "intValue":I
    :cond_1d
    const/4 v0, -0x1

    return v0
.end method

.method private static parseUnsignedLong(Ljava/lang/Object;Ljava/lang/String;)J
    .registers 7
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "name"
        }
    .end annotation

    .line 354
    if-eqz p0, :cond_21

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 356
    .local v0, "longValue":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_11

    .line 359
    return-wide v0

    .line 357
    :cond_11
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " can not be negative"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    .end local v0    # "longValue":J
    :cond_21
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public build()Landroidx/test/internal/runner/RunnerArgs;
    .registers 3

    .line 639
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/internal/runner/RunnerArgs;-><init>(Landroidx/test/internal/runner/RunnerArgs$Builder;Landroidx/test/internal/runner/RunnerArgs$1;)V

    return-object v0
.end method

.method public fromBundle(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/RunnerArgs$Builder;
    .registers 9
    .param p1, "instr"    # Landroid/app/Instrumentation;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instr",
            "bundle"
        }
    .end annotation

    .line 230
    const-string v0, "debug"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->debug:Z

    .line 231
    nop

    .line 232
    const-string v0, "delay_msec"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseUnsignedInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->delayInMillis:I

    .line 234
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->tests:Ljava/util/List;

    const-string v1, "class"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTests:Ljava/util/List;

    const-string v1, "notClass"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPackages:Ljava/util/List;

    const-string v1, "package"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTestPackages:Ljava/util/List;

    const-string v1, "notPackage"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    const-string v0, "testFile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseFromFile(Landroid/app/Instrumentation;Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;

    move-result-object v0

    .line 241
    .local v0, "testFileArgs":Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    iget-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->tests:Ljava/util/List;

    # getter for: Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->tests:Ljava/util/List;
    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3000(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testPackages:Ljava/util/List;

    # getter for: Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->packages:Ljava/util/List;
    invoke-static {v0}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3100(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    const-string v1, "notTestFile"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseFromFile(Landroid/app/Instrumentation;Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;

    move-result-object v1

    .line 244
    .local v1, "notTestFileArgs":Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTests:Ljava/util/List;

    # getter for: Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->tests:Ljava/util/List;
    invoke-static {v1}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3000(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notTestPackages:Ljava/util/List;

    # getter for: Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->packages:Ljava/util/List;
    invoke-static {v1}, Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;->access$3100(Landroidx/test/internal/runner/RunnerArgs$TestFileArgs;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listeners:Ljava/util/List;

    .line 248
    const-string v3, "listener"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/junit/runner/notification/RunListener;

    .line 247
    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    .line 246
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->filters:Ljava/util/List;

    .line 250
    const-string v3, "filter"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/junit/runner/manipulation/Filter;

    invoke-direct {p0, v3, v4, p2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    .line 249
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->runnerBuilderClasses:Ljava/util/List;

    .line 252
    const-string v3, "runnerBuilder"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/junit/runners/model/RunnerBuilder;

    invoke-direct {p0, v3, v4}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseAndLoadClasses(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 251
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    const-string v2, "size"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testSize:Ljava/lang/String;

    .line 254
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->annotations:Ljava/util/List;

    const-string v3, "annotation"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseStrings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->notAnnotations:Ljava/util/List;

    const-string v3, "notAnnotation"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseStrings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    const-string v2, "timeout_msec"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseUnsignedLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testTimeout:J

    .line 257
    const-string v2, "numShards"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseUnsignedInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->numShards:I

    .line 258
    const-string v2, "shardIndex"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseUnsignedInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->shardIndex:I

    .line 259
    const-string v2, "log"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->logOnly:Z

    .line 260
    const-string v2, "disableAnalytics"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->disableAnalytics:Z

    .line 261
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->appListeners:Ljava/util/List;

    .line 263
    const-string v3, "appListener"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 262
    invoke-direct {p0, v3, v4, v5}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    .line 261
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    const-string v2, "coverage"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoverage:Z

    .line 265
    const-string v2, "coverageFile"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->codeCoveragePath:Ljava/lang/String;

    .line 266
    const-string v2, "suiteAssignment"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->suiteAssignment:Z

    .line 267
    nop

    .line 268
    const-string v2, "classLoader"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/ClassLoader;

    invoke-direct {p0, v2, v3}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classLoader:Ljava/lang/ClassLoader;

    .line 269
    const-string v2, "classpathToScan"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseClasspath(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->classpathToScan:Ljava/util/Set;

    .line 270
    const-string v2, "remoteMethod"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 271
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/RunnerArgs$TestArg;

    move-result-object v2

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->remoteMethod:Landroidx/test/internal/runner/RunnerArgs$TestArg;

    .line 273
    :cond_183
    const-string v2, "orchestratorService"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->orchestratorService:Ljava/lang/String;

    .line 274
    nop

    .line 275
    const-string v2, "listTestsForOrchestrator"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->listTestsForOrchestrator:Z

    .line 276
    const-string v2, "targetProcess"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->targetProcess:Ljava/lang/String;

    .line 277
    iget-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->screenCaptureProcessors:Ljava/util/List;

    .line 279
    const-string v3, "screenCaptureProcessors"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroidx/test/runner/screenshot/ScreenCaptureProcessor;

    .line 278
    invoke-direct {p0, v3, v4, v5}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseLoadAndInstantiateClasses(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    .line 277
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    const-string v2, "shellExecBinderKey"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->shellExecBinderKey:Ljava/lang/String;

    .line 283
    const-string v2, "newRunListenerMode"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->newRunListenerMode:Z

    .line 284
    const-string v2, "tests_regex"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/test/internal/runner/RunnerArgs$Builder;->testsRegEx:Ljava/lang/String;

    .line 285
    return-object p0
.end method

.method public fromManifest(Landroid/app/Instrumentation;)Landroidx/test/internal/runner/RunnerArgs$Builder;
    .registers 7
    .param p1, "instr"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instr"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 292
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 293
    :try_start_9
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    .line 294
    .local v1, "instrInfo":Landroid/content/pm/InstrumentationInfo;
    iget-object v2, v1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 295
    .local v2, "b":Landroid/os/Bundle;
    if-nez v2, :cond_18

    .line 297
    return-object p0

    .line 300
    :cond_18
    invoke-virtual {p0, p1, v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->fromBundle(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/RunnerArgs$Builder;

    move-result-object v3
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1c} :catch_1d

    return-object v3

    .line 301
    .end local v1    # "instrInfo":Landroid/content/pm/InstrumentationInfo;
    .end local v2    # "b":Landroid/os/Bundle;
    :catch_1d
    move-exception v1

    .line 303
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Could not find component %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RunnerArgs"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p0
.end method
