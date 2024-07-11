.class public final Landroidx/test/espresso/action/MotionEvents;
.super Ljava/lang/Object;
.source "MotionEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/MotionEvents$DownResultHolder;
    }
.end annotation


# static fields
.field static final MAX_CLICK_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Landroidx/test/espresso/action/MotionEvents;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static downPressGingerBread(J[F[F)Landroid/view/MotionEvent;
    .registers 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downTime",
            "coordinates",
            "precision"
        }
    .end annotation

    .line 287
    nop

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    aget v5, p2, v0

    const/4 v1, 0x1

    aget v6, p2, v1

    aget v10, p3, v0

    aget v11, p3, v1

    .line 287
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private static downPressICS(J[F[FII)Landroid/view/MotionEvent;
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "downTime",
            "coordinates",
            "precision",
            "inputDevice",
            "buttonState"
        }
    .end annotation

    .line 304
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v8, v2

    .line 305
    invoke-static/range {p4 .. p4}, Landroidx/test/espresso/action/MotionEvents;->getPointerProperties(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v7

    .line 306
    aget-object v1, v8, v2

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 307
    aget-object v1, v8, v2

    aget v3, p2, v2

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 308
    aget-object v1, v8, v2

    aget v3, p2, v0

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 309
    aget-object v1, v8, v2

    const/4 v3, 0x0

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 310
    aget-object v1, v8, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 312
    nop

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aget v11, p3, v2

    aget v12, p3, v0

    .line 312
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move/from16 v10, p5

    move/from16 v15, p4

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private static getPointerProperties(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputDevice"
        }
    .end annotation

    .line 366
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 367
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 368
    aget-object v2, v1, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 369
    sparse-switch p0, :sswitch_data_2e

    .line 380
    aget-object p0, v1, v3

    iput v3, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    goto :goto_2d

    .line 374
    :sswitch_1c
    aget-object p0, v1, v3

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 375
    goto :goto_2d

    .line 371
    :sswitch_22
    aget-object p0, v1, v3

    const/4 v0, 0x3

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 372
    goto :goto_2d

    .line 377
    :sswitch_28
    aget-object p0, v1, v3

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 378
    nop

    .line 383
    :goto_2d
    return-object v1

    :sswitch_data_2e
    .sparse-switch
        0x1002 -> :sswitch_28
        0x2002 -> :sswitch_22
        0x4002 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static obtainDownEvent([F[F)Landroid/view/MotionEvent;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coordinates",
            "precision"
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroidx/test/espresso/action/MotionEvents;->obtainDownEvent([F[FII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtainDownEvent([F[FII)Landroid/view/MotionEvent;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "coordinates",
            "precision",
            "inputDevice",
            "buttonState"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_15

    .line 66
    invoke-static {v0, v1, p0, p1}, Landroidx/test/espresso/action/MotionEvents;->downPressGingerBread(J[F[F)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0

    .line 68
    :cond_15
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/test/espresso/action/MotionEvents;->downPressICS(J[F[FII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtainMovement(JJ[F)Landroid/view/MotionEvent;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downTime",
            "eventTime",
            "coordinates"
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    aget v6, p4, v0

    const/4 v0, 0x1

    aget v7, p4, v0

    const/4 v5, 0x2

    const/4 v8, 0x0

    move-wide v1, p0

    move-wide v3, p2

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtainMovement(J[F)Landroid/view/MotionEvent;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downTime",
            "coordinates"
        }
    .end annotation

    .line 233
    nop

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    .line 233
    const/4 v4, 0x2

    const/4 v7, 0x0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static obtainUpEvent(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downEvent",
            "coordinates"
        }
    .end annotation

    .line 143
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_11

    .line 147
    invoke-static {p0, p1}, Landroidx/test/espresso/action/MotionEvents;->upPressGingerBread(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0

    .line 149
    :cond_11
    invoke-static {p0, p1}, Landroidx/test/espresso/action/MotionEvents;->upPressICS(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static sendCancel(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "downEvent"
        }
    .end annotation

    .line 191
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    nop

    .line 197
    nop

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/4 v10, 0x0

    .line 198
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 205
    invoke-interface {p0, v2}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 207
    if-nez p0, :cond_3e

    .line 208
    sget-object p0, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Injection of cancel event failed (corresponding down event: %s)"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    .line 210
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_b .. :try_end_38} :catch_46
    .catchall {:try_start_b .. :try_end_38} :catchall_44

    .line 225
    if-eqz v2, :cond_3d

    .line 226
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 214
    :cond_3d
    return-void

    .line 225
    :cond_3e
    if-eqz v2, :cond_43

    .line 226
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 230
    :cond_43
    return-void

    .line 225
    :catchall_44
    move-exception p0

    goto :goto_6b

    .line 216
    :catch_46
    move-exception p0

    .line 217
    :try_start_47
    new-instance v3, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v3}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "inject cancel event (corresponding down event: %s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 219
    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {v3, p1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    const-string v0, "unknown"

    .line 221
    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p1, p0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p0

    throw p0
    :try_end_6b
    .catchall {:try_start_47 .. :try_end_6b} :catchall_44

    .line 225
    :goto_6b
    if-eqz v2, :cond_70

    .line 226
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 227
    :cond_70
    throw p0
.end method

.method public static sendDown(Landroidx/test/espresso/UiController;[F[F)Landroidx/test/espresso/action/MotionEvents$DownResultHolder;
    .registers 5
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

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/test/espresso/action/MotionEvents;->sendDown(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/MotionEvents$DownResultHolder;

    move-result-object p0

    return-object p0
.end method

.method public static sendDown(Landroidx/test/espresso/UiController;[F[FII)Landroidx/test/espresso/action/MotionEvents$DownResultHolder;
    .registers 21
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

    .line 83
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static/range {p1 .. p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static/range {p2 .. p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    const-string v3, "unknown"

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_7e

    .line 88
    nop

    .line 90
    :try_start_14
    invoke-static/range {p1 .. p4}, Landroidx/test/espresso/action/MotionEvents;->obtainDownEvent([F[FII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 96
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    add-long/2addr v8, v6

    .line 98
    invoke-interface {v0, v4}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 101
    :goto_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v11, v8, v11

    .line 102
    const-wide/16 v13, 0xa

    cmp-long v15, v11, v13

    if-gtz v15, :cond_5e

    .line 103
    nop

    .line 110
    nop

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v6, v11

    cmp-long v11, v8, v6

    if-lez v11, :cond_4d

    .line 112
    nop

    .line 113
    sget-object v6, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    const-string v7, "Overslept and turned a tap into a long press"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 111
    :cond_4d
    const/4 v5, 0x0

    .line 116
    :goto_4e
    if-nez v10, :cond_58

    .line 117
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 118
    nop

    .line 119
    nop

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 122
    :cond_58
    new-instance v0, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;

    invoke-direct {v0, v4, v5}, Landroidx/test/espresso/action/MotionEvents$DownResultHolder;-><init>(Landroid/view/MotionEvent;Z)V

    return-object v0

    .line 107
    :cond_5e
    const-wide/16 v13, 0x4

    div-long/2addr v11, v13

    invoke-interface {v0, v11, v12}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V
    :try_end_64
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_14 .. :try_end_64} :catch_65

    .line 108
    goto :goto_28

    .line 123
    :catch_65
    move-exception v0

    .line 124
    new-instance v1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 125
    const-string v2, "Send down motion event"

    invoke-virtual {v1, v2}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v0

    throw v0

    .line 131
    :cond_7e
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v1, "click (after %s attempts)"

    invoke-static {v2, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v0

    goto :goto_a1

    :goto_a0
    throw v0

    :goto_a1
    goto :goto_a0
.end method

.method public static sendMovement(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;[F)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "downEvent",
            "coordinates"
        }
    .end annotation

    .line 249
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    nop

    .line 255
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-static {v3, v4, p2}, Landroidx/test/espresso/action/MotionEvents;->obtainMovement(J[F)Landroid/view/MotionEvent;

    move-result-object v2

    .line 256
    invoke-interface {p0, v2}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 258
    if-nez p0, :cond_33

    .line 259
    sget-object p0, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Injection of motion event failed (corresponding down event: %s)"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 261
    invoke-static {p2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_d .. :try_end_2c} :catch_3b
    .catchall {:try_start_d .. :try_end_2c} :catchall_39

    .line 265
    nop

    .line 276
    if-eqz v2, :cond_32

    .line 277
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 265
    :cond_32
    return v0

    .line 276
    :cond_33
    if-eqz v2, :cond_38

    .line 277
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 282
    :cond_38
    return v1

    .line 276
    :catchall_39
    move-exception p0

    goto :goto_60

    .line 267
    :catch_3b
    move-exception p0

    .line 268
    :try_start_3c
    new-instance p2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "inject motion event (corresponding down event: %s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 270
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    const-string p2, "unknown"

    .line 272
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p1, p0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p0

    throw p0
    :try_end_60
    .catchall {:try_start_3c .. :try_end_60} :catchall_39

    .line 276
    :goto_60
    if-eqz v2, :cond_65

    .line 277
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 278
    :cond_65
    throw p0
.end method

.method public static sendUp(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "downEvent"
        }
    .end annotation

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {p0, p1, v0}, Landroidx/test/espresso/action/MotionEvents;->sendUp(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;[F)Z

    move-result p0

    return p0
.end method

.method public static sendUp(Landroidx/test/espresso/UiController;Landroid/view/MotionEvent;[F)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "downEvent",
            "coordinates"
        }
    .end annotation

    .line 155
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    nop

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_d
    invoke-static {p1, p2}, Landroidx/test/espresso/action/MotionEvents;->obtainUpEvent(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;

    move-result-object v2

    .line 162
    invoke-interface {p0, v2}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 164
    if-nez p0, :cond_2f

    .line 165
    sget-object p0, Landroidx/test/espresso/action/MotionEvents;->TAG:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "Injection of up event failed (corresponding down event: %s)"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 167
    invoke-static {p2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_d .. :try_end_28} :catch_37
    .catchall {:try_start_d .. :try_end_28} :catchall_35

    .line 171
    nop

    .line 182
    if-eqz v2, :cond_2e

    .line 183
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 171
    :cond_2e
    return v0

    .line 182
    :cond_2f
    if-eqz v2, :cond_34

    .line 183
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 187
    :cond_34
    return v1

    .line 182
    :catchall_35
    move-exception p0

    goto :goto_5c

    .line 173
    :catch_37
    move-exception p0

    .line 174
    :try_start_38
    new-instance p2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "inject up event (corresponding down event: %s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 176
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    const-string p2, "unknown"

    .line 178
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p0

    throw p0
    :try_end_5c
    .catchall {:try_start_38 .. :try_end_5c} :catchall_35

    .line 182
    :goto_5c
    if-eqz v2, :cond_61

    .line 183
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 184
    :cond_61
    throw p0
.end method

.method private static upPressGingerBread(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downEvent",
            "coordinates"
        }
    .end annotation

    .line 330
    nop

    .line 331
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 p0, 0x0

    aget v5, p1, p0

    const/4 p0, 0x1

    aget v6, p1, p0

    .line 330
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method private static upPressICS(Landroid/view/MotionEvent;[F)Landroid/view/MotionEvent;
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downEvent",
            "coordinates"
        }
    .end annotation

    .line 340
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v8, v2

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v1}, Landroidx/test/espresso/action/MotionEvents;->getPointerProperties(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v7

    .line 342
    aget-object v1, v8, v2

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 343
    aget-object v1, v8, v2

    aget v3, p1, v2

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 344
    aget-object v1, v8, v2

    aget v0, p1, v0

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 345
    aget-object v0, v8, v2

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 346
    aget-object v0, v8, v2

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 348
    nop

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 348
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method
