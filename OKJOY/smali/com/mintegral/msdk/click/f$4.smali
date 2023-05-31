.class final Lcom/mintegral/msdk/click/f$4;
.super Ljava/lang/Object;
.source "WebViewSpider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/click/f;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/f;)V
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lcom/mintegral/msdk/click/f$4;->a:Lcom/mintegral/msdk/click/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$4;->a:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->n(Lcom/mintegral/msdk/click/f;)Z

    .line 409
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$4;->a:Lcom/mintegral/msdk/click/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/f;->a(Lcom/mintegral/msdk/click/f;I)I

    .line 410
    invoke-static {}, Lcom/mintegral/msdk/click/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js\u8d85\u65f6\uff01\u8d85\u65f6\u4e0a\u9650\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/click/f$4;->a:Lcom/mintegral/msdk/click/f;

    invoke-static {v2}, Lcom/mintegral/msdk/click/f;->o(Lcom/mintegral/msdk/click/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/mintegral/msdk/click/f$4;->a:Lcom/mintegral/msdk/click/f;

    invoke-static {v0}, Lcom/mintegral/msdk/click/f;->p(Lcom/mintegral/msdk/click/f;)V

    .line 413
    return-void
.end method
