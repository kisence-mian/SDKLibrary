.class final Lcom/mintegral/msdk/playercommon/d$1;
.super Landroid/os/Handler;
.source "VideoNativePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/d;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$1;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    return-void
.end method
