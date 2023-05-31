.class final Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$2;
.super Ljava/lang/Object;
.source "MintegralH5EndCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a()V
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
    .line 178
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$2;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$2;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->onCloseViewClick()V

    .line 182
    return-void
.end method
