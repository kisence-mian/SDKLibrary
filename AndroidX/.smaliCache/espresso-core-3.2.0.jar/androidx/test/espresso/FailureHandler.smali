.class public interface abstract Landroidx/test/espresso/FailureHandler;
.super Ljava/lang/Object;
.source "FailureHandler.java"


# virtual methods
.method public abstract handle(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "viewMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method
