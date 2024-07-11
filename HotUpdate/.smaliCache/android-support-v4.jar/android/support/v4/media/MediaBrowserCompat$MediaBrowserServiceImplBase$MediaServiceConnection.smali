.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)V
    .registers 2

    .line 1110
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;Landroid/support/v4/media/MediaBrowserCompat$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;
    .param p2, "x1"    # Landroid/support/v4/media/MediaBrowserCompat$1;

    .line 1110
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1110
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCurrent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "funcName"    # Ljava/lang/String;

    .line 1204
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    move-result-object v0

    if-eq v0, p0, :cond_4e

    .line 1205
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mState:I
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1400(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)I

    move-result v0

    if-eqz v0, :cond_4c

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceComponent:Landroid/content/ComponentName;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with mServiceConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mServiceConnection:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$700(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_4c
    const/4 v0, 0x0

    return v0

    .line 1212
    :cond_4e
    const/4 v0, 0x1

    return v0
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 1194
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_21

    .line 1196
    :cond_18
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->mHandler:Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;->access$1300(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase;)Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->post(Ljava/lang/Runnable;)Z

    .line 1198
    :goto_21
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1113
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->postOrRun(Ljava/lang/Runnable;)V

    .line 1160
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1164
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserServiceImplBase$MediaServiceConnection;->postOrRun(Ljava/lang/Runnable;)V

    .line 1190
    return-void
.end method
