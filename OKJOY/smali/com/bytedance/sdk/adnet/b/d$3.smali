.class Lcom/bytedance/sdk/adnet/b/d$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d;->b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/d$d;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d$c;

.field final synthetic c:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$d;Lcom/bytedance/sdk/adnet/b/d$c;)V
    .registers 4

    .prologue
    .line 262
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$3;->c:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$3;->a:Lcom/bytedance/sdk/adnet/b/d$d;

    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/d$3;->b:Lcom/bytedance/sdk/adnet/b/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$3;->a:Lcom/bytedance/sdk/adnet/b/d$d;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$3;->b:Lcom/bytedance/sdk/adnet/b/d$c;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/d$d;->a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$3;->a:Lcom/bytedance/sdk/adnet/b/d$d;

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/b/d$d;->b()V

    .line 267
    return-void
.end method
