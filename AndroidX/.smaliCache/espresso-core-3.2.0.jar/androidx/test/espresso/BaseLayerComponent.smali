.class public interface abstract Landroidx/test/espresso/BaseLayerComponent;
.super Ljava/lang/Object;
.source "BaseLayerComponent.java"


# virtual methods
.method public abstract activeRootLister()Landroidx/test/espresso/base/ActiveRootLister;
.end method

.method public abstract controlledLooper()Landroidx/test/internal/platform/os/ControlledLooper;
.end method

.method public abstract failureHandler()Landroidx/test/espresso/FailureHandler;
.end method

.method public abstract failureHolder()Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;
.end method

.method public abstract idlingResourceRegistry()Landroidx/test/espresso/base/IdlingResourceRegistry;
.end method

.method public abstract mainThreadExecutor()Ljava/util/concurrent/Executor;
    .annotation runtime Landroidx/test/espresso/base/MainThread;
    .end annotation
.end method

.method public abstract plus(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionComponent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation
.end method

.method public abstract uiController()Landroidx/test/espresso/UiController;
.end method
