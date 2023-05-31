.class final Lcom/bytedance/sdk/openadsdk/core/o$1;
.super Ljava/lang/Object;
.source "InternalContainer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$1;->a:Landroid/content/Context;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o$1;->a:Landroid/content/Context;

    goto :goto_8
.end method
