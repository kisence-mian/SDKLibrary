.class final Lcom/mintegral/msdk/base/common/c/b$1;
.super Landroid/os/Handler;
.source "CommonImageLoader.java"


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
.method constructor <init>(Lcom/mintegral/msdk/base/common/c/b;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/c/b$1;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 50
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    .line 52
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "message_bitmap"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b$1;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b$1;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Lcom/mintegral/msdk/base/common/c/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 58
    if-eqz v0, :cond_4b

    .line 59
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/c/c;

    .line 60
    if-eqz v0, :cond_34

    .line 61
    invoke-interface {v0, v2, v1}, Lcom/mintegral/msdk/base/common/c/c;->onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_34

    .line 82
    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    :cond_4a
    :goto_4a
    return-void

    .line 65
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b$1;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Lcom/mintegral/msdk/base/common/c/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 66
    :cond_55
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    .line 68
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "message_message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b$1;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Lcom/mintegral/msdk/base/common/c/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 72
    if-eqz v0, :cond_92

    .line 73
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_80
    :goto_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/c/c;

    .line 74
    if-eqz v0, :cond_80

    .line 75
    invoke-interface {v0, v2, v1}, Lcom/mintegral/msdk/base/common/c/c;->onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 79
    :cond_92
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b$1;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Lcom/mintegral/msdk/base/common/c/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_9b} :catch_46

    goto :goto_4a
.end method
