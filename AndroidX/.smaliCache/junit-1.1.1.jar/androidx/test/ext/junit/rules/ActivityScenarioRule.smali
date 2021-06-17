.class public final Landroidx/test/ext/junit/rules/ActivityScenarioRule;
.super Lorg/junit/rules/ExternalResource;
.source "ActivityScenarioRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Lorg/junit/rules/ExternalResource;"
    }
.end annotation


# instance fields
.field private scenario:Landroidx/test/core/app/ActivityScenario;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier<",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3
    .param p1, "startActivityIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .line 76
    .local p0, "this":Landroidx/test/ext/junit/rules/ActivityScenarioRule;, "Landroidx/test/ext/junit/rules/ActivityScenarioRule<TA;>;"
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 77
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;

    invoke-direct {v0, p1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$1;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Landroidx/test/ext/junit/rules/ActivityScenarioRule;, "Landroidx/test/ext/junit/rules/ActivityScenarioRule<TA;>;"
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 68
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$0;

    invoke-direct {v0, p1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$$Lambda$0;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    .line 69
    return-void
.end method

.method static final synthetic lambda$new$0$ActivityScenarioRule(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .registers 2
    .param p0, "activityClass"    # Ljava/lang/Class;

    .line 68
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->launch(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic lambda$new$1$ActivityScenarioRule(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .registers 2
    .param p0, "startActivityIntent"    # Landroid/content/Intent;

    .line 77
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->launch(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected after()V
    .registers 2

    .line 87
    .local p0, "this":Landroidx/test/ext/junit/rules/ActivityScenarioRule;, "Landroidx/test/ext/junit/rules/ActivityScenarioRule<TA;>;"
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    invoke-virtual {v0}, Landroidx/test/core/app/ActivityScenario;->close()V

    .line 88
    return-void
.end method

.method protected before()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    .local p0, "this":Landroidx/test/ext/junit/rules/ActivityScenarioRule;, "Landroidx/test/ext/junit/rules/ActivityScenarioRule<TA;>;"
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenarioSupplier:Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;

    invoke-interface {v0}, Landroidx/test/ext/junit/rules/ActivityScenarioRule$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/core/app/ActivityScenario;

    iput-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    .line 83
    return-void
.end method

.method public getScenario()Landroidx/test/core/app/ActivityScenario;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroidx/test/ext/junit/rules/ActivityScenarioRule;, "Landroidx/test/ext/junit/rules/ActivityScenarioRule<TA;>;"
    iget-object v0, p0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;->scenario:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/core/app/ActivityScenario;

    return-object v0
.end method
