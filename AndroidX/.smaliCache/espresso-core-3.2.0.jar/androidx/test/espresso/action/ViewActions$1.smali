.class Landroidx/test/espresso/action/ViewActions$1;
.super Ljava/lang/Object;
.source "ViewActions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/action/ViewActions;->actionWithAssertions(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewAction:Landroidx/test/espresso/ViewAction;


# direct methods
.method constructor <init>(Landroidx/test/espresso/ViewAction;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$viewAction"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Landroidx/test/espresso/action/ViewActions$1;->val$viewAction:Landroidx/test/espresso/ViewAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Landroidx/test/espresso/action/ViewActions$1;->val$viewAction:Landroidx/test/espresso/ViewAction;

    invoke-interface {v0}, Landroidx/test/espresso/ViewAction;->getConstraints()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Running view assertions["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    # getter for: Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;
    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->access$000()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 113
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    goto :goto_f

    .line 116
    :cond_28
    const-string v1, "] and then running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Landroidx/test/espresso/action/ViewActions$1;->val$viewAction:Landroidx/test/espresso/ViewAction;

    invoke-interface {v1}, Landroidx/test/espresso/ViewAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uic",
            "view"
        }
    .end annotation

    .line 128
    # getter for: Landroidx/test/espresso/action/ViewActions;->globalAssertions:Ljava/util/Set;
    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 129
    const-string v2, "Asserting "

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    :cond_29
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_2f
    const-string v3, "ViewAssertion"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/test/espresso/ViewAssertion;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroidx/test/espresso/ViewAssertion;->check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V

    .line 131
    goto :goto_8

    .line 132
    :cond_3d
    iget-object v0, p0, Landroidx/test/espresso/action/ViewActions$1;->val$viewAction:Landroidx/test/espresso/ViewAction;

    invoke-interface {v0, p1, p2}, Landroidx/test/espresso/ViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 133
    return-void
.end method
