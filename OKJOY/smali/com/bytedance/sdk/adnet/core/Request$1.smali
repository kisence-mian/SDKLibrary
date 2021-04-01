.class Lcom/bytedance/sdk/adnet/core/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/bytedance/sdk/adnet/core/Request;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/core/Request;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 361
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request$1;->c:Lcom/bytedance/sdk/adnet/core/Request;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/Request$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/adnet/core/Request$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request$1;->c:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request$1;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/core/Request$1;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/p$a;->a(Ljava/lang/String;J)V

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request$1;->c:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request$1;->c:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/p$a;->a(Ljava/lang/String;)V

    .line 366
    return-void
.end method
