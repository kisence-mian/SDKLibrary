.class public Landroidx/test/internal/util/AndroidRunnerBuilderUtil;
.super Ljava/lang/Object;
.source "AndroidRunnerBuilderUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasJUnit3TestMethod(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadedClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 62
    .local p0, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 63
    .local v4, "testMethod":Ljava/lang/reflect/Method;
    invoke-static {v4}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->isPublicTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 64
    const/4 v0, 0x1

    return v0

    .line 62
    .end local v4    # "testMethod":Ljava/lang/reflect/Method;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 67
    :cond_16
    return v2
.end method

.method public static hasSuiteMethod(Ljava/lang/Class;)Z
    .registers 4
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
            "*>;)Z"
        }
    .end annotation

    .line 54
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "suite"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_8} :catch_b

    .line 57
    nop

    .line 58
    const/4 v0, 0x1

    return v0

    .line 55
    :catch_b
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method public static isJUnit3Test(Ljava/lang/Class;)Z
    .registers 2
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
            "*>;)Z"
        }
    .end annotation

    .line 33
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljunit/framework/TestCase;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isJUnit3TestSuite(Ljava/lang/Class;)Z
    .registers 2
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
            "*>;)Z"
        }
    .end annotation

    .line 43
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljunit/framework/TestSuite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isPublicTestMethod(Ljava/lang/reflect/Method;)Z
    .registers 2
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 72
    invoke-static {p0}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static isTestMethod(Ljava/lang/reflect/Method;)Z
    .registers 3
    .param p0, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_21

    .line 78
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 79
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 77
    :goto_22
    return v0
.end method
