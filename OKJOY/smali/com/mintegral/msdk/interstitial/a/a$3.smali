.class final Lcom/mintegral/msdk/interstitial/a/a$3;
.super Ljava/lang/Object;
.source "IntersAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mintegral/msdk/interstitial/a/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/a/a;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 701
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->c:Lcom/mintegral/msdk/interstitial/a/a;

    iput-object p2, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 705
    const-string v0, "IntersAdapter"

    const-string v1, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->a:Ljava/util/List;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_89

    .line 709
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onload load\u6210\u529f size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "IntersAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onload \u628a\u5e7f\u544a\u5b58\u5728\u672c\u5730 size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->c:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->f(Lcom/mintegral/msdk/interstitial/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->c:Lcom/mintegral/msdk/interstitial/a/a;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/interstitial/a/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 714
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->c:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->g(Lcom/mintegral/msdk/interstitial/a/a;)V

    .line 722
    :goto_5d
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->c:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/a/a;->h(Lcom/mintegral/msdk/interstitial/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/m;->d()V

    .line 726
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->b:Ljava/util/List;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_81

    .line 727
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->c:Lcom/mintegral/msdk/interstitial/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/interstitial/a/a;->b(Lcom/mintegral/msdk/interstitial/a/a;Ljava/util/List;)V

    .line 730
    :cond_81
    const-string v0, "IntersAdapter"

    const-string v1, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void

    .line 717
    :cond_89
    const-string v0, "IntersAdapter"

    const-string v1, "onload load\u5931\u8d25 size:0"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/a/a$3;->c:Lcom/mintegral/msdk/interstitial/a/a;

    const-string v1, "no ads available"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/a/a;Ljava/lang/String;)V

    goto :goto_5d
.end method
