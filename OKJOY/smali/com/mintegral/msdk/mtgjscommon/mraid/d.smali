.class public final Lcom/mintegral/msdk/mtgjscommon/mraid/d;
.super Ljava/lang/Object;
.source "MraidVolumeChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;,
        Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;
    }
.end annotation


# static fields
.field public static a:D


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/media/AudioManager;

.field private d:Z

.field private e:Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;

.field private f:Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->d:Z

    .line 33
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->b:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->c:Landroid/media/AudioManager;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()D
    .registers 9

    .prologue
    const/4 v3, 0x3

    const/4 v1, -0x1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 38
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->c:Landroid/media/AudioManager;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->c:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 39
    :goto_e
    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->c:Landroid/media/AudioManager;

    if-eqz v2, :cond_18

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->c:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 41
    :cond_18
    int-to-double v2, v1

    mul-double/2addr v2, v6

    int-to-double v4, v0

    div-double/2addr v2, v4

    sput-wide v2, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a:D

    .line 43
    int-to-double v2, v1

    mul-double/2addr v2, v6

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0

    :cond_24
    move v0, v1

    .line 38
    goto :goto_e
.end method

.method public final a(Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->e:Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;

    .line 52
    return-void
.end method

.method public final b()Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->e:Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;

    return-object v0
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->b:Landroid/content/Context;

    if-eqz v0, :cond_1f

    .line 56
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;-><init>(Lcom/mintegral/msdk/mtgjscommon/mraid/d;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->f:Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->f:Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->d:Z

    .line 62
    :cond_1f
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->d:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->b:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 67
    :try_start_8
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->f:Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->e:Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->d:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    .line 74
    :cond_15
    :goto_15
    return-void

    .line 71
    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method
