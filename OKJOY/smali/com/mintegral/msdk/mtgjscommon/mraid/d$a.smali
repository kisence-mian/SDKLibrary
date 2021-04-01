.class final Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;
.super Landroid/content/BroadcastReceiver;
.source "MraidVolumeChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgjscommon/mraid/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/mtgjscommon/mraid/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgjscommon/mraid/d;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;->a:Ljava/lang/ref/WeakReference;

    .line 97
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 101
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, -0x1

    .line 102
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_33

    .line 103
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/mraid/d$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    .line 104
    if-eqz v0, :cond_33

    .line 105
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->b()Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_33

    .line 107
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a()D

    move-result-wide v2

    .line 108
    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_33

    .line 109
    invoke-interface {v1, v2, v3}, Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;->a(D)V

    .line 114
    :cond_33
    return-void
.end method
