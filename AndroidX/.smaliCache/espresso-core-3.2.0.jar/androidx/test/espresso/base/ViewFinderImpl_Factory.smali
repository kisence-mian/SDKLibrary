.class public final Landroidx/test/espresso/base/ViewFinderImpl_Factory;
.super Ljava/lang/Object;
.source "ViewFinderImpl_Factory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/base/ViewFinderImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final rootViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewMatcherProvider",
            "rootViewProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/test/espresso/base/ViewFinderImpl_Factory;->viewMatcherProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Landroidx/test/espresso/base/ViewFinderImpl_Factory;->rootViewProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/ViewFinderImpl_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewMatcherProvider",
            "rootViewProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/base/ViewFinderImpl_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Landroidx/test/espresso/base/ViewFinderImpl_Factory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/ViewFinderImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lorg/hamcrest/Matcher;Ljavax/inject/Provider;)Landroidx/test/espresso/base/ViewFinderImpl;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewMatcher",
            "rootViewProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/base/ViewFinderImpl;"
        }
    .end annotation

    .line 36
    new-instance v0, Landroidx/test/espresso/base/ViewFinderImpl;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/ViewFinderImpl;-><init>(Lorg/hamcrest/Matcher;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/ViewFinderImpl;
    .registers 4

    .line 26
    new-instance v0, Landroidx/test/espresso/base/ViewFinderImpl;

    iget-object v1, p0, Landroidx/test/espresso/base/ViewFinderImpl_Factory;->viewMatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hamcrest/Matcher;

    iget-object v2, p0, Landroidx/test/espresso/base/ViewFinderImpl_Factory;->rootViewProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/ViewFinderImpl;-><init>(Lorg/hamcrest/Matcher;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0}, Landroidx/test/espresso/base/ViewFinderImpl_Factory;->get()Landroidx/test/espresso/base/ViewFinderImpl;

    move-result-object v0

    return-object v0
.end method
