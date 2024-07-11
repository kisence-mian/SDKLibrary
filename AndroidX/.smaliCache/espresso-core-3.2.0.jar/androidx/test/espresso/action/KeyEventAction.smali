.class public final Landroidx/test/espresso/action/KeyEventAction;
.super Landroidx/test/espresso/action/KeyEventActionBase;
.source "KeyEventAction.java"


# direct methods
.method public constructor <init>(Landroidx/test/espresso/action/EspressoKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "espressoKey"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Landroidx/test/espresso/action/KeyEventActionBase;-><init>(Landroidx/test/espresso/action/EspressoKey;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic getConstraints()Lorg/hamcrest/Matcher;
    .registers 2

    .line 25
    invoke-super {p0}, Landroidx/test/espresso/action/KeyEventActionBase;->getConstraints()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .registers 2

    .line 25
    invoke-super {p0}, Landroidx/test/espresso/action/KeyEventActionBase;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "view"
        }
    .end annotation

    .line 33
    invoke-static {}, Landroidx/test/espresso/action/KeyEventAction;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 35
    invoke-super {p0, p1, p2}, Landroidx/test/espresso/action/KeyEventActionBase;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Landroidx/test/espresso/action/KeyEventAction;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    invoke-virtual {p2}, Landroidx/test/espresso/action/EspressoKey;->getKeyCode()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_17

    .line 39
    invoke-static {p1, v0}, Landroidx/test/espresso/action/KeyEventAction;->waitForStageChangeInitialActivity(Landroidx/test/espresso/UiController;Landroid/app/Activity;)V

    .line 41
    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/test/espresso/action/KeyEventAction;->waitForPendingForegroundActivities(Landroidx/test/espresso/UiController;Z)V

    .line 43
    :cond_17
    return-void
.end method
