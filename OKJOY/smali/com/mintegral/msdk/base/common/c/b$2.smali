.class final Lcom/mintegral/msdk/base/common/c/b$2;
.super Ljava/lang/Object;
.source "CommonImageLoader.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/c/b;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/c/b$2;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b$2;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->b(Lcom/mintegral/msdk/base/common/c/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 278
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 279
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 280
    const-string v2, "message_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "message_bitmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 283
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/b$2;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/b;->b(Lcom/mintegral/msdk/base/common/c/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 288
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b$2;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->b(Lcom/mintegral/msdk/base/common/c/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 289
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 290
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 291
    const-string v2, "message_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "message_message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/b$2;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/b;->b(Lcom/mintegral/msdk/base/common/c/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method
