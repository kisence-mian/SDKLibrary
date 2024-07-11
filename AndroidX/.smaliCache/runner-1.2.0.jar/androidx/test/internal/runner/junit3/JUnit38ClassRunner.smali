.class public Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;
.super Lorg/junit/runner/Runner;
.source "JUnit38ClassRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;
.implements Lorg/junit/runner/manipulation/Sortable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;
    }
.end annotation


# instance fields
.field private volatile fTest:Ljunit/framework/Test;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "klass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 103
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljunit/framework/TestSuite;

    const-class v1, Ljunit/framework/TestCase;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljunit/framework/Test;)V
    .registers 2
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 108
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->setTest(Ljunit/framework/Test;)V

    .line 109
    return-void
.end method

.method private static createSuiteDescription(Ljunit/framework/TestSuite;)Ljava/lang/String;
    .registers 7
    .param p0, "ts"    # Ljunit/framework/TestSuite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ts"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->countTestCases()I

    move-result v0

    .line 171
    .local v0, "count":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const-string v3, ""

    goto :goto_19

    :cond_b
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, " [example: %s]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "example":Ljava/lang/String;
    :goto_19
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v3, v4, v1

    const-string v1, "TestSuite with %s tests%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAnnotations(Ljunit/framework/TestCase;)[Ljava/lang/annotation/Annotation;
    .registers 5
    .param p0, "test"    # Ljunit/framework/TestCase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 162
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_13} :catch_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_13} :catch_14

    return-object v0

    .line 164
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_14
    move-exception v1

    goto :goto_18

    .line 163
    :catch_16
    move-exception v1

    .line 165
    nop

    .line 166
    :goto_18
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method private getTest()Ljunit/framework/Test;
    .registers 2

    .line 210
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->fTest:Ljunit/framework/Test;

    return-object v0
.end method

.method static makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;
    .registers 7
    .param p0, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 129
    instance-of v0, p0, Ljunit/framework/TestCase;

    if-eqz v0, :cond_18

    .line 130
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestCase;

    .line 131
    .local v0, "tc":Ljunit/framework/TestCase;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getAnnotations(Ljunit/framework/TestCase;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 132
    .end local v0    # "tc":Ljunit/framework/TestCase;
    :cond_18
    instance-of v0, p0, Ljunit/framework/TestSuite;

    if-eqz v0, :cond_4b

    .line 133
    move-object v0, p0

    check-cast v0, Ljunit/framework/TestSuite;

    .line 134
    .local v0, "ts":Ljunit/framework/TestSuite;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    invoke-static {v0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->createSuiteDescription(Ljunit/framework/TestSuite;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "name":Ljava/lang/String;
    :goto_2e
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-static {v1, v2}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v2

    .line 136
    .local v2, "description":Lorg/junit/runner/Description;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v3

    .line 137
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    if-ge v4, v3, :cond_4a

    .line 138
    invoke-virtual {v0, v4}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v5

    invoke-static {v5}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v5

    .line 139
    .local v5, "made":Lorg/junit/runner/Description;
    invoke-virtual {v2, v5}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    .line 137
    .end local v5    # "made":Lorg/junit/runner/Description;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 141
    .end local v4    # "i":I
    :cond_4a
    return-object v2

    .line 142
    .end local v0    # "ts":Ljunit/framework/TestSuite;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "description":Lorg/junit/runner/Description;
    .end local v3    # "n":I
    :cond_4b
    instance-of v0, p0, Lorg/junit/runner/Describable;

    if-eqz v0, :cond_57

    .line 143
    move-object v0, p0

    check-cast v0, Lorg/junit/runner/Describable;

    .line 144
    .local v0, "adapter":Lorg/junit/runner/Describable;
    invoke-interface {v0}, Lorg/junit/runner/Describable;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 145
    .end local v0    # "adapter":Lorg/junit/runner/Describable;
    :cond_57
    instance-of v0, p0, Ljunit/extensions/TestDecorator;

    if-eqz v0, :cond_67

    .line 146
    move-object v0, p0

    check-cast v0, Ljunit/extensions/TestDecorator;

    .line 147
    .local v0, "decorator":Ljunit/extensions/TestDecorator;
    invoke-virtual {v0}, Ljunit/extensions/TestDecorator;->getTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v1

    return-object v1

    .line 150
    .end local v0    # "decorator":Ljunit/extensions/TestDecorator;
    :cond_67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method private setTest(Ljunit/framework/Test;)V
    .registers 2
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->fTest:Ljunit/framework/Test;

    .line 207
    return-void
.end method


# virtual methods
.method public createAdaptingListener(Lorg/junit/runner/notification/RunNotifier;)Ljunit/framework/TestListener;
    .registers 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "notifier"
        }
    .end annotation

    .line 119
    new-instance v0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;-><init>(Lorg/junit/runner/notification/RunNotifier;Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$1;)V

    return-object v0
.end method

.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .registers 8
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Lorg/junit/runner/manipulation/Filterable;

    if-eqz v0, :cond_12

    .line 178
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Filterable;

    .line 179
    .local v0, "adapter":Lorg/junit/runner/manipulation/Filterable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Filterable;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Filterable;
    goto :goto_54

    .line 180
    :cond_12
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Ljunit/framework/TestSuite;

    if-eqz v0, :cond_54

    .line 181
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Ljunit/framework/TestSuite;

    .line 182
    .local v0, "suite":Ljunit/framework/TestSuite;
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "filtered":Ljunit/framework/TestSuite;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v2

    .line 184
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_44

    .line 185
    invoke-virtual {v0, v3}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v4

    .line 186
    .local v4, "test":Ljunit/framework/Test;
    invoke-static {v4}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 187
    invoke-virtual {v1, v4}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 184
    .end local v4    # "test":Ljunit/framework/Test;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 190
    .end local v3    # "i":I
    :cond_44
    invoke-direct {p0, v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->setTest(Ljunit/framework/Test;)V

    .line 191
    invoke-virtual {v1}, Ljunit/framework/TestSuite;->testCount()I

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_55

    .line 192
    :cond_4e
    new-instance v3, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {v3}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw v3

    .line 180
    .end local v0    # "suite":Ljunit/framework/TestSuite;
    .end local v1    # "filtered":Ljunit/framework/TestSuite;
    .end local v2    # "n":I
    :cond_54
    :goto_54
    nop

    .line 195
    :goto_55
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 124
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .line 113
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    .line 114
    .local v0, "result":Ljunit/framework/TestResult;
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->createAdaptingListener(Lorg/junit/runner/notification/RunNotifier;)Ljunit/framework/TestListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 115
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v1

    invoke-interface {v1, v0}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 116
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .registers 3
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sorter"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    instance-of v0, v0, Lorg/junit/runner/manipulation/Sortable;

    if-eqz v0, :cond_11

    .line 200
    invoke-direct {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->getTest()Ljunit/framework/Test;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/manipulation/Sortable;

    .line 201
    .local v0, "adapter":Lorg/junit/runner/manipulation/Sortable;
    invoke-interface {v0, p1}, Lorg/junit/runner/manipulation/Sortable;->sort(Lorg/junit/runner/manipulation/Sorter;)V

    .line 203
    .end local v0    # "adapter":Lorg/junit/runner/manipulation/Sortable;
    :cond_11
    return-void
.end method
