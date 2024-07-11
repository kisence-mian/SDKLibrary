.class public Landroidx/test/internal/runner/listener/CoverageListener;
.super Landroidx/test/internal/runner/listener/InstrumentationRunListener;
.source "CoverageListener.java"


# static fields
.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final EMMA_RUNTIME_CLASS:Ljava/lang/String; = "com.vladium.emma.rt.RT"

.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"

.field private static final TAG:Ljava/lang/String; = "CoverageListener"


# instance fields
.field private coverageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "customCoverageFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customCoverageFilePath"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private generateCoverageReport(Ljava/io/PrintStream;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "writer"    # Ljava/io/PrintStream;
    .param p2, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "results"
        }
    .end annotation

    .line 76
    const-string v0, "com.vladium.emma.rt.RT"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "coverageFile":Ljava/io/File;
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 87
    :try_start_b
    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/CoverageListener;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 86
    invoke-static {v0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_1b} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_1b} :catch_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_1b} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1b} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_1b} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_1b} :catch_1c

    .line 95
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_48

    .line 118
    .end local v0    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1c
    move-exception v0

    goto :goto_88

    .line 116
    :catch_1e
    move-exception v0

    goto :goto_8c

    .line 114
    :catch_20
    move-exception v0

    goto :goto_90

    .line 112
    :catch_22
    move-exception v0

    goto :goto_94

    .line 110
    :catch_24
    move-exception v0

    goto :goto_98

    .line 88
    :catch_26
    move-exception v4

    .line 89
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 91
    :try_start_28
    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/CoverageListener;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 90
    invoke-static {v0, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    .restart local v0    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "Generating coverage for alternate test context."

    .line 93
    .local v5, "msg":Ljava/lang/String;
    const-string v6, "CoverageListener"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v6, "\nWarning: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 97
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "msg":Ljava/lang/String;
    :goto_48
    const-string v4, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 98
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 101
    .local v4, "dumpCoverageMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "coverageFilePath"

    iget-object v6, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v5, "\nGenerated code coverage data to %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    aput-object v6, v3, v2

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_86
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_86} :catch_9c
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_86} :catch_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_86} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_86} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_86} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_86} :catch_1c

    .line 120
    nop

    .end local v0    # "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "dumpCoverageMethod":Ljava/lang/reflect/Method;
    goto :goto_a3

    .line 119
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_88
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/listener/CoverageListener;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V

    goto :goto_a3

    .line 117
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_8c
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/listener/CoverageListener;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_9b

    .line 115
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_90
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/listener/CoverageListener;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_9b

    .line 113
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_94
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/listener/CoverageListener;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_9b

    .line 111
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_98
    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/listener/CoverageListener;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V

    .line 120
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_9b
    goto :goto_a3

    .line 108
    :catch_9c
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "Is Emma/JaCoCo jar on classpath?"

    invoke-direct {p0, p1, v2, v0}, Landroidx/test/internal/runner/listener/CoverageListener;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_9b

    .line 121
    :goto_a3
    return-void
.end method

.method private reportEmmaError(Ljava/io/PrintStream;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/PrintStream;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "e"
        }
    .end annotation

    .line 124
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Landroidx/test/internal/runner/listener/CoverageListener;->reportEmmaError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    return-void
.end method

.method private reportEmmaError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .param p1, "writer"    # Ljava/io/PrintStream;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "hint",
            "e"
        }
    .end annotation

    .line 128
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Failed to generate Emma/JaCoCo coverage. "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "msg":Ljava/lang/String;
    :goto_16
    const-string v1, "CoverageListener"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "\nError: %s"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 131
    return-void
.end method


# virtual methods
.method public instrumentationRunFinished(Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/PrintStream;
    .param p2, "results"    # Landroid/os/Bundle;
    .param p3, "junitResults"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "results",
            "junitResults"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/test/internal/runner/listener/CoverageListener;->generateCoverageReport(Ljava/io/PrintStream;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .registers 6
    .param p1, "instr"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instr"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->setInstrumentation(Landroid/app/Instrumentation;)V

    .line 60
    iget-object v0, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    if-nez v0, :cond_42

    .line 61
    nop

    .line 62
    invoke-virtual {p1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "coverage.ec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/listener/CoverageListener;->coverageFilePath:Ljava/lang/String;

    .line 66
    :cond_42
    return-void
.end method
