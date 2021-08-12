.class Lcom/bytedance/sdk/openadsdk/i/a/c$2;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/a/c;-><init>(Ljava/io/File;)V
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

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$2;->a:Lcom/bytedance/sdk/openadsdk/i/a/c;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$2;->a:Lcom/bytedance/sdk/openadsdk/i/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/a/c;->b(Lcom/bytedance/sdk/openadsdk/i/a/c;)V

    .line 92
    return-void
.end method
