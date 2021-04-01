.class final Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$1;
.super Ljava/lang/Object;
.source "MintegralVastEndCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 58
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 62
    return-void
.end method
