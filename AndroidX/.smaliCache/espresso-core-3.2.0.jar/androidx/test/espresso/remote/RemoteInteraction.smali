.class public interface abstract Landroidx/test/espresso/remote/RemoteInteraction;
.super Ljava/lang/Object;
.source "RemoteInteraction.java"


# static fields
.field public static final BUNDLE_EXECUTION_STATUS:Ljava/lang/String; = "executionStatus"


# virtual methods
.method public abstract createRemoteCheckCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;Landroidx/test/espresso/ViewAssertion;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootMatcher",
            "viewMatcher",
            "iBinders",
            "viewAssert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroidx/test/espresso/ViewAssertion;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract createRemotePerformCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;[Landroidx/test/espresso/ViewAction;)Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootMatcher",
            "viewMatcher",
            "iBinders",
            "viewActions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;[",
            "Landroidx/test/espresso/ViewAction;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isRemoteProcess()Z
.end method
