.class Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Dispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/base/IdlingResourceRegistry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/base/IdlingResourceRegistry;Landroidx/test/espresso/base/IdlingResourceRegistry$1;)V
    .registers 3

    .line 403
    invoke-direct {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;-><init>(Landroidx/test/espresso/base/IdlingResourceRegistry;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;)V
    .registers 1

    .line 403
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    return-void
.end method

.method private deregister()V
    .registers 3

    .line 506
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$800()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->NO_OP_CALLBACK:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$1000()Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    move-result-object v1

    # setter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    invoke-static {v0, v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$602(Landroidx/test/espresso/base/IdlingResourceRegistry;Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    .line 508
    return-void
.end method

.method private handleRaceCondition(Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 490
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 492
    iget-boolean v1, v0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    if-eqz v1, :cond_19

    .line 502
    goto :goto_8

    .line 495
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    .line 500
    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 496
    const-string v0, "Resource %s isIdleNow() is returning true, but a message indicating that the resource has transitioned from busy to idle was never sent."

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :cond_33
    return-void
.end method

.method private handleResourceIdled(Landroid/os/Message;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 427
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    .line 429
    nop

    .line 430
    nop

    .line 431
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;
    invoke-static {v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$500(Landroidx/test/espresso/base/IdlingResourceRegistry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 432
    const/4 v5, 0x0

    if-eqz v2, :cond_2a

    iget-boolean v2, v4, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    .line 433
    :goto_2b
    if-nez v3, :cond_30

    if-nez v2, :cond_30

    .line 436
    goto :goto_36

    .line 438
    :cond_30
    if-eqz v3, :cond_35

    if-ne v4, p1, :cond_35

    .line 439
    const/4 v3, 0x0

    .line 441
    :cond_35
    goto :goto_15

    .line 442
    :cond_36
    :goto_36
    if-eqz v3, :cond_63

    .line 443
    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$400()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring message from unregistered resource: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 446
    :cond_63
    if-eqz v2, :cond_77

    .line 448
    :try_start_65
    iget-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    invoke-static {p1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$600(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    move-result-object p1

    invoke-interface {p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;->allResourcesIdle()V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_72

    .line 450
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    .line 451
    goto :goto_77

    .line 450
    :catchall_72
    move-exception p1

    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    throw p1

    .line 453
    :cond_77
    :goto_77
    return-void
.end method

.method private handleTimeout()V
    .registers 5

    .line 473
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # invokes: Landroidx/test/espresso/base/IdlingResourceRegistry;->getBusyResources()Ljava/util/List;
    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$700(Landroidx/test/espresso/base/IdlingResourceRegistry;)Ljava/util/List;

    move-result-object v0

    .line 474
    if-nez v0, :cond_21

    .line 478
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;
    invoke-static {v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$800()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2e

    .line 481
    :cond_21
    :try_start_21
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    invoke-static {v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$600(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;->resourcesHaveTimedOut(Ljava/util/List;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2f

    .line 483
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    .line 484
    nop

    .line 486
    :goto_2e
    return-void

    .line 483
    :catchall_2f
    move-exception v0

    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V

    throw v0
.end method

.method private handleTimeoutWarning()V
    .registers 7

    .line 456
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # invokes: Landroidx/test/espresso/base/IdlingResourceRegistry;->getBusyResources()Ljava/util/List;
    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$700(Landroidx/test/espresso/base/IdlingResourceRegistry;)Ljava/util/List;

    move-result-object v0

    .line 457
    const/4 v1, 0x3

    if-nez v0, :cond_21

    .line 462
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;
    invoke-static {v2}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v2

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$800()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_51

    .line 464
    :cond_21
    invoke-static {}, Landroidx/test/espresso/IdlingPolicies;->getDynamicIdlingResourceWarningPolicy()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v2

    .line 465
    iget-object v3, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    invoke-static {v3}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$600(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    move-result-object v3

    invoke-interface {v3, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;->resourcesStillBusyWarning(Ljava/util/List;)V

    .line 466
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->this$0:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 467
    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;
    invoke-static {v3}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;

    move-result-object v3

    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$800()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 468
    invoke-virtual {v2}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeoutUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeout()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 466
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 470
    :goto_51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 420
    # getter for: Landroidx/test/espresso/base/IdlingResourceRegistry;->TAG:Ljava/lang/String;
    invoke-static {}, Landroidx/test/espresso/base/IdlingResourceRegistry;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 p1, 0x0

    return p1

    .line 417
    :pswitch_2f
    invoke-direct {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->handleRaceCondition(Landroid/os/Message;)V

    .line 418
    goto :goto_3f

    .line 411
    :pswitch_33
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->handleTimeoutWarning()V

    .line 412
    goto :goto_3f

    .line 414
    :pswitch_37
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->handleTimeout()V

    .line 415
    goto :goto_3f

    .line 408
    :pswitch_3b
    invoke-direct {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->handleResourceIdled(Landroid/os/Message;)V

    .line 409
    nop

    .line 423
    :goto_3f
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
    .end packed-switch
.end method
