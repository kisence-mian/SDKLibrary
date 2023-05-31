.class public Lcom/bytedance/sdk/openadsdk/e/f;
.super Ljava/lang/Object;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/e/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/e/e;

.field private b:Lcom/bytedance/sdk/openadsdk/e/f$a;

.field private c:Landroid/content/Context;

.field private d:Landroid/media/AudioManager;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->e:Z

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/f;->c:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->d:Landroid/media/AudioManager;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/f$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/e/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/e/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->b:Lcom/bytedance/sdk/openadsdk/e/f$a;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/f;->b:Lcom/bytedance/sdk/openadsdk/e/f$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->e:Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 65
    :goto_1b
    return-void

    .line 62
    :catch_1c
    move-exception v0

    .line 63
    const-string v1, "VolumeChangeObserver"

    const-string v2, "registerReceiverError: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/e/e;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/f;->a:Lcom/bytedance/sdk/openadsdk/e/e;

    .line 50
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->e:Z

    if-eqz v0, :cond_11

    .line 73
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/f;->b:Lcom/bytedance/sdk/openadsdk/e/f$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->a:Lcom/bytedance/sdk/openadsdk/e/e;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->e:Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_12

    .line 80
    :cond_11
    :goto_11
    return-void

    .line 76
    :catch_12
    move-exception v0

    .line 77
    const-string v1, "VolumeChangeObserver"

    const-string v2, "unregisterReceiverError: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public c()I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/f;->d:Landroid/media/AudioManager;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/f;->d:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_d

    move-result v0

    .line 88
    :cond_c
    :goto_c
    return v0

    .line 85
    :catch_d
    move-exception v1

    .line 86
    const-string v2, "VolumeChangeObserver"

    const-string v3, "getCurrentMusicVolumeError: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/e/e;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/f;->a:Lcom/bytedance/sdk/openadsdk/e/e;

    return-object v0
.end method
