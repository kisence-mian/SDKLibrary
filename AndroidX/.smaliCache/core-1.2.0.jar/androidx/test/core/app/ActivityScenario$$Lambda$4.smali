.class final synthetic Landroidx/test/core/app/ActivityScenario$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroidx/test/core/app/ActivityScenario;

.field private final arg$2:Landroidx/test/core/app/ActivityScenario$ActivityAction;


# direct methods
.method constructor <init>(Landroidx/test/core/app/ActivityScenario;Landroidx/test/core/app/ActivityScenario$ActivityAction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario$$Lambda$4;->arg$1:Landroidx/test/core/app/ActivityScenario;

    iput-object p2, p0, Landroidx/test/core/app/ActivityScenario$$Lambda$4;->arg$2:Landroidx/test/core/app/ActivityScenario$ActivityAction;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$$Lambda$4;->arg$1:Landroidx/test/core/app/ActivityScenario;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario$$Lambda$4;->arg$2:Landroidx/test/core/app/ActivityScenario$ActivityAction;

    invoke-virtual {v0, v1}, Landroidx/test/core/app/ActivityScenario;->lambda$onActivity$2$ActivityScenario(Landroidx/test/core/app/ActivityScenario$ActivityAction;)V

    return-void
.end method
