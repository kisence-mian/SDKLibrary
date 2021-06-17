.class final Landroidx/test/runner/screenshot/TakeScreenshotCallable;
.super Ljava/lang/Object;
.source "TakeScreenshotCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TakeScreenshotCallable"


# instance fields
.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/runner/screenshot/TakeScreenshotCallable;->viewRef:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroidx/test/runner/screenshot/TakeScreenshotCallable$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroidx/test/runner/screenshot/TakeScreenshotCallable$1;

    .line 33
    invoke-direct {p0, p1}, Landroidx/test/runner/screenshot/TakeScreenshotCallable;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .registers 6

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroidx/test/runner/screenshot/TakeScreenshotCallable;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 54
    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Landroidx/test/runner/screenshot/TakeScreenshotCallable;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_1e} :catch_22
    .catchall {:try_start_e .. :try_end_1e} :catchall_20

    move-object v0, v2

    .line 58
    goto :goto_2b

    :catchall_20
    move-exception v2

    goto :goto_38

    .line 55
    :catch_22
    move-exception v2

    .line 56
    .local v2, "omm":Ljava/lang/OutOfMemoryError;
    :try_start_23
    const-string v3, "TakeScreenshotCallable"

    const-string v4, "Out of memory exception while trying to take a screenshot."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 58
    nop

    .end local v2    # "omm":Ljava/lang/OutOfMemoryError;
    :goto_2b
    iget-object v2, p0, Landroidx/test/runner/screenshot/TakeScreenshotCallable;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 59
    nop

    .line 60
    return-object v0

    .line 58
    :goto_38
    iget-object v3, p0, Landroidx/test/runner/screenshot/TakeScreenshotCallable;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    throw v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroidx/test/runner/screenshot/TakeScreenshotCallable;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
