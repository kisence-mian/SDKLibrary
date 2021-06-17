.class Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;
.super Ljava/lang/Object;
.source "UiThreadStatement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->evaluate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;

.field final synthetic val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$exceptionRef"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;->this$0:Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;

    iput-object p2, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;->val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 56
    :try_start_0
    iget-object v0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;->this$0:Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;

    # getter for: Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->base:Lorg/junit/runners/model/Statement;
    invoke-static {v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->access$000(Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 59
    goto :goto_10

    .line 57
    :catchall_a
    move-exception v0

    .line 58
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;->val$exceptionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 60
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_10
    return-void
.end method
