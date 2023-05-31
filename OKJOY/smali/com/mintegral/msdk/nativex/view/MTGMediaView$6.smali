.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$6;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 2

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$6;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$6;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    .line 2285
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$6;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$6;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/widget/TextView;

    .line 2300
    :cond_12
    return-void
.end method
