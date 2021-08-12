.class final Lcom/bytedance/sdk/openadsdk/utils/g$1;
.super Ljava/lang/Object;
.source "CommonDialogHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/g$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/g;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public b()V
    .registers 1

    .line 106
    return-void
.end method

.method public c()V
    .registers 1

    .line 110
    return-void
.end method
