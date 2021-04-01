.class Lcom/bytedance/sdk/adnet/core/g$1;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/core/g;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/bytedance/sdk/adnet/core/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/core/g;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/g$1;->b:Lcom/bytedance/sdk/adnet/core/g;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/g$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$1;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method
