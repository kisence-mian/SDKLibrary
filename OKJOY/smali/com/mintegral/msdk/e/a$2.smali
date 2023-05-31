.class final Lcom/mintegral/msdk/e/a$2;
.super Ljava/lang/Object;
.source "LoopTimer.java"

# interfaces
.implements Lcom/mintegral/msdk/reward/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/e/a;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/a/c;

.field final synthetic b:Lcom/mintegral/msdk/e/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/e/a;Lcom/mintegral/msdk/reward/a/c;)V
    .registers 3

    .prologue
    .line 200
    iput-object p1, p0, Lcom/mintegral/msdk/e/a$2;->b:Lcom/mintegral/msdk/e/a;

    iput-object p2, p0, Lcom/mintegral/msdk/e/a$2;->a:Lcom/mintegral/msdk/reward/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mintegral/msdk/e/a$2;->b:Lcom/mintegral/msdk/e/a;

    invoke-static {v0}, Lcom/mintegral/msdk/e/a;->e(Lcom/mintegral/msdk/e/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/e/a$2;->b:Lcom/mintegral/msdk/e/a;

    invoke-static {v1}, Lcom/mintegral/msdk/e/a;->e(Lcom/mintegral/msdk/e/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    iget-object v0, p0, Lcom/mintegral/msdk/e/a$2;->a:Lcom/mintegral/msdk/reward/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/b;)V

    .line 210
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mintegral/msdk/e/a$2;->b:Lcom/mintegral/msdk/e/a;

    invoke-static {v0}, Lcom/mintegral/msdk/e/a;->e(Lcom/mintegral/msdk/e/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/e/a$2;->b:Lcom/mintegral/msdk/e/a;

    invoke-static {v1}, Lcom/mintegral/msdk/e/a;->e(Lcom/mintegral/msdk/e/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    iget-object v0, p0, Lcom/mintegral/msdk/e/a$2;->a:Lcom/mintegral/msdk/reward/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/b;)V

    .line 216
    return-void
.end method
