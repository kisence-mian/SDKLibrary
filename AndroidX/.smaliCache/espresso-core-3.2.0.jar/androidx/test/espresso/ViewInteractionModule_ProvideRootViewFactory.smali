.class public final Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;
.super Ljava/lang/Object;
.source "ViewInteractionModule_ProvideRootViewFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Landroidx/test/espresso/ViewInteractionModule;

.field private final rootViewPickerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootViewPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/test/espresso/ViewInteractionModule;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "rootViewPickerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/ViewInteractionModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootViewPicker;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    .line 22
    iput-object p2, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;->rootViewPickerProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create(Landroidx/test/espresso/ViewInteractionModule;Ljavax/inject/Provider;)Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "rootViewPickerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/ViewInteractionModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootViewPicker;",
            ">;)",
            "Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;-><init>(Landroidx/test/espresso/ViewInteractionModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRootView(Landroidx/test/espresso/ViewInteractionModule;Landroidx/test/espresso/base/RootViewPicker;)Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "rootViewPicker"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroidx/test/espresso/ViewInteractionModule;->provideRootView(Landroidx/test/espresso/base/RootViewPicker;)Landroid/view/View;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/view/View;
    .registers 3

    .line 27
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    iget-object v1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;->rootViewPickerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/RootViewPicker;

    invoke-static {v0, v1}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;->provideRootView(Landroidx/test/espresso/ViewInteractionModule;Landroidx/test/espresso/base/RootViewPicker;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;->get()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
