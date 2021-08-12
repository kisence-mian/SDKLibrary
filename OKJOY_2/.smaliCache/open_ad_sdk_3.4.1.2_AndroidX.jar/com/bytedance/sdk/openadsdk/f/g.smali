.class public Lcom/bytedance/sdk/openadsdk/f/g;
.super Ljava/lang/Object;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/f/g$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/bytedance/sdk/openadsdk/f/f;

.field private c:Lcom/bytedance/sdk/openadsdk/f/g$a;

.field private d:Landroid/content/Context;

.field private e:Landroid/media/AudioManager;

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->a:I

    .line 26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->f:Z

    .line 27
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->g:Z

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->h:I

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->d:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 33
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->e:Landroid/media/AudioManager;

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->h:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->h:I

    .line 42
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/f;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->b:Lcom/bytedance/sdk/openadsdk/f/f;

    .line 118
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/f/g;->a(ZZ)V

    .line 74
    return-void
.end method

.method public a(ZZ)V
    .registers 9

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->e:Landroid/media/AudioManager;

    if-nez v0, :cond_5

    .line 78
    return-void

    .line 80
    :cond_5
    const/4 v0, 0x3

    const-string v1, "VolumeChangeObserver"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_21

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/g;->g()I

    move-result p1

    .line 82
    if-eqz p1, :cond_14

    .line 83
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->a:I

    .line 85
    :cond_14
    const-string p1, "mute set volume to 0"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->e:Landroid/media/AudioManager;

    invoke-virtual {p1, v0, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 87
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/f/g;->g:Z

    .line 89
    goto :goto_6a

    .line 91
    :cond_21
    nop

    .line 92
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->a:I

    const/4 v4, -0x1

    if-nez p1, :cond_30

    .line 93
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/g;->d()I

    move-result p1

    .line 94
    div-int/lit8 p1, p1, 0xf

    .line 95
    nop

    .line 96
    move v2, v3

    goto :goto_3f

    :cond_30
    if-ne p1, v4, :cond_3e

    .line 97
    if-eqz p2, :cond_3d

    .line 98
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/g;->d()I

    move-result p1

    .line 99
    div-int/lit8 p1, p1, 0xf

    .line 100
    nop

    .line 101
    move v2, v3

    goto :goto_3f

    .line 102
    :cond_3d
    return-void

    .line 105
    :cond_3e
    nop

    .line 107
    :goto_3f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not mute set volume to "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, " mLastVolume="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/f/g;->a:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/f/g;->a:I

    .line 109
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/f/g;->e:Landroid/media/AudioManager;

    invoke-virtual {p2, v0, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 110
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/f/g;->g:Z

    .line 113
    :goto_6a
    return-void
.end method

.method public b()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->a:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->a:I

    .line 50
    return-void
.end method

.method public c()Z
    .registers 3

    .line 53
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 54
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->g:Z

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_9
    return v1
.end method

.method public d()I
    .registers 5

    .line 65
    const/16 v0, 0xf

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->e:Landroid/media/AudioManager;

    if-eqz v1, :cond_b

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_c

    :cond_b
    return v0

    .line 66
    :catchall_c
    move-exception v1

    .line 67
    const-string v2, "VolumeChangeObserver"

    const-string v3, "getMaxMusicVolumeError: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return v0
.end method

.method public e()V
    .registers 4

    .line 125
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/g$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/f/g$a;-><init>(Lcom/bytedance/sdk/openadsdk/f/g;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->c:Lcom/bytedance/sdk/openadsdk/f/g$a;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/f/g;->c:Lcom/bytedance/sdk/openadsdk/f/g$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->f:Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 132
    goto :goto_24

    .line 130
    :catchall_1c
    move-exception v0

    .line 131
    const-string v1, "VolumeChangeObserver"

    const-string v2, "registerReceiverError: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_24
    return-void
.end method

.method public f()V
    .registers 4

    .line 139
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->f:Z

    if-eqz v0, :cond_1a

    .line 141
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->c:Lcom/bytedance/sdk/openadsdk/f/g$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->b:Lcom/bytedance/sdk/openadsdk/f/f;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->f:Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_12

    .line 146
    goto :goto_1a

    .line 144
    :catchall_12
    move-exception v0

    .line 145
    const-string v1, "VolumeChangeObserver"

    const-string v2, "unregisterReceiverError: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :cond_1a
    :goto_1a
    return-void
.end method

.method public g()I
    .registers 5

    .line 152
    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/g;->e:Landroid/media/AudioManager;

    if-eqz v1, :cond_a

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    :cond_a
    return v0

    .line 153
    :catchall_b
    move-exception v1

    .line 154
    const-string v2, "VolumeChangeObserver"

    const-string v3, "getCurrentMusicVolumeError: "

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    return v0
.end method

.method public h()Lcom/bytedance/sdk/openadsdk/f/f;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/g;->b:Lcom/bytedance/sdk/openadsdk/f/f;

    return-object v0
.end method
