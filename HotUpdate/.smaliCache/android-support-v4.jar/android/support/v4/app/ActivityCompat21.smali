.class Landroid/support/v4/app/ActivityCompat21;
.super Ljava/lang/Object;
.source "ActivityCompat21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;,
        Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;
    .registers 3
    .param p0, "callback"    # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "newListener":Landroid/app/SharedElementCallback;
    if-eqz p0, :cond_9

    .line 80
    new-instance v1, Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;

    invoke-direct {v1, p0}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    move-object v0, v1

    .line 82
    :cond_9
    return-object v0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 41
    return-void
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 55
    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    .line 45
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat21;->createCallback(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 46
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;

    .line 50
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat21;->createCallback(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 51
    return-void
.end method

.method public static setMediaController(Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaControllerObj"    # Ljava/lang/Object;

    .line 36
    move-object v0, p1

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setMediaController(Landroid/media/session/MediaController;)V

    .line 37
    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 59
    return-void
.end method
