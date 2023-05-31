.class final Lcom/mintegral/msdk/video/module/MintegralVideoView$5;
.super Ljava/lang/Object;
.source "MintegralVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/module/MintegralVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralVideoView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V
    .registers 2

    .prologue
    .line 786
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$5;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$5;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->g(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Z

    .line 790
    return-void
.end method
