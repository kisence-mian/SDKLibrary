.class public Landroidx/test/runner/screenshot/UiAutomationWrapper;
.super Ljava/lang/Object;
.source "UiAutomationWrapper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public takeScreenshot()Landroid/graphics/Bitmap;
    .registers 2

    .line 34
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/UiAutomation;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
