.class final synthetic Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;


# instance fields
.field private final arg$1:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$0;->arg$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$0;->arg$1:Ljava/lang/Class;

    invoke-static {v0}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->lambda$new$0$ActivityScenarioRule(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;

    move-result-object v0

    return-object v0
.end method
