.class Lcom/bytedance/sdk/openadsdk/i/a/c$4;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/a/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/a/c;I)V
    .registers 3

    .line 170
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$4;->a:Lcom/bytedance/sdk/openadsdk/i/a/c;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$4;->a:Lcom/bytedance/sdk/openadsdk/i/a/c;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a/c;->a(Lcom/bytedance/sdk/openadsdk/i/a/c;J)V

    .line 175
    return-void
.end method
