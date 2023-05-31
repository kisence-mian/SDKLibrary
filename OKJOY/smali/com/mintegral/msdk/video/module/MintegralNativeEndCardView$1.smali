.class final Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$1;
.super Ljava/lang/Object;
.source "MintegralNativeEndCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralNativeEndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 200
    return-void
.end method
