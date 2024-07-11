.class public final Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorExtractor_Factory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;",
        ">;"
    }
.end annotation


# instance fields
.field private final looperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looperProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;->looperProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looperProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/os/Looper;)Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 29
    new-instance v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;
    .registers 3

    .line 21
    new-instance v0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;

    iget-object v1, p0, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;->looperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor_Factory;->get()Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;

    move-result-object v0

    return-object v0
.end method
