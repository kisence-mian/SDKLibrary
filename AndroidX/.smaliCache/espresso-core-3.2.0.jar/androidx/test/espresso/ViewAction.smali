.class public interface abstract Landroidx/test/espresso/ViewAction;
.super Ljava/lang/Object;
.source "ViewAction.java"


# virtual methods
.method public abstract getConstraints()Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
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
.end method
