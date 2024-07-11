.class final Lcom/bytedance/sdk/openadsdk/utils/ak$3;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/graphics/Bitmap;

.field final synthetic f:Z

.field final synthetic g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .registers 8

    .line 958
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->e:Landroid/graphics/Bitmap;

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->f:Z

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 961
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->e:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->f:Z

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/utils/ak$3;->g:I

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 962
    return-void
.end method
