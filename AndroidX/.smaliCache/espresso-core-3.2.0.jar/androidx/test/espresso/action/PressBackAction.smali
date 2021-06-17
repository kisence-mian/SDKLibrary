.class public final Landroidx/test/espresso/action/PressBackAction;
.super Landroidx/test/espresso/action/KeyEventActionBase;
.source "PressBackAction.java"


# instance fields
.field private final conditional:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conditional"
        }
    .end annotation

    .line 36
    new-instance v0, Landroidx/test/espresso/action/EspressoKey$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/action/EspressoKey$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/test/espresso/action/EspressoKey$Builder;->withKeyCode(I)Landroidx/test/espresso/action/EspressoKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/action/EspressoKey$Builder;->build()Landroidx/test/espresso/action/EspressoKey;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/test/espresso/action/PressBackAction;-><init>(ZLandroidx/test/espresso/action/EspressoKey;)V

    .line 37
    return-void
.end method

.method public constructor <init>(ZLandroidx/test/espresso/action/EspressoKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conditional",
            "espressoKey"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p2}, Landroidx/test/espresso/action/KeyEventActionBase;-><init>(Landroidx/test/espresso/action/EspressoKey;)V

    .line 41
    iput-boolean p1, p0, Landroidx/test/espresso/action/PressBackAction;->conditional:Z

    .line 42
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
    .registers 4
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

    .line 47
    invoke-static {}, Landroidx/test/espresso/action/PressBackAction;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/test/espresso/action/KeyEventActionBase;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 52
    invoke-static {p1, v0}, Landroidx/test/espresso/action/PressBackAction;->waitForStageChangeInitialActivity(Landroidx/test/espresso/UiController;Landroid/app/Activity;)V

    .line 54
    iget-boolean p2, p0, Landroidx/test/espresso/action/PressBackAction;->conditional:Z

    invoke-static {p1, p2}, Landroidx/test/espresso/action/PressBackAction;->waitForPendingForegroundActivities(Landroidx/test/espresso/UiController;Z)V

    .line 55
    return-void
.end method
