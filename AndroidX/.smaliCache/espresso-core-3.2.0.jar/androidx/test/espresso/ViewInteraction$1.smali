.class Landroidx/test/espresso/ViewInteraction$1;
.super Ljava/lang/Object;
.source "ViewInteraction.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/ViewInteraction;->desugaredPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/ViewInteraction;

.field final synthetic val$va:Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;


# direct methods
.method constructor <init>(Landroidx/test/espresso/ViewInteraction;Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$va"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction$1;->this$0:Landroidx/test/espresso/ViewInteraction;

    iput-object p2, p0, Landroidx/test/espresso/ViewInteraction$1;->val$va:Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteraction$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3

    .line 158
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction$1;->this$0:Landroidx/test/espresso/ViewInteraction;

    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction$1;->val$va:Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;

    # invokes: Landroidx/test/espresso/ViewInteraction;->doPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
    invoke-static {v0, v1}, Landroidx/test/espresso/ViewInteraction;->access$100(Landroidx/test/espresso/ViewInteraction;Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method
