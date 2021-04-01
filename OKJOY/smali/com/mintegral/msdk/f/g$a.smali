.class final Lcom/mintegral/msdk/f/g$a;
.super Landroid/os/Handler;
.source "HttpProxyCacheServerClients.java"

# interfaces
.implements Lcom/mintegral/msdk/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/f/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    iput-object p1, p0, Lcom/mintegral/msdk/f/g$a;->a:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/mintegral/msdk/f/g$a;->b:Ljava/util/List;

    .line 150
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mintegral/msdk/f/g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/b;

    .line 170
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object v3, p0, Lcom/mintegral/msdk/f/g$a;->a:Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v3, v4}, Lcom/mintegral/msdk/f/b;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_6

    .line 172
    :cond_1e
    return-void
.end method

.method public final onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/mintegral/msdk/f/g$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 155
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 156
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/f/g$a;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void
.end method

.method public final onCacheError(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mintegral/msdk/f/g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/b;

    .line 163
    invoke-interface {v0, p1}, Lcom/mintegral/msdk/f/b;->onCacheError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 165
    :cond_16
    return-void
.end method
