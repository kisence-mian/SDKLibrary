.class Lcom/bytedance/sdk/openadsdk/g/a/b$1;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V
    .registers 3

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/g/a/b$b;->a()V

    .line 62
    :cond_9
    return-void
.end method
