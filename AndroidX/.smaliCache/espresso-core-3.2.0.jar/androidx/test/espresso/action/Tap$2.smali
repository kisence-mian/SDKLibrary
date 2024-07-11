.class final enum Landroidx/test/espresso/action/Tap$2;
.super Landroidx/test/espresso/action/Tap;
.source "Tap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/action/Tap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/action/Tap;-><init>(Ljava/lang/String;ILandroidx/test/espresso/action/Tap$1;)V

    return-void
.end method


# virtual methods
.method public sendTap(Landroidx/test/espresso/UiController;[F[F)Landroidx/test/espresso/action/Tapper$Status;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "coordinates",
            "precision"
        }
    .end annotation

    .line 60
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/test/espresso/action/Tap$2;->sendTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;

    move-result-object p1

    return-object p1
.end method

.method public sendTap(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/Tapper$Status;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "coordinates",
            "precision",
            "inputDevice",
            "buttonState"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    nop

    .line 75
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/test/espresso/action/MotionEvents;->sendDown(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/MotionEvents$DownResultHolder;

    move-result-object p2

    iget-object p2, p2, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;->down:Landroid/view/MotionEvent;

    .line 81
    :try_start_10
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x3fc00000    # 1.5f

    mul-float p3, p3, p4

    float-to-long p3, p3

    .line 82
    invoke-interface {p1, p3, p4}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 84
    invoke-static {p1, p2}, Landroidx/test/espresso/action/MotionEvents;->sendUp(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;)Z

    move-result p3

    if-nez p3, :cond_2d

    .line 85
    invoke-static {p1, p2}, Landroidx/test/espresso/action/MotionEvents;->sendCancel(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;)V

    .line 86
    sget-object p1, Landroidx/test/espresso/action/Tapper$Status;->FAILURE:Landroidx/test/espresso/action/Tapper$Status;
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_35

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 90
    nop

    .line 86
    return-object p1

    .line 89
    :cond_2d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 90
    nop

    .line 91
    nop

    .line 92
    sget-object p1, Landroidx/test/espresso/action/Tapper$Status;->SUCCESS:Landroidx/test/espresso/action/Tapper$Status;

    return-object p1

    .line 89
    :catchall_35
    move-exception p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 90
    throw p1
.end method
