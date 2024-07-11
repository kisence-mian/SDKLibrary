.class Lcom/bytedance/sdk/openadsdk/h/a/b$1;
.super Ljava/lang/Object;
.source "GifLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/a/b$b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/h/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/b;Lcom/bytedance/sdk/openadsdk/h/a/b$b;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$1;->b:Lcom/bytedance/sdk/openadsdk/h/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/b$b;

    if-eqz v0, :cond_7

    .line 66
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/h/a/b$b;->a()V

    .line 68
    :cond_7
    return-void
.end method
