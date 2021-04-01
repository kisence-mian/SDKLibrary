.class Lcom/bytedance/sdk/openadsdk/h/a/c$4;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/c;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$4;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$4;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;J)V

    .line 169
    return-void
.end method
