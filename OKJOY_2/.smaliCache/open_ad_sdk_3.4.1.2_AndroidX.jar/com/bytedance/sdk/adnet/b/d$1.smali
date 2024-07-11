.class Lcom/bytedance/sdk/adnet/b/d$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d$d;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Landroid/widget/ImageView$ScaleType;

.field final synthetic f:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .registers 7

    .line 230
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$1;->f:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/d$1;->b:Lcom/bytedance/sdk/adnet/b/d$d;

    iput p4, p0, Lcom/bytedance/sdk/adnet/b/d$1;->c:I

    iput p5, p0, Lcom/bytedance/sdk/adnet/b/d$1;->d:I

    iput-object p6, p0, Lcom/bytedance/sdk/adnet/b/d$1;->e:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$1;->f:Lcom/bytedance/sdk/adnet/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/adnet/b/d$1;->b:Lcom/bytedance/sdk/adnet/b/d$d;

    iget v3, p0, Lcom/bytedance/sdk/adnet/b/d$1;->c:I

    iget v4, p0, Lcom/bytedance/sdk/adnet/b/d$1;->d:I

    iget-object v5, p0, Lcom/bytedance/sdk/adnet/b/d$1;->e:Landroid/widget/ImageView$ScaleType;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/adnet/b/d;->a(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    .line 235
    return-void
.end method
