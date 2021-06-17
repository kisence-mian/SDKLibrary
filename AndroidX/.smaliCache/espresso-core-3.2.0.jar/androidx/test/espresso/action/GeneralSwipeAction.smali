.class public final Landroidx/test/espresso/action/GeneralSwipeAction;
.super Ljava/lang/Object;
.source "GeneralSwipeAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# static fields
.field private static final MAX_TRIES:I = 0x3

.field private static final VIEW_DISPLAY_PERCENTAGE:I = 0x5a


# instance fields
.field final endCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

.field final precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

.field final startCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

.field final swiper:Landroidx/test/espresso/action/Swiper;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/action/Swiper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "swiper",
            "startCoordinatesProvider",
            "endCoordinatesProvider",
            "precisionDescriber"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->swiper:Landroidx/test/espresso/action/Swiper;

    .line 50
    iput-object p2, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->startCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    .line 51
    iput-object p3, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->endCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    .line 52
    iput-object p4, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    .line 53
    return-void
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 57
    const/16 v0, 0x5a

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayingAtLeast(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .line 112
    iget-object v0, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->swiper:Landroidx/test/espresso/action/Swiper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " swipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "view"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->startCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    invoke-interface {v0, p2}, Landroidx/test/espresso/action/CoordinatesProvider;->calculateCoordinates(Landroid/view/View;)[F

    move-result-object v0

    .line 63
    iget-object v1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->endCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    invoke-interface {v1, p2}, Landroidx/test/espresso/action/CoordinatesProvider;->calculateCoordinates(Landroid/view/View;)[F

    move-result-object v1

    .line 64
    iget-object v2, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    invoke-interface {v2}, Landroidx/test/espresso/action/PrecisionDescriber;->describePrecision()[F

    move-result-object v2

    .line 66
    sget-object v3, Landroidx/test/espresso/action/Swiper$Status;->FAILURE:Landroidx/test/espresso/action/Swiper$Status;

    .line 68
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    const/4 v6, 0x3

    if-ge v5, v6, :cond_50

    sget-object v7, Landroidx/test/espresso/action/Swiper$Status;->SUCCESS:Landroidx/test/espresso/action/Swiper$Status;

    if-eq v3, v7, :cond_50

    .line 70
    :try_start_1d
    iget-object v3, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->swiper:Landroidx/test/espresso/action/Swiper;

    invoke-interface {v3, p1, v0, v1, v2}, Landroidx/test/espresso/action/Swiper;->sendSwipe(Landroidx/test/espresso/UiController;[F[F[F)Landroidx/test/espresso/action/Swiper$Status;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_23} :catch_31

    .line 77
    nop

    .line 79
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    .line 81
    if-lez v6, :cond_2e

    .line 82
    int-to-long v6, v6

    invoke-interface {p1, v6, v7}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 68
    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 71
    :catch_31
    move-exception p1

    .line 72
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 73
    invoke-virtual {p0}, Landroidx/test/espresso/action/GeneralSwipeAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 74
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p2

    .line 75
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 86
    :cond_50
    sget-object p1, Landroidx/test/espresso/action/Swiper$Status;->FAILURE:Landroidx/test/espresso/action/Swiper$Status;

    if-eq v3, p1, :cond_55

    .line 108
    return-void

    .line 87
    :cond_55
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 88
    invoke-virtual {p0}, Landroidx/test/espresso/action/GeneralSwipeAction;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 89
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    aget v7, v0, v4

    .line 96
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v4

    const/4 v7, 0x1

    aget v0, v0, v7

    .line 97
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v0, 0x2

    aget v8, v1, v4

    .line 98
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v0

    aget v0, v1, v7

    .line 99
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    aget v1, v2, v4

    .line 100
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    aget v1, v2, v7

    .line 101
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x6

    iget-object v1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->swiper:Landroidx/test/espresso/action/Swiper;

    aput-object v1, v5, v0

    const/4 v0, 0x7

    iget-object v1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->startCoordinatesProvider:Landroidx/test/espresso/action/CoordinatesProvider;

    aput-object v1, v5, v0

    const/16 v0, 0x8

    iget-object v1, p0, Landroidx/test/espresso/action/GeneralSwipeAction;->precisionDescriber:Landroidx/test/espresso/action/PrecisionDescriber;

    aput-object v1, v5, v0

    const/16 v0, 0x9

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 92
    const-string v0, "Couldn\'t swipe from: %s,%s to: %s,%s precision: %s, %s . Swiper: %s start coordinate provider: %s precision describer: %s. Tried %s times"

    invoke-static {v3, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    goto :goto_d1

    :goto_d0
    throw p1

    :goto_d1
    goto :goto_d0
.end method
