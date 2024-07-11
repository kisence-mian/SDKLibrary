.class public abstract synthetic Landroidx/test/espresso/UiController$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static injectMotionEventSequence$$dflt$$(Landroidx/test/espresso/UiController;Ljava/lang/Iterable;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "events"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 50
    const-string v0, "UIC"

    const-string v1, "Using default injectMotionEventSeq() - this may not inject a sequence properly. If wrapping UIController please override this method and delegate."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 55
    const/4 v0, 0x1

    .line 56
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 58
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-lez v6, :cond_2a

    .line 61
    invoke-interface {p0, v4, v5}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 63
    :cond_2a
    invoke-interface {p0, v1}, Landroidx/test/espresso/UiController;->injectMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 64
    goto :goto_c

    .line 65
    :cond_30
    return v0
.end method
