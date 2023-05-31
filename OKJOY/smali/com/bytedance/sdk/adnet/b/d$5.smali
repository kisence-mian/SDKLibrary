.class Lcom/bytedance/sdk/adnet/b/d$5;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 565
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$5;->b:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$5;->b:Lcom/bytedance/sdk/adnet/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d;->b(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 569
    if-eqz v0, :cond_53

    .line 570
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/b/d$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/d$c;

    .line 575
    invoke-static {v1}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$d;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 578
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->a()Lcom/bytedance/sdk/adnet/err/VAdError;

    move-result-object v3

    if-nez v3, :cond_47

    .line 579
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->b(Lcom/bytedance/sdk/adnet/b/d$a;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 580
    invoke-static {v1}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$d;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lcom/bytedance/sdk/adnet/b/d$d;->a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V

    .line 584
    :goto_3f
    invoke-static {v1}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$d;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/adnet/b/d$d;->b()V

    goto :goto_18

    .line 582
    :cond_47
    invoke-static {v1}, Lcom/bytedance/sdk/adnet/b/d$c;->a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/d$a;->b()Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/adnet/b/d$d;->b(Lcom/bytedance/sdk/adnet/core/n;)V

    goto :goto_3f

    .line 588
    :cond_53
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$5;->b:Lcom/bytedance/sdk/adnet/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d;->b(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-void
.end method
