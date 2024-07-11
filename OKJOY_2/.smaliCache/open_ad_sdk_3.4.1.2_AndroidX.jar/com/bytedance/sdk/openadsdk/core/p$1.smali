.class final Lcom/bytedance/sdk/openadsdk/core/p$1;
.super Ljava/lang/Object;
.source "InternalContainer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/c/g$a;
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

    .line 193
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$1;->a:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :cond_8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
