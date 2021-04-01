.class final Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$2;
.super Lcom/mintegral/msdk/widget/a;
.source "MintegralVastEndCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$2;->a:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    invoke-direct {p0}, Lcom/mintegral/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$2;->a:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x6c

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$2;->a:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 68
    return-void
.end method
