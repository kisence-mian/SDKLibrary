.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceImplApi21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceImplApi21"
.end annotation


# instance fields
.field final mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 2

    .line 433
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->getServiceImpl()Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    .line 435
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;

    .line 453
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->addSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 454
    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;

    .line 440
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v2, v3, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->connect(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 442
    return-void
.end method

.method public disconnect(Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
    .registers 5
    .param p1, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;

    .line 446
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->disconnect(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 447
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;

    .line 459
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->mServiceImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v2, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->removeSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 460
    return-void
.end method
