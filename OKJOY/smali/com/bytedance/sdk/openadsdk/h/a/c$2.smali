.class Lcom/bytedance/sdk/openadsdk/h/a/c$2;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/c;-><init>(Ljava/io/File;)V
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
    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$2;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$2;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->b(Lcom/bytedance/sdk/openadsdk/h/a/c;)V

    .line 88
    return-void
.end method
