.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1113
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->val$name:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1124
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    const-string v1, "onServiceConnected"

    # invokes: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->access$1000(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1125
    return-void

    .line 1129
    :cond_b
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Landroid/os/IBinder;)V

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1102(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;)Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1133
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1202(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1134
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Landroid/os/Messenger;)V

    .line 1136
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    const/4 v1, 0x1

    # setter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I
    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1402(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;I)I

    .line 1145
    :try_start_48
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1100(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1500(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mRootHints:Landroid/os/Bundle;
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1600(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mCallbacksMessenger:Landroid/os/Messenger;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1200(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->connect(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6b} :catch_6c

    .line 1157
    goto :goto_8d

    .line 1147
    :catch_6c
    move-exception v0

    .line 1152
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException during connect for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaBrowserCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_8d
    return-void
.end method
