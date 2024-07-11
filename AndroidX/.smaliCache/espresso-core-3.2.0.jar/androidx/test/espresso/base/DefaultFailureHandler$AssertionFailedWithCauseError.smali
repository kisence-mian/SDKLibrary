.class final Landroidx/test/espresso/base/DefaultFailureHandler$AssertionFailedWithCauseError;
.super Ljunit/framework/AssertionFailedError;
.source "DefaultFailureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/DefaultFailureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssertionFailedWithCauseError"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p2}, Landroidx/test/espresso/base/DefaultFailureHandler$AssertionFailedWithCauseError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    return-void
.end method
