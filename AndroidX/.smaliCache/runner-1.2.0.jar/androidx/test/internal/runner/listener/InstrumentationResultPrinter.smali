.class public Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;
.super Landroidx/test/internal/runner/listener/InstrumentationRunListener;
.source "InstrumentationResultPrinter.java"


# static fields
.field static final MAX_TRACE_SIZE:I = 0x8000

.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "AndroidJUnitRunner"

.field public static final REPORT_VALUE_RESULT_ASSUMPTION_FAILURE:I = -0x4

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_IGNORED:I = -0x3

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InstrumentationResultPrinter"


# instance fields
.field private description:Lorg/junit/runner/Description;

.field private final resultTemplate:Landroid/os/Bundle;

.field testClass:Ljava/lang/String;

.field testNum:I

.field testResult:Landroid/os/Bundle;

.field testResultCode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 111
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testNum:I

    .line 107
    const/16 v0, -0x3e7

    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testClass:Ljava/lang/String;

    .line 109
    sget-object v0, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    iput-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->resultTemplate:Landroid/os/Bundle;

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    .line 114
    return-void
.end method

.method private reportFailure(Lorg/junit/runner/notification/Failure;)V
    .registers 8
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "trace":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x8000

    if-le v1, v4, :cond_30

    .line 182
    new-array v1, v2, [Ljava/lang/Object;

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "Stack trace too long, trimmed to first %s characters."

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v5, "InstrumentationResultPrinter"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_30
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v4, "stack"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v5

    invoke-virtual {v5}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 191
    const-string v2, "\nError in %s:\n%s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v3, "stream"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method public instrumentationRunFinished(Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V
    .registers 5
    .param p1, "streamResult"    # Ljava/io/PrintStream;
    .param p2, "resultBundle"    # Landroid/os/Bundle;
    .param p3, "junitResults"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamResult",
            "resultBundle",
            "junitResults"
        }
    .end annotation

    .line 236
    new-instance v0, Lorg/junit/internal/TextListener;

    invoke-direct {v0, p1}, Lorg/junit/internal/TextListener;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v0, p3}, Lorg/junit/internal/TextListener;->testRunFinished(Lorg/junit/runner/Result;)V

    .line 237
    return-void
.end method

.method public reportProcessCrash(Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 208
    const/4 v0, -0x2

    :try_start_1
    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 209
    new-instance v0, Lorg/junit/runner/notification/Failure;

    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    invoke-direct {v0, v1, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    .line 210
    .local v0, "failure":Lorg/junit/runner/notification/Failure;
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v2, "stack"

    invoke-virtual {v0}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v2, "stream"

    const-string v3, "\nProcess crashed while executing %s:\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    .line 216
    invoke-virtual {v6}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 214
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testFinished(Lorg/junit/runner/Description;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3b

    .line 229
    .end local v0    # "failure":Lorg/junit/runner/notification/Failure;
    goto :goto_73

    .line 218
    :catch_3b
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    const-string v2, "InstrumentationResultPrinter"

    if-nez v1, :cond_48

    .line 221
    const-string v1, "Failed to initialize test before process crash"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 223
    :cond_48
    nop

    .line 226
    invoke-virtual {v1}, Lorg/junit/runner/Description;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to mark test "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as finished after process crash"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_73
    return-void
.end method

.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .registers 5
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 173
    const/4 v0, -0x4

    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 174
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getTrace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .registers 5
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "shouldCallFinish":Z
    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    sget-object v2, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    invoke-virtual {v1, v2}, Lorg/junit/runner/Description;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testNum:I

    if-nez v1, :cond_1b

    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testClass:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 161
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testStarted(Lorg/junit/runner/Description;)V

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_1b
    const/4 v1, -0x2

    iput v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 165
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->reportFailure(Lorg/junit/runner/notification/Failure;)V

    .line 166
    if-eqz v0, :cond_2a

    .line 167
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testFinished(Lorg/junit/runner/Description;)V

    .line 169
    :cond_2a
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iget v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    if-nez v0, :cond_d

    .line 148
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_d
    iget v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    iget-object v1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->sendStatus(ILandroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testStarted(Lorg/junit/runner/Description;)V

    .line 198
    const/4 v0, -0x3

    iput v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 199
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testFinished(Lorg/junit/runner/Description;)V

    .line 200
    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->resultTemplate:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "AndroidJUnitRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->resultTemplate:Landroid/os/Bundle;

    invoke-virtual {p1}, Lorg/junit/runner/Description;->testCount()I

    move-result v1

    const-string v2, "numtests"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .registers 10
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iput-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->description:Lorg/junit/runner/Description;

    .line 126
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "testClass":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "testName":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->resultTemplate:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    .line 129
    const-string v3, "class"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v3, "test"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    iget v3, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testNum:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testNum:I

    const-string v5, "current"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const/4 v2, 0x0

    const-string v3, "stream"

    if-eqz v0, :cond_4b

    iget-object v5, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testClass:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 134
    iget-object v5, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v2

    .line 135
    const-string v7, "\n%s:"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testClass:Ljava/lang/String;

    goto :goto_52

    .line 138
    :cond_4b
    iget-object v5, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_52
    iget-object v3, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResult:Landroid/os/Bundle;

    invoke-virtual {p0, v4, v3}, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->sendStatus(ILandroid/os/Bundle;)V

    .line 142
    iput v2, p0, Landroidx/test/internal/runner/listener/InstrumentationResultPrinter;->testResultCode:I

    .line 143
    return-void
.end method
