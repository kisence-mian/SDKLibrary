.class Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
.super Ljava/lang/Object;
.source "InteractionResultsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/InteractionResultsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final failure:Ljava/lang/Throwable;

.field private final priority:Z

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final success:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;ZLjava/lang/Throwable;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "success",
            "failure",
            "priority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->result:Ljava/lang/Object;

    .line 183
    iput-boolean p2, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->success:Z

    .line 184
    iput-object p3, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->failure:Ljava/lang/Throwable;

    .line 185
    iput-boolean p4, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->priority:Z

    .line 186
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;"
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->error(Ljava/lang/Throwable;Z)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/Throwable;Z)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "priorityFailure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Z)",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;"
        }
    .end annotation

    .line 215
    new-instance v0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;-><init>(Ljava/lang/Object;ZLjava/lang/Throwable;Z)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult<",
            "TT;>;"
        }
    .end annotation

    .line 207
    new-instance v0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v1}, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;-><init>(Ljava/lang/Object;ZLjava/lang/Throwable;Z)V

    return-object v0
.end method


# virtual methods
.method public getFailure()Ljava/lang/Throwable;
    .registers 2

    .line 202
    iget-boolean v0, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->success:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 203
    iget-object v0, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->failure:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->success:Z

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 190
    iget-object v0, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isPriority()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->priority:Z

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 220
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->omitNullValues()Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->priority:Z

    .line 222
    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->success:Z

    .line 223
    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->result:Ljava/lang/Object;

    .line 224
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/InteractionResultsHandler$ExecutionResult;->failure:Ljava/lang/Throwable;

    .line 225
    const-string v2, "failure"

    invoke-virtual {v0, v2, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method
