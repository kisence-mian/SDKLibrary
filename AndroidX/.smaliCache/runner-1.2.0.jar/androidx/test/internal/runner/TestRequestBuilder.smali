.class public Landroidx/test/internal/runner/TestRequestBuilder;
.super Ljava/lang/Object;
.source "TestRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/TestRequestBuilder$MethodFilter;,
        Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;,
        Landroidx/test/internal/runner/TestRequestBuilder$BlankRunner;,
        Landroidx/test/internal/runner/TestRequestBuilder$LenientFilterRequest;,
        Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;,
        Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;,
        Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;,
        Landroidx/test/internal/runner/TestRequestBuilder$ExtendedSuite;,
        Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;,
        Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;,
        Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;,
        Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuildImpl;,
        Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;
    }
.end annotation


# static fields
.field static final AMBIGUOUS_ARGUMENTS_MSG:Ljava/lang/String; = "Ambiguous arguments: cannot provide both test package and test class(es) to run"

.field private static final DEFAULT_EXCLUDED_PACKAGES:[Ljava/lang/String;

.field static final MISSING_ARGUMENTS_MSG:Ljava/lang/String; = "Must provide either classes to run, or paths to scan"

.field private static final TAG:Ljava/lang/String; = "TestRequestBuilder"


# instance fields
.field private final argsBundle:Landroid/os/Bundle;

.field private classLoader:Ljava/lang/ClassLoader;

.field private classMethodFilter:Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;

.field private customRunnerBuilderClasses:Ljava/util/List;
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

.field private final deviceBuild:Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;

.field private excludedClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lorg/junit/runner/manipulation/Filter;

.field private ignoreSuiteMethods:Z

.field private includedClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private includedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final instr:Landroid/app/Instrumentation;

.field private final pathsToScan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private perTestTimeout:J

.field private skipExecution:Z

.field private final testsRegExFilter:Landroidx/test/internal/runner/filters/TestsRegExFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "junit"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "org.junit"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.hamcrest"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "org.mockito"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "androidx.test.internal.runner.junit3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "org.jacoco"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "net.bytebuddy"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/test/internal/runner/TestRequestBuilder;->DEFAULT_EXCLUDED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Landroid/os/Bundle;)V
    .registers 5
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

    .line 497
    new-instance v0, Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuildImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuildImpl;-><init>(Landroidx/test/internal/runner/TestRequestBuilder$1;)V

    invoke-direct {p0, v0, p1, p2}, Landroidx/test/internal/runner/TestRequestBuilder;-><init>(Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;Landroid/app/Instrumentation;Landroid/os/Bundle;)V

    .line 498
    return-void
.end method

