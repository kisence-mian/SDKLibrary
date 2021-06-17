.class public final Landroidx/test/internal/runner/TestSize;
.super Ljava/lang/Object;
.source "TestSize.java"


# static fields
.field private static final ALL_SIZES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/test/internal/runner/TestSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final LARGE:Landroidx/test/internal/runner/TestSize;

.field public static final MEDIUM:Landroidx/test/internal/runner/TestSize;

.field public static final NONE:Landroidx/test/internal/runner/TestSize;

.field public static final SMALL:Landroidx/test/internal/runner/TestSize;


# instance fields
.field private final platformAnnotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final runnerFilterAnnotationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeQualifierName:Ljava/lang/String;

.field private final testSizeRunTimeThreshold:F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 36
    new-instance v0, Landroidx/test/internal/runner/TestSize;

    const-class v1, Landroidx/test/filters/SmallTest;

    const-string v2, "small"

    const-string v3, "android.test.suitebuilder.annotation.SmallTest"

    const/high16 v4, 0x43480000    # 200.0f

    invoke-direct {v0, v2, v1, v3, v4}, Landroidx/test/internal/runner/TestSize;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V

    sput-object v0, Landroidx/test/internal/runner/TestSize;->SMALL:Landroidx/test/internal/runner/TestSize;

    .line 44
    new-instance v1, Landroidx/test/internal/runner/TestSize;

    const-class v2, Landroidx/test/filters/MediumTest;

    const-string v3, "medium"

    const-string v4, "android.test.suitebuilder.annotation.MediumTest"

    const/high16 v5, 0x447a0000    # 1000.0f

    invoke-direct {v1, v3, v2, v4, v5}, Landroidx/test/internal/runner/TestSize;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V

    sput-object v1, Landroidx/test/internal/runner/TestSize;->MEDIUM:Landroidx/test/internal/runner/TestSize;

    .line 52
    new-instance v2, Landroidx/test/internal/runner/TestSize;

    const-class v3, Landroidx/test/filters/LargeTest;

    const-string v4, "large"

    const-string v5, "android.test.suitebuilder.annotation.LargeTest"

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v2, v4, v3, v5, v6}, Landroidx/test/internal/runner/TestSize;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V

    sput-object v2, Landroidx/test/internal/runner/TestSize;->LARGE:Landroidx/test/internal/runner/TestSize;

    .line 62
    new-instance v3, Landroidx/test/internal/runner/TestSize;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v5, v6}, Landroidx/test/internal/runner/TestSize;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V

    sput-object v3, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    .line 64
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroidx/test/internal/runner/TestSize;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    .line 65
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;F)V
    .registers 6
    .param p1, "sizeQualifierName"    # Ljava/lang/String;
    .param p3, "legacyPlatformAnnotationClassName"    # Ljava/lang/String;
    .param p4, "testSizeRuntimeThreshold"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sizeQualifierName",
            "runnerFilterAnnotationClass",
            "legacyPlatformAnnotationClassName",
            "testSizeRuntimeThreshold"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 82
    .local p2, "runnerFilterAnnotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    .line 84
    invoke-static {p3}, Landroidx/test/internal/runner/TestSize;->loadPlatformAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/TestSize;->platformAnnotationClass:Ljava/lang/Class;

    .line 85
    iput-object p2, p0, Landroidx/test/internal/runner/TestSize;->runnerFilterAnnotationClass:Ljava/lang/Class;

    .line 86
    iput p4, p0, Landroidx/test/internal/runner/TestSize;->testSizeRunTimeThreshold:F

    .line 87
    return-void
.end method

.method public static fromDescription(Lorg/junit/runner/Description;)Landroidx/test/internal/runner/TestSize;
    .registers 5
    .param p0, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 197
    sget-object v0, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    .line 199
    .local v0, "testSize":Landroidx/test/internal/runner/TestSize;
    sget-object v1, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/TestSize;

    .line 200
    .local v2, "testMethodSizeValue":Landroidx/test/internal/runner/TestSize;
    invoke-virtual {v2, p0}, Landroidx/test/internal/runner/TestSize;->testMethodIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 201
    move-object v0, v2

    .line 202
    goto :goto_1d

    .line 204
    .end local v2    # "testMethodSizeValue":Landroidx/test/internal/runner/TestSize;
    :cond_1c
    goto :goto_8

    .line 206
    :cond_1d
    :goto_1d
    sget-object v1, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v1, v0}, Landroidx/test/internal/runner/TestSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 207
    sget-object v1, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/TestSize;

    .line 208
    .local v2, "testClassSizeValue":Landroidx/test/internal/runner/TestSize;
    invoke-virtual {v2, p0}, Landroidx/test/internal/runner/TestSize;->testClassIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 209
    move-object v0, v2

    .line 210
    goto :goto_40

    .line 212
    .end local v2    # "testClassSizeValue":Landroidx/test/internal/runner/TestSize;
    :cond_3f
    goto :goto_2b

    .line 214
    :cond_40
    :goto_40
    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Landroidx/test/internal/runner/TestSize;
    .registers 5
    .param p0, "testSize"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "testSize"
        }
    .end annotation

    .line 183
    sget-object v0, Landroidx/test/internal/runner/TestSize;->NONE:Landroidx/test/internal/runner/TestSize;

    .line 184
    .local v0, "testSizeFromString":Landroidx/test/internal/runner/TestSize;
    sget-object v1, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/TestSize;

    .line 185
    .local v2, "testSizeValue":Landroidx/test/internal/runner/TestSize;
    invoke-virtual {v2}, Landroidx/test/internal/runner/TestSize;->getSizeQualifierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 186
    move-object v0, v2

    .line 188
    .end local v2    # "testSizeValue":Landroidx/test/internal/runner/TestSize;
    :cond_1f
    goto :goto_8

    .line 189
    :cond_20
    return-object v0
