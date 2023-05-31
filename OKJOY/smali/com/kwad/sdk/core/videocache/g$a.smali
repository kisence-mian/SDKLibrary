.class final Lcom/kwad/sdk/core/videocache/g$a;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/videocache/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/videocache/g;
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
            "Lcom/kwad/sdk/core/videocache/b;",
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
            "Lcom/kwad/sdk/core/videocache/b;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/g$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/g$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/b;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/g$a;->a:Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v3, v4}, Lcom/kwad/sdk/core/videocache/b;->a(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_6

    :cond_1e
    return-void
.end method
