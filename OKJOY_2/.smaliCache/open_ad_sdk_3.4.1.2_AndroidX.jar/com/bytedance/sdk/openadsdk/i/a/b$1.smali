.class Lcom/bytedance/sdk/openadsdk/i/a/b$1;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/a/b;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()V

    .line 38
    return-void
.end method