.end method

.method private getFrameworkAnnotation()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->platformAnnotationClass:Ljava/lang/Class;

    return-object v0
.end method

.method private getRunnerAnnotation()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->runnerFilterAnnotationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getTestSizeForRunTime(F)Landroidx/test/internal/runner/TestSize;
    .registers 3
    .param p0, "testRuntime"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testRuntime"
        }
    .end annotation

    .line 156
    sget-object v0, Landroidx/test/internal/runner/TestSize;->SMALL:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0}, Landroidx/test/internal/runner/TestSize;->getRunTimeThreshold()F

    move-result v1

    invoke-static {p0, v1}, Landroidx/test/internal/runner/TestSize;->runTimeSmallerThanThreshold(FF)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 157
    return-object v0

    .line 158
    :cond_d
    sget-object v0, Landroidx/test/internal/runner/TestSize;->MEDIUM:Landroidx/test/internal/runner/TestSize;

    invoke-virtual {v0}, Landroidx/test/internal/runner/TestSize;->getRunTimeThreshold()F

    move-result v1

    invoke-static {p0, v1}, Landroidx/test/internal/runner/TestSize;->runTimeSmallerThanThreshold(FF)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 159
    return-object v0

    .line 161
    :cond_1a
    sget-object v0, Landroidx/test/internal/runner/TestSize;->LARGE:Landroidx/test/internal/runner/TestSize;

    return-object v0
.end method

.method private static hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testClass",
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 141
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isAnyTestSize(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 169
    .local p0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-object v0, Landroidx/test/internal/runner/TestSize;->ALL_SIZES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/runner/TestSize;

    .line 170
    .local v1, "testSize":Landroidx/test/internal/runner/TestSize;
    invoke-direct {v1}, Landroidx/test/internal/runner/TestSize;->getRunnerAnnotation()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_20

    .line 171
    invoke-direct {v1}, Landroidx/test/internal/runner/TestSize;->getFrameworkAnnotation()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p0, :cond_1f

    goto :goto_20

    .line 174
    .end local v1    # "testSize":Landroidx/test/internal/runner/TestSize;
    :cond_1f
    goto :goto_6

    .line 172
    .restart local v1    # "testSize":Landroidx/test/internal/runner/TestSize;
    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0

    .line 175
    .end local v1    # "testSize":Landroidx/test/internal/runner/TestSize;
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private static loadPlatformAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "legacyPlatformAnnotationClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyPlatformAnnotationClassName"
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

    .line 91
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 92
    return-object v0

    .line 95
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 96
    :catch_9
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method

.method private static runTimeSmallerThanThreshold(FF)Z
    .registers 3
    .param p0, "testRuntime"    # F
    .param p1, "runtimeThreshold"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testRuntime",
            "runtimeThreshold"
        }
    .end annotation

    .line 237
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 219
    if-ne p0, p1, :cond_4

    .line 220
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 226
    :cond_11
    move-object v0, p1

    check-cast v0, Landroidx/test/internal/runner/TestSize;

    .line 228
    .local v0, "testSize":Landroidx/test/internal/runner/TestSize;
    iget-object v1, p0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    iget-object v2, v0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 223
    .end local v0    # "testSize":Landroidx/test/internal/runner/TestSize;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getRunTimeThreshold()F
    .registers 2

    .line 146
    iget v0, p0, Landroidx/test/internal/runner/TestSize;->testSizeRunTimeThreshold:F

    return v0
.end method

.method public getSizeQualifierName()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 233
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->sizeQualifierName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public testClassIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object v0

    .line 127
    .local v0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 128
    return v1

    .line 131
    :cond_8
    iget-object v2, p0, Landroidx/test/internal/runner/TestSize;->runnerFilterAnnotationClass:Ljava/lang/Class;

    invoke-static {v0, v2}, Landroidx/test/internal/runner/TestSize;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Landroidx/test/internal/runner/TestSize;->platformAnnotationClass:Ljava/lang/Class;

    .line 132
    invoke-static {v0, v2}, Landroidx/test/internal/runner/TestSize;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    .line 136
    :cond_19
    return v1

    .line 134
    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    return v1
.end method

.method public testMethodIsAnnotatedWithTestSize(Lorg/junit/runner/Description;)Z
    .registers 3
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->runnerFilterAnnotationClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/test/internal/runner/TestSize;->platformAnnotationClass:Ljava/lang/Class;

    .line 113
    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 118
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method
