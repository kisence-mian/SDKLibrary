.class Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5$1;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$command"
        }
    .end annotation

    .line 978
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;

    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 981
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5;->thrownFromDelegate:Z

    .line 982
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors$5$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 983
    return-void
.end method
