.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$c;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/nativex/view/MTGMediaView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 3

    .prologue
    .line 3026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3027
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$c;->a:Ljava/lang/ref/WeakReference;

    .line 3028
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 3031
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 3033
    if-eqz v0, :cond_23

    :try_start_a
    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    move-result-object v1

    sget-object v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v1, v2, :cond_23

    .line 3034
    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->M(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 3035
    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 3036
    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->changeNoticeURL()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_23} :catch_24

    .line 3042
    :cond_23
    :goto_23
    return-void

    .line 3038
    :catch_24
    move-exception v0

    .line 3039
    const-string v1, "MTGMediaView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method
