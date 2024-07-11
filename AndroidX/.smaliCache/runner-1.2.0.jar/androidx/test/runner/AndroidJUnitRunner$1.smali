.class Landroidx/test/runner/AndroidJUnitRunner$1;
.super Ljava/lang/Object;
.source "AndroidJUnitRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/runner/AndroidJUnitRunner;->addListenersLegacyOrder(Landroidx/test/internal/runner/RunnerArgs;Landroidx/test/internal/runner/TestExecutor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/runner/AndroidJUnitRunner;


# direct methods
.method constructor <init>(Landroidx/test/runner/AndroidJUnitRunner;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/test/runner/AndroidJUnitRunner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 442
    iput-object p1, p0, Landroidx/test/runner/AndroidJUnitRunner$1;->this$0:Landroidx/test/runner/AndroidJUnitRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 447
    iget-object v0, p0, Landroidx/test/runner/AndroidJUnitRunner$1;->this$0:Landroidx/test/runner/AndroidJUnitRunner;

    invoke-virtual {v0}, Landroidx/test/runner/AndroidJUnitRunner;->waitForActivitiesToComplete()V

    .line 448
    return-void
.end method
