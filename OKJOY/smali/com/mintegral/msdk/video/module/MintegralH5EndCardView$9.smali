.class final Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$9;
.super Ljava/lang/Object;
.source "MintegralH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->excuteEndCardShowTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;I)V
    .registers 3

    .prologue
    .line 708
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$9;->b:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iput p2, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 711
    const-string v0, "MintegralBaseView"

    const-string v1, "endcard \u52a0\u8f7d\u7b49\u5f85\u7ed3\u675f \u5f00\u59cb\u63d2\u5165\u6570\u636e\u5e93"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$9;->b:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget v1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$9;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;J)V

    .line 713
    return-void
.end method
