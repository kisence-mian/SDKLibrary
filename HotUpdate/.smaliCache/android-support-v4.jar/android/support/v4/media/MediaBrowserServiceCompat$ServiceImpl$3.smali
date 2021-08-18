.class Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->addSubscription(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

.field final synthetic val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 360
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->val$id:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 363
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 366
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    # getter for: Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$500(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 367
    .local v1, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    if-nez v1, :cond_31

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaBrowserServiceCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 373
    :cond_31
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->val$id:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceImpl$3;->val$options:Landroid/os/Bundle;

    # invokes: Landroid/support/v4/media/MediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$700(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    .line 374
    return-void
.end method
