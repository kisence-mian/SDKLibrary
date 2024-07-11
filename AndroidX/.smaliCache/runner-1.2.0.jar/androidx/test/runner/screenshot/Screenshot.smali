.class public final Landroidx/test/runner/screenshot/Screenshot;
.super Ljava/lang/Object;
.source "Screenshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;
    }
.end annotation


# static fields
.field private static androidRuntimeVersion:I

.field private static screenCaptureProcessorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private static takeScreenshotCallableFactory:Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;

.field private static uiWrapper:Landroidx/test/runner/screenshot/UiAutomationWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/test/runner/screenshot/Screenshot;->androidRuntimeVersion:I

    .line 50
    new-instance v0, Landroidx/test/runner/screenshot/UiAutomationWrapper;

    invoke-direct {v0}, Landroidx/test/runner/screenshot/UiAutomationWrapper;-><init>()V

    sput-object v0, Landroidx/test/runner/screenshot/Screenshot;->uiWrapper:Landroidx/test/runner/screenshot/UiAutomationWrapper;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/test/runner/screenshot/Screenshot;->screenCaptureProcessorSet:Ljava/util/Set;

    .line 53
    new-instance v0, Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;

    invoke-direct {v0}, Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;-><init>()V

    sput-object v0, Landroidx/test/runner/screenshot/Screenshot;->takeScreenshotCallableFactory:Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addScreenCaptureProcessors(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenCaptureProcessors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p0, "screenCaptureProcessors":Ljava/util/Set;, "Ljava/util/Set<Landroidx/test/runner/screenshot/ScreenCaptureProcessor;>;"
    sget-object v0, Landroidx/test/runner/screenshot/Screenshot;->screenCaptureProcessorSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 150
    return-void
.end method

.method public static capture()Landroidx/test/runner/screenshot/ScreenCapture;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Landroidx/test/runner/screenshot/Screenshot;->captureImpl(Landroid/view/View;)Landroidx/test/runner/screenshot/ScreenCapture;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 81
    :catch_6
    move-exception v0

    .line 82
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_d
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_14
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1b
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static capture(Landroid/app/Activity;)Landroidx/test/runner/screenshot/ScreenCapture;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;
        }
    .end annotation

    .line 101
    const-string v0, "activity cannot be null!"

    invoke-static {p0, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :try_start_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/runner/screenshot/Screenshot;->captureImpl(Landroid/view/View;)Landroidx/test/runner/screenshot/ScreenCapture;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_24
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_15} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_15} :catch_16

    return-object v0

    .line 108
    :catch_16
    move-exception v0

    .line 109
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1d
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_24
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static capture(Landroid/view/View;)Landroidx/test/runner/screenshot/ScreenCapture;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;
        }
    .end annotation

    .line 126
    const-string v0, "view cannot be null!"

    invoke-static {p0, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :try_start_5
    invoke-static {p0}, Landroidx/test/runner/screenshot/Screenshot;->captureImpl(Landroid/view/View;)Landroidx/test/runner/screenshot/ScreenCapture;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_18
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_9} :catch_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 133
    :catch_a
    move-exception v0

    .line 134
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 131
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_11
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 129
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_18
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/Screenshot$ScreenShotException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static captureImpl(Landroid/view/View;)Landroidx/test/runner/screenshot/ScreenCapture;
    .registers 4
    .param p0, "targetView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 168
    if-nez p0, :cond_d

    sget v0, Landroidx/test/runner/screenshot/Screenshot;->androidRuntimeVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d

    .line 169
    invoke-static {}, Landroidx/test/runner/screenshot/Screenshot;->captureUiAutomatorImpl()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_11

    .line 171
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    invoke-static {p0}, Landroidx/test/runner/screenshot/Screenshot;->captureViewBasedImpl(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_11
    new-instance v1, Landroidx/test/runner/screenshot/ScreenCapture;

    invoke-direct {v1, v0}, Landroidx/test/runner/screenshot/ScreenCapture;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroidx/test/runner/screenshot/Screenshot;->screenCaptureProcessorSet:Ljava/util/Set;

    invoke-virtual {v1, v2}, Landroidx/test/runner/screenshot/ScreenCapture;->setProcessors(Ljava/util/Set;)Landroidx/test/runner/screenshot/ScreenCapture;

    move-result-object v1

    return-object v1
.end method

.method private static captureUiAutomatorImpl()Landroid/graphics/Bitmap;
    .registers 1

    .line 177
    sget-object v0, Landroidx/test/runner/screenshot/Screenshot;->uiWrapper:Landroidx/test/runner/screenshot/UiAutomationWrapper;

    invoke-virtual {v0}, Landroidx/test/runner/screenshot/UiAutomationWrapper;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static captureViewBasedImpl(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 182
    const-string v0, "Taking view based screenshot requires using either takeScreenshot(view) or takeScreenshot(activity) where view and activity are non-null."

    invoke-static {p0, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Landroidx/test/runner/screenshot/Screenshot;->takeScreenshotCallableFactory:Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;

    invoke-virtual {v0, p0}, Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;->create(Landroid/view/View;)Ljava/util/concurrent/Callable;

    move-result-object v0

    .line 187
    .local v0, "takeScreenshotCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/graphics/Bitmap;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 189
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1e

    .line 190
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_25

    .line 192
    :cond_1e
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 194
    :goto_25
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    return-object v2
.end method

.method static setAndroidRuntimeVersion(I)V
    .registers 1
    .param p0, "sdkInt"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkInt"
        }
    .end annotation

    .line 209
    sput p0, Landroidx/test/runner/screenshot/Screenshot;->androidRuntimeVersion:I

    .line 210
    return-void
.end method

.method public static setScreenshotProcessors(Ljava/util/Set;)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenCaptureProcessors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/test/runner/screenshot/ScreenCaptureProcessor;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p0, "screenCaptureProcessors":Ljava/util/Set;, "Ljava/util/Set<Landroidx/test/runner/screenshot/ScreenCaptureProcessor;>;"
    sput-object p0, Landroidx/test/runner/screenshot/Screenshot;->screenCaptureProcessorSet:Ljava/util/Set;

    .line 163
    return-void
.end method

.method static setTakeScreenshotCallableFactory(Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;)V
    .registers 1
    .param p0, "factory"    # Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    .line 199
    sput-object p0, Landroidx/test/runner/screenshot/Screenshot;->takeScreenshotCallableFactory:Landroidx/test/runner/screenshot/TakeScreenshotCallable$Factory;

    .line 200
    return-void
.end method

.method static setUiAutomationWrapper(Landroidx/test/runner/screenshot/UiAutomationWrapper;)V
    .registers 1
    .param p0, "wrapper"    # Landroidx/test/runner/screenshot/UiAutomationWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .line 204
    sput-object p0, Landroidx/test/runner/screenshot/Screenshot;->uiWrapper:Landroidx/test/runner/screenshot/UiAutomationWrapper;

    .line 205
    return-void
.end method
