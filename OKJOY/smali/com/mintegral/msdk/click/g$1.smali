.class final Lcom/mintegral/msdk/click/g$1;
.super Ljava/lang/Object;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/click/g;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/click/g;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/g;)V
    .registers 2

    .prologue
    .line 495
    iput-object p1, p0, Lcom/mintegral/msdk/click/g$1;->a:Lcom/mintegral/msdk/click/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$1;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->h(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/d;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 500
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$1;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 501
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$1;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->h(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$1;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/click/d;->a(Ljava/lang/Object;)V

    .line 506
    :cond_23
    :goto_23
    return-void

    .line 503
    :cond_24
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$1;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->h(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/g$1;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v1}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/g$1;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v2}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/click/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_23
.end method
