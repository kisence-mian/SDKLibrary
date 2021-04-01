.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$g;
.super Landroid/webkit/WebViewClient;
.source "MTGMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
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
    .line 2986
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2987
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$g;->a:Ljava/lang/ref/WeakReference;

    .line 2988
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2991
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2993
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 2994
    if-eqz v0, :cond_26

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    move-result-object v1

    sget-object v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v1, v2, :cond_26

    .line 2995
    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->L(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 2996
    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->d:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 2997
    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->changeNoticeURL()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    .line 3002
    :cond_26
    :goto_26
    return-void

    .line 3000
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method
