.class public final Landroidx/test/espresso/base/DefaultFailureHandler;
.super Ljava/lang/Object;
.source "DefaultFailureHandler.java"

# interfaces
.implements Landroidx/test/espresso/FailureHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/DefaultFailureHandler$AssertionFailedWithCauseError;
    }
.end annotation


# static fields
.field private static final failureCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroidx/test/espresso/base/DefaultFailureHandler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/test/espresso/internal/inject/TargetContext;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appContext"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/test/espresso/base/DefaultFailureHandler;->appContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private static getAnimatorDurationScale(Landroid/content/ContentResolver;)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolver"
        }
    .end annotation

    .line 140
    invoke-static {}, Landroidx/test/espresso/base/DefaultFailureHandler;->isJellyBeanMR1OrHigher()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 141
    const-string v0, "animator_duration_scale"

    invoke-static {p0, v0, v0}, Landroidx/test/espresso/base/DefaultFailureHandler;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0

    .line 146
    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static getGlobalSetting(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolver",
            "setting"
        }
    .end annotation

    .line 182
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 183
    :catch_5
    move-exception p0

    .line 184
    const/4 p0, 0x0

    return p0
.end method

.method private static getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)F
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolver",
            "current",
            "deprecated"
        }
    .end annotation

    .line 161
    invoke-static {}, Landroidx/test/espresso/base/DefaultFailureHandler;->isJellyBeanMR1OrHigher()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    invoke-static {p0, p1}, Landroidx/test/espresso/base/DefaultFailureHandler;->getGlobalSetting(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result p0

    return p0

    .line 164
    :cond_b
    invoke-static {p0, p2}, Landroidx/test/espresso/base/DefaultFailureHandler;->getSystemSetting(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private static getSystemSetting(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolver",
            "setting"
        }
    .end annotation

    .line 197
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 198
    :catch_5
    move-exception p0

    .line 199
    const/4 p0, 0x0

    return p0
.end method

.method private static getTransitionAnimationScale(Landroid/content/ContentResolver;)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolver"
        }
    .end annotation

    .line 128
    const-string v0, "transition_animation_scale"

    invoke-static {p0, v0, v0}, Landroidx/test/espresso/base/DefaultFailureHandler;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private getUserFriendlyError(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)Ljava/lang/Throwable;
    .registers 5
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
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 73
    instance-of v0, p1, Landroidx/test/espresso/PerformException;

    if-eqz v0, :cond_35

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v1, p0, Landroidx/test/espresso/base/DefaultFailureHandler;->appContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/test/espresso/base/DefaultFailureHandler;->isAnimationAndTransitionDisabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 76
    const-string v1, "Animations or transitions are enabled on the target device.\nFor more info check: https://developer.android.com/training/testing/espresso/setup#set-up-environment\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance p2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    check-cast p1, Landroidx/test/espresso/PerformException;

    .line 85
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->from(Landroidx/test/espresso/PerformException;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 90
    :cond_35
    instance-of p2, p1, Ljava/lang/AssertionError;

    if-eqz p2, :cond_43

    .line 93
    new-instance p2, Landroidx/test/espresso/base/DefaultFailureHandler$AssertionFailedWithCauseError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/test/espresso/base/DefaultFailureHandler$AssertionFailedWithCauseError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p2

    .line 96
    :cond_43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 97
    return-object p1
.end method

.method private static getWindowAnimationScale(Landroid/content/ContentResolver;)F
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolver"
        }
    .end annotation

    .line 135
    const-string v0, "window_animation_scale"

    invoke-static {p0, v0, v0}, Landroidx/test/espresso/base/DefaultFailureHandler;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private static isAnimationAndTransitionDisabled(Landroid/content/Context;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 116
    invoke-static {p0}, Landroidx/test/espresso/base/DefaultFailureHandler;->getTransitionAnimationScale(Landroid/content/ContentResolver;)F

    move-result v0

    invoke-static {v0}, Landroidx/test/espresso/base/DefaultFailureHandler;->isEqualToZero(F)Z

    move-result v0

    .line 117
    invoke-static {p0}, Landroidx/test/espresso/base/DefaultFailureHandler;->getWindowAnimationScale(Landroid/content/ContentResolver;)F

    move-result v1

    invoke-static {v1}, Landroidx/test/espresso/base/DefaultFailureHandler;->isEqualToZero(F)Z

    move-result v1

    .line 118
    invoke-static {p0}, Landroidx/test/espresso/base/DefaultFailureHandler;->getAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result p0

    invoke-static {p0}, Landroidx/test/espresso/base/DefaultFailureHandler;->isEqualToZero(F)Z

    move-result p0

    .line 120
    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private static isEqualToZero(F)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 124
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private static isJellyBeanMR1OrHigher()Z
    .registers 2

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public handle(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)V
    .registers 6
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

    .line 53
    sget-object v0, Landroidx/test/espresso/base/DefaultFailureHandler;->failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "view-op-error-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/internal/platform/util/TestOutputEmitter;->takeScreenshot(Ljava/lang/String;)Z

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "explore-window-hierarchy-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/platform/util/TestOutputEmitter;->captureWindowHierarchy(Ljava/lang/String;)Z

    .line 56
    instance-of v0, p1, Landroidx/test/espresso/EspressoException;

    if-nez v0, :cond_58

    instance-of v0, p1, Ljunit/framework/AssertionFailedError;

    if-nez v0, :cond_58

    instance-of v0, p1, Ljava/lang/AssertionError;

    if-eqz v0, :cond_4f

    goto :goto_58

    .line 62
    :cond_4f
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 63
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 59
    :cond_58
    :goto_58
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/base/DefaultFailureHandler;->getUserFriendlyError(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/base/DefaultFailureHandler;->getUserFriendlyError(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