.method constructor <init>(Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;Landroid/app/Instrumentation;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "deviceBuildAccessor"    # Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;
    .param p2, "instr"    # Landroid/app/Instrumentation;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceBuildAccessor",
            "instr",
            "bundle"
        }
    .end annotation

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->pathsToScan:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedPackages:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedPackages:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedClasses:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedClasses:Ljava/util/Set;

    .line 84
    new-instance v0, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;-><init>(Landroidx/test/internal/runner/TestRequestBuilder$1;)V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->classMethodFilter:Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;

    .line 85
    new-instance v0, Landroidx/test/internal/runner/filters/TestsRegExFilter;

    invoke-direct {v0}, Landroidx/test/internal/runner/filters/TestsRegExFilter;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->testsRegExFilter:Landroidx/test/internal/runner/filters/TestsRegExFilter;

    .line 86
    new-instance v2, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;

    const-class v3, Landroidx/test/filters/Suppress;

    invoke-direct {v2, v3}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;-><init>(Ljava/lang/Class;)V

    new-instance v3, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;

    invoke-direct {v3, p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder$SdkSuppressFilter;-><init>(Landroidx/test/internal/runner/TestRequestBuilder;Landroidx/test/internal/runner/TestRequestBuilder$1;)V

    .line 88
    invoke-virtual {v2, v3}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;->intersect(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v1

    new-instance v2, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;

    invoke-direct {v2, p0}, Landroidx/test/internal/runner/TestRequestBuilder$RequiresDeviceFilter;-><init>(Landroidx/test/internal/runner/TestRequestBuilder;)V

    .line 89
    invoke-virtual {v1, v2}, Lorg/junit/runner/manipulation/Filter;->intersect(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder;->classMethodFilter:Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;

    .line 90
    invoke-virtual {v1, v2}, Lorg/junit/runner/manipulation/Filter;->intersect(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lorg/junit/runner/manipulation/Filter;->intersect(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->filter:Lorg/junit/runner/manipulation/Filter;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->customRunnerBuilderClasses:Ljava/util/List;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->skipExecution:Z

    .line 95
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->perTestTimeout:J

    .line 106
    iput-boolean v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->ignoreSuiteMethods:Z

    .line 503
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->deviceBuild:Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;

    .line 504
    invoke-static {p2}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->instr:Landroid/app/Instrumentation;

    .line 505
    invoke-static {p3}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->argsBundle:Landroid/os/Bundle;

    .line 507
    invoke-direct {p0}, Landroidx/test/internal/runner/TestRequestBuilder;->maybeAddLegacySuppressFilter()V

    .line 508
    return-void
.end method

.method static synthetic access$200(Landroidx/test/internal/runner/TestRequestBuilder;)I
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/TestRequestBuilder;

    .line 60
    invoke-direct {p0}, Landroidx/test/internal/runner/TestRequestBuilder;->getDeviceSdkInt()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/test/internal/runner/TestRequestBuilder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/TestRequestBuilder;

    .line 60
    invoke-direct {p0}, Landroidx/test/internal/runner/TestRequestBuilder;->getDeviceHardware()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getClassNamesFromClassPath()Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->pathsToScan:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 833
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->pathsToScan:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Scanning classpath to find tests in paths %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestRequestBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->pathsToScan:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->createClassPathScanner(Ljava/util/List;)Landroidx/test/internal/runner/ClassPathScanner;

    move-result-object v0

    .line 836
    .local v0, "scanner":Landroidx/test/internal/runner/ClassPathScanner;
    new-instance v3, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;

    invoke-direct {v3}, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;-><init>()V

    .line 838
    .local v3, "filter":Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;
    new-instance v4, Landroidx/test/internal/runner/ClassPathScanner$ExternalClassNameFilter;

    invoke-direct {v4}, Landroidx/test/internal/runner/ClassPathScanner$ExternalClassNameFilter;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;->add(Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)V

    .line 839
    sget-object v4, Landroidx/test/internal/runner/TestRequestBuilder;->DEFAULT_EXCLUDED_PACKAGES:[Ljava/lang/String;

    array-length v5, v4

    :goto_31
    if-ge v2, v5, :cond_45

    aget-object v6, v4, v2

    .line 841
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedPackages:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 842
    iget-object v7, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedPackages:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 839
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 845
    :cond_45
    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    .line 846
    new-instance v2, Landroidx/test/internal/runner/ClassPathScanner$InclusivePackageNamesFilter;

    iget-object v4, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedPackages:Ljava/util/Set;

    invoke-direct {v2, v4}, Landroidx/test/internal/runner/ClassPathScanner$InclusivePackageNamesFilter;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2}, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;->add(Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)V

    .line 848
    :cond_57
    iget-object v2, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedPackages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 849
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Landroidx/test/internal/runner/ClassPathScanner$ExcludePackageNameFilter;

    invoke-direct {v5, v4}, Landroidx/test/internal/runner/ClassPathScanner$ExcludePackageNameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;->add(Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)V

    .line 850
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_5d

    .line 851
    :cond_72
    new-instance v2, Landroidx/test/internal/runner/ClassPathScanner$ExcludeClassNamesFilter;

    iget-object v4, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedClasses:Ljava/util/Set;

    invoke-direct {v2, v4}, Landroidx/test/internal/runner/ClassPathScanner$ExcludeClassNamesFilter;-><init>(Ljava/util/Set;)V

    invoke-virtual {v3, v2}, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;->add(Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)V

    .line 853
    :try_start_7c
    invoke-virtual {v0, v3}, Landroidx/test/internal/runner/ClassPathScanner;->getClassPathEntries(Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)Ljava/util/Set;

    move-result-object v1
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_81

    return-object v1

    .line 854
    :catch_81
    move-exception v2

    .line 855
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Failed to scan classes"

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 831
    .end local v0    # "scanner":Landroidx/test/internal/runner/ClassPathScanner;
    .end local v3    # "filter":Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;
    :cond_8c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "neither test class to execute or class paths were provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_95

    :goto_94
    throw v0

    :goto_95
    goto :goto_94
.end method

.method private getDeviceHardware()Ljava/lang/String;
    .registers 2

    .line 887
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->deviceBuild:Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;

    invoke-interface {v0}, Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;->getHardware()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceSdkInt()I
    .registers 2

    .line 883
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->deviceBuild:Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;

    invoke-interface {v0}, Landroidx/test/internal/runner/TestRequestBuilder$DeviceBuild;->getSdkVersionInt()I

    move-result v0

    return v0
.end method

.method private getRunnerBuilder(Landroidx/test/internal/util/AndroidRunnerParams;Z)Lorg/junit/runners/model/RunnerBuilder;
    .registers 5
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

    .line 819
    iget-boolean v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->skipExecution:Z

    if-eqz v0, :cond_c

    .line 822
    new-instance v0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->customRunnerBuilderClasses:Ljava/util/List;

    invoke-direct {v0, p1, p2, v1}, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V

    .local v0, "builder":Lorg/junit/runners/model/RunnerBuilder;
    goto :goto_13

    .line 824
    .end local v0    # "builder":Lorg/junit/runners/model/RunnerBuilder;
    :cond_c
    new-instance v0, Landroidx/test/internal/runner/AndroidRunnerBuilder;

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->customRunnerBuilderClasses:Ljava/util/List;

    invoke-direct {v0, p1, p2, v1}, Landroidx/test/internal/runner/AndroidRunnerBuilder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V

    .line 826
    .restart local v0    # "builder":Lorg/junit/runners/model/RunnerBuilder;
    :goto_13
    return-object v0
.end method

.method private loadAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 872
    const-string v0, "TestRequestBuilder"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_8} :catch_18
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    .line 873
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .line 876
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_9
    move-exception v3

    .line 877
    .local v3, "e":Ljava/lang/ClassCastException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "Class %s is not an annotation"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 874
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catch_18
    move-exception v3

    .line 875
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "Could not find annotation class: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 879
    :goto_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeAddLegacySuppressFilter()V
    .registers 4

    .line 513
    :try_start_0
    const-string v0, "android.test.suitebuilder.annotation.Suppress"

    .line 515
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 516
    .local v0, "legacySuppressClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->filter:Lorg/junit/runner/manipulation/Filter;

    new-instance v2, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;

    invoke-direct {v2, v0}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lorg/junit/runner/manipulation/Filter;->intersect(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->filter:Lorg/junit/runner/manipulation/Filter;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 519
    .end local v0    # "legacySuppressClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    goto :goto_15

    .line 517
    :catch_14
    move-exception v0

    .line 520
    :goto_15
    return-void
.end method

.method private validate(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 802
    .local p1, "classNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->pathsToScan:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 803
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide either classes to run, or paths to scan"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public addAnnotationExclusionFilter(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 4
    .param p1, "notAnnotation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notAnnotation"
        }
    .end annotation

    .line 671
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder;->loadAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 672
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_e

    .line 673
    new-instance v1, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;

    invoke-direct {v1, v0}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationExclusionFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addFilter(Lorg/junit/runner/manipulation/Filter;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 675
    :cond_e
    return-object p0
.end method

.method public addAnnotationInclusionFilter(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 4
    .param p1, "annotation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotation"
        }
    .end annotation

    .line 658
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/TestRequestBuilder;->loadAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 659
    .local v0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz v0, :cond_e

    .line 660
    new-instance v1, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;

    invoke-direct {v1, v0}, Landroidx/test/internal/runner/TestRequestBuilder$AnnotationInclusionFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addFilter(Lorg/junit/runner/manipulation/Filter;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 662
    :cond_e
    return-object p0
.end method

.method public addCustomRunnerBuilderClass(Ljava/lang/Class;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerBuilderClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;)",
            "Landroidx/test/internal/runner/TestRequestBuilder;"
        }
    .end annotation

    .line 689
    .local p1, "runnerBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;"
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->customRunnerBuilderClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    return-object p0
.end method

.method public addFilter(Lorg/junit/runner/manipulation/Filter;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->filter:Lorg/junit/runner/manipulation/Filter;

    invoke-virtual {v0, p1}, Lorg/junit/runner/manipulation/Filter;->intersect(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->filter:Lorg/junit/runner/manipulation/Filter;

    .line 684
    return-object p0
.end method

.method public addFromRunnerArgs(Landroidx/test/internal/runner/RunnerArgs;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 7
    .param p1, "runnerArgs"    # Landroidx/test/internal/runner/RunnerArgs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerArgs"
        }
    .end annotation

    .line 710
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->tests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;

    .line 711
    .local v1, "test":Landroidx/test/internal/runner/RunnerArgs$TestArg;
    iget-object v2, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->methodName:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 712
    iget-object v2, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/test/internal/runner/TestRequestBuilder;->addTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    goto :goto_23

    .line 714
    :cond_1c
    iget-object v2, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    iget-object v3, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->methodName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroidx/test/internal/runner/TestRequestBuilder;->addTestMethod(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 716
    .end local v1    # "test":Landroidx/test/internal/runner/RunnerArgs$TestArg;
    :goto_23
    goto :goto_6

    .line 717
    :cond_24
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->notTests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;

    .line 718
    .restart local v1    # "test":Landroidx/test/internal/runner/RunnerArgs$TestArg;
    iget-object v2, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->methodName:Ljava/lang/String;

    if-nez v2, :cond_40

    .line 719
    iget-object v2, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/test/internal/runner/TestRequestBuilder;->removeTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    goto :goto_47

    .line 721
    :cond_40
    iget-object v2, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    iget-object v3, v1, Landroidx/test/internal/runner/RunnerArgs$TestArg;->methodName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroidx/test/internal/runner/TestRequestBuilder;->removeTestMethod(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 723
    .end local v1    # "test":Landroidx/test/internal/runner/RunnerArgs$TestArg;
    :goto_47
    goto :goto_2a

    .line 724
    :cond_48
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->testPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 725
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addTestPackage(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 726
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_4e

    .line 727
    :cond_5e
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->notTestPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 728
    .restart local v1    # "pkg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->removeTestPackage(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 729
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_64

    .line 730
    :cond_74
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->testSize:Ljava/lang/String;

    if-eqz v0, :cond_81

    .line 731
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->testSize:Ljava/lang/String;

    invoke-static {v0}, Landroidx/test/internal/runner/TestSize;->fromString(Ljava/lang/String;)Landroidx/test/internal/runner/TestSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->addTestSizeFilter(Landroidx/test/internal/runner/TestSize;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 733
    :cond_81
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 734
    .local v1, "annotation":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addAnnotationInclusionFilter(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 735
    .end local v1    # "annotation":Ljava/lang/String;
    goto :goto_87

    .line 736
    :cond_97
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->notAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 737
    .local v1, "notAnnotation":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addAnnotationExclusionFilter(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 738
    .end local v1    # "notAnnotation":Ljava/lang/String;
    goto :goto_9d

    .line 739
    :cond_ad
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/manipulation/Filter;

    .line 740
    .local v1, "filter":Lorg/junit/runner/manipulation/Filter;
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addFilter(Lorg/junit/runner/manipulation/Filter;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 741
    .end local v1    # "filter":Lorg/junit/runner/manipulation/Filter;
    goto :goto_b3

    .line 742
    :cond_c3
    iget-wide v0, p1, Landroidx/test/internal/runner/RunnerArgs;->testTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_d0

    .line 743
    iget-wide v0, p1, Landroidx/test/internal/runner/RunnerArgs;->testTimeout:J

    invoke-virtual {p0, v0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->setPerTestTimeout(J)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 745
    :cond_d0
    iget v0, p1, Landroidx/test/internal/runner/RunnerArgs;->numShards:I

    if-lez v0, :cond_e5

    iget v0, p1, Landroidx/test/internal/runner/RunnerArgs;->shardIndex:I

    if-ltz v0, :cond_e5

    iget v0, p1, Landroidx/test/internal/runner/RunnerArgs;->shardIndex:I

    iget v1, p1, Landroidx/test/internal/runner/RunnerArgs;->numShards:I

    if-ge v0, v1, :cond_e5

    .line 748
    iget v0, p1, Landroidx/test/internal/runner/RunnerArgs;->numShards:I

    iget v1, p1, Landroidx/test/internal/runner/RunnerArgs;->shardIndex:I

    invoke-virtual {p0, v0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addShardingFilter(II)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 750
    :cond_e5
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->logOnly:Z

    if-eqz v0, :cond_ed

    .line 751
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->setSkipExecution(Z)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 753
    :cond_ed
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_f6

    .line 754
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->setClassLoader(Ljava/lang/ClassLoader;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 756
    :cond_f6
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->runnerBuilderClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 757
    .local v1, "runnerBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;"
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addCustomRunnerBuilderClass(Ljava/lang/Class;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 758
    .end local v1    # "runnerBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;"
    goto :goto_fc

    .line 759
    :cond_10c
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->testsRegEx:Ljava/lang/String;

    if-eqz v0, :cond_115

    .line 760
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->testsRegEx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->setTestsRegExFilter(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 762
    :cond_115
    return-object p0
.end method

.method public addPathToScan(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->pathsToScan:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    return-object p0
.end method

.method public addPathsToScan(Ljava/lang/Iterable;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/internal/runner/TestRequestBuilder;"
        }
    .end annotation

    .line 529
    .local p1, "paths":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 530
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/TestRequestBuilder;->addPathToScan(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;

    .line 531
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_4

    .line 532
    :cond_14
    return-object p0
.end method

.method public addShardingFilter(II)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 4
    .param p1, "numShards"    # I
    .param p2, "shardIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numShards",
            "shardIndex"
        }
    .end annotation

    .line 679
    new-instance v0, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;

    invoke-direct {v0, p1, p2}, Landroidx/test/internal/runner/TestRequestBuilder$ShardingFilter;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->addFilter(Lorg/junit/runner/manipulation/Filter;)Landroidx/test/internal/runner/TestRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 574
    return-object p0
.end method

.method public addTestMethod(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 4
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testClassName",
            "testMethodName"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->classMethodFilter:Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;

    invoke-virtual {v0, p1, p2}, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->addMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-object p0
.end method

.method public addTestPackage(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .param p1, "testPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testPackage"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 610
    return-object p0
.end method

.method public addTestSizeFilter(Landroidx/test/internal/runner/TestSize;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 5
    .param p1, "forTestSize"    # Landroidx/test/internal/runner/TestSize;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forTestSize"
        }
    .end annotation

    .line 644
    sget-object v0, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0, p1}, Landroidx/test/internal/runner/TestSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 645
    new-instance v0, Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/TestRequestBuilder$SizeFilter;-><init>(Landroidx/test/internal/runner/TestSize;)V

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->addFilter(Lorg/junit/runner/manipulation/Filter;)Landroidx/test/internal/runner/TestRequestBuilder;

    goto :goto_26

    .line 647
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/test/internal/runner/TestSize;->getSizeQualifierName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unrecognized test size \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestRequestBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_26
    return-object p0
.end method

.method public build()Lorg/junit/runner/Request;
    .registers 12

    .line 771
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedPackages:Ljava/util/Set;

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedPackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 772
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedClasses:Ljava/util/Set;

    iget-object v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedClasses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 773
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedClasses:Ljava/util/Set;

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->validate(Ljava/util/Set;)V

    .line 775
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedClasses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 778
    .local v0, "scanningPath":Z
    iget-boolean v1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->ignoreSuiteMethods:Z

    if-nez v1, :cond_23

    if-eqz v0, :cond_20

    goto :goto_23

    :cond_20
    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_25

    :cond_23
    :goto_23
    const/4 v1, 0x1

    const/4 v7, 0x1

    .line 780
    .local v7, "ignoreSuiteMethods":Z
    :goto_25
    new-instance v1, Landroidx/test/internal/util/AndroidRunnerParams;

    iget-object v3, p0, Landroidx/test/internal/runner/TestRequestBuilder;->instr:Landroid/app/Instrumentation;

    iget-object v4, p0, Landroidx/test/internal/runner/TestRequestBuilder;->argsBundle:Landroid/os/Bundle;

    iget-wide v5, p0, Landroidx/test/internal/runner/TestRequestBuilder;->perTestTimeout:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroidx/test/internal/util/AndroidRunnerParams;-><init>(Landroid/app/Instrumentation;Landroid/os/Bundle;JZ)V

    .line 782
    .local v1, "runnerParams":Landroidx/test/internal/util/AndroidRunnerParams;
    invoke-direct {p0, v1, v0}, Landroidx/test/internal/runner/TestRequestBuilder;->getRunnerBuilder(Landroidx/test/internal/util/AndroidRunnerParams;Z)Lorg/junit/runners/model/RunnerBuilder;

    move-result-object v2

    .line 784
    .local v2, "runnerBuilder":Lorg/junit/runners/model/RunnerBuilder;
    iget-object v3, p0, Landroidx/test/internal/runner/TestRequestBuilder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v2, v0}, Landroidx/test/internal/runner/TestLoader;->testLoader(Ljava/lang/ClassLoader;Lorg/junit/runners/model/RunnerBuilder;Z)Landroidx/test/internal/runner/TestLoader;

    move-result-object v3

    .line 786
    .local v3, "loader":Landroidx/test/internal/runner/TestLoader;
    if-eqz v0, :cond_42

    .line 788
    invoke-direct {p0}, Landroidx/test/internal/runner/TestRequestBuilder;->getClassNamesFromClassPath()Ljava/util/Collection;

    move-result-object v4

    .local v4, "classNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_44

    .line 790
    .end local v4    # "classNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_42
    iget-object v4, p0, Landroidx/test/internal/runner/TestRequestBuilder;->includedClasses:Ljava/util/Set;

    .line 793
    .restart local v4    # "classNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_44
    invoke-virtual {v3, v4, v0}, Landroidx/test/internal/runner/TestLoader;->getRunnersFor(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object v5

    .line 795
    .local v5, "runners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Runner;>;"
    invoke-static {v5}, Landroidx/test/internal/runner/TestRequestBuilder$ExtendedSuite;->createSuite(Ljava/util/List;)Lorg/junit/runners/Suite;

    move-result-object v6

    .line 796
    .local v6, "suite":Lorg/junit/runners/Suite;
    invoke-static {v6}, Lorg/junit/runner/Request;->runner(Lorg/junit/runner/Runner;)Lorg/junit/runner/Request;

    move-result-object v8

    .line 797
    .local v8, "request":Lorg/junit/runner/Request;
    new-instance v9, Landroidx/test/internal/runner/TestRequestBuilder$LenientFilterRequest;

    iget-object v10, p0, Landroidx/test/internal/runner/TestRequestBuilder;->filter:Lorg/junit/runner/manipulation/Filter;

    invoke-direct {v9, v8, v10}, Landroidx/test/internal/runner/TestRequestBuilder$LenientFilterRequest;-><init>(Lorg/junit/runner/Request;Lorg/junit/runner/manipulation/Filter;)V

    return-object v9
.end method

.method createClassPathScanner(Ljava/util/List;)Landroidx/test/internal/runner/ClassPathScanner;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/test/internal/runner/ClassPathScanner;"
        }
    .end annotation

    .line 866
    .local p1, "classPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroidx/test/internal/runner/ClassPathScanner;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/ClassPathScanner;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public ignoreSuiteMethods(Z)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 2
    .param p1, "ignoreSuiteMethods"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreSuiteMethods"
        }
    .end annotation

    .line 562
    iput-boolean p1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->ignoreSuiteMethods:Z

    .line 563
    return-object p0
.end method

.method public removeTestClass(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    return-object p0
.end method

.method public removeTestMethod(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 4
    .param p1, "testClassName"    # Ljava/lang/String;
    .param p2, "testMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testClassName",
            "testMethodName"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->classMethodFilter:Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;

    invoke-virtual {v0, p1, p2}, Landroidx/test/internal/runner/TestRequestBuilder$ClassAndMethodFilter;->removeMethod(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-object p0
.end method

.method public removeTestPackage(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .param p1, "testPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testPackage"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->excludedPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    return-object p0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loader"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->classLoader:Ljava/lang/ClassLoader;

    .line 553
    return-object p0
.end method

.method public setPerTestTimeout(J)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    .line 704
    iput-wide p1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->perTestTimeout:J

    .line 705
    return-object p0
.end method

.method public setSkipExecution(Z)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 2
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 698
    iput-boolean p1, p0, Landroidx/test/internal/runner/TestRequestBuilder;->skipExecution:Z

    .line 699
    return-object p0
.end method

.method public setTestsRegExFilter(Ljava/lang/String;)Landroidx/test/internal/runner/TestRequestBuilder;
    .registers 3
    .param p1, "testsRegex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testsRegex"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroidx/test/internal/runner/TestRequestBuilder;->testsRegExFilter:Landroidx/test/internal/runner/filters/TestsRegExFilter;

    invoke-virtual {v0, p1}, Landroidx/test/internal/runner/filters/TestsRegExFilter;->setPattern(Ljava/lang/String;)V

    .line 635
    return-object p0
.end method
