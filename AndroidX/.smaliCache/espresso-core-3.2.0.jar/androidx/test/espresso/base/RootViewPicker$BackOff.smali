.class abstract Landroidx/test/espresso/base/RootViewPicker$BackOff;
.super Ljava/lang/Object;
.source "RootViewPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/RootViewPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BackOff"
.end annotation


# instance fields
.field private final backoffTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfAttempts:I

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/TimeUnit;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backoffTimes",
            "timeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->numberOfAttempts:I

    .line 303
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->backoffTimes:Ljava/util/List;

    .line 304
    iput-object p2, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 305
    return-void
.end method


# virtual methods
.method protected final getBackoffForAttempt()J
    .registers 5

    .line 310
    iget v0, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->numberOfAttempts:I

    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->backoffTimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1e

    .line 311
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->backoffTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 313
    :cond_1e
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->backoffTimes:Ljava/util/List;

    iget v1, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->numberOfAttempts:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 314
    iget v1, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->numberOfAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->numberOfAttempts:I

    .line 315
    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker$BackOff;->timeUnit:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getNextBackoffInMillis()J
.end method
