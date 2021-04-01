.class final Lcom/mintegral/msdk/d/b$2;
.super Ljava/lang/Object;
.source "ShortCutsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/d/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mintegral/msdk/d/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/d/b;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 673
    iput-object p1, p0, Lcom/mintegral/msdk/d/b$2;->c:Lcom/mintegral/msdk/d/b;

    iput-object p2, p0, Lcom/mintegral/msdk/d/b$2;->a:Ljava/lang/String;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/mintegral/msdk/d/b$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 677
    iget-object v1, p0, Lcom/mintegral/msdk/d/b$2;->a:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 678
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    iget-object v0, p0, Lcom/mintegral/msdk/d/b$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 680
    :cond_e
    if-nez v0, :cond_17

    .line 681
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 683
    :cond_17
    iget-object v1, p0, Lcom/mintegral/msdk/d/b$2;->c:Lcom/mintegral/msdk/d/b;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/c/a;)V

    .line 684
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 685
    iget v1, p0, Lcom/mintegral/msdk/d/b$2;->b:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 686
    iget-object v1, p0, Lcom/mintegral/msdk/d/b$2;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 687
    iget-object v0, p0, Lcom/mintegral/msdk/d/b$2;->c:Lcom/mintegral/msdk/d/b;

    invoke-static {v0}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/d/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    return-void
.end method
