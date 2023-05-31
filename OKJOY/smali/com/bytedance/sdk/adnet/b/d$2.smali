.class Lcom/bytedance/sdk/adnet/b/d$2;
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

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$d;)V
    .registers 3

    .prologue
    .line 246
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$2;->b:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$2;->a:Lcom/bytedance/sdk/adnet/b/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$2;->a:Lcom/bytedance/sdk/adnet/b/d$d;

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/b/d$d;->a()V

    .line 250
    return-void
.end method
