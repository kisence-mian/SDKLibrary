.class final Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$3;
.super Ljava/lang/Object;
.source "MintegralH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->onCloseViewClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$3;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 195
    const-wide/16 v0, 0x12c

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_f

    .line 199
    :goto_5
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$3;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->o:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    return-void

    .line 197
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
