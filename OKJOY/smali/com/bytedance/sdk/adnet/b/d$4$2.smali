.class Lcom/bytedance/sdk/adnet/b/d$4$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d$4;->b(Lcom/bytedance/sdk/adnet/core/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/core/n;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d$4;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d$4;Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 3

    .prologue
    .line 321
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$4$2;->b:Lcom/bytedance/sdk/adnet/b/d$4;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$4$2;->a:Lcom/bytedance/sdk/adnet/core/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$4$2;->b:Lcom/bytedance/sdk/adnet/b/d$4;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/b/d$4;->b:Lcom/bytedance/sdk/adnet/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$4$2;->b:Lcom/bytedance/sdk/adnet/b/d$4;

    iget-object v1, v1, Lcom/bytedance/sdk/adnet/b/d$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/d$4$2;->a:Lcom/bytedance/sdk/adnet/core/n;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;->b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n;)V

    .line 325
    return-void
.end method
