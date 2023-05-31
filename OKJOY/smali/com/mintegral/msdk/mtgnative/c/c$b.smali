.class public final Lcom/mintegral/msdk/mtgnative/c/c$b;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/c;

.field private b:I

.field private c:Lcom/mintegral/msdk/base/common/f/c;

.field private d:Lcom/mintegral/msdk/base/common/f/a;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/mintegral/msdk/b/a/a;

.field private h:Z

.field private i:Lcom/mintegral/msdk/out/AdMobClickListener;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c;Lcom/mintegral/msdk/base/common/f/c;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->h:Z

    .line 1746
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->b:I

    .line 1747
    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->c:Lcom/mintegral/msdk/base/common/f/c;

    .line 1748
    iput p3, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->e:I

    .line 1749
    iput-object p4, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->f:Ljava/lang/String;

    .line 1750
    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/b/a/a;)V
    .registers 2

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->g:Lcom/mintegral/msdk/b/a/a;

    .line 1735
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/common/f/a;)V
    .registers 2

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->d:Lcom/mintegral/msdk/base/common/f/a;

    .line 1795
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 2

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->i:Lcom/mintegral/msdk/out/AdMobClickListener;

    .line 1727
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->f:Ljava/lang/String;

    .line 1743
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 1730
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->h:Z

    .line 1731
    return-void
.end method

.method public final run()V
    .registers 7

    .prologue
    .line 1754
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel task adsource is = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->c:Lcom/mintegral/msdk/base/common/f/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/base/common/f/c;->a_()V

    .line 1756
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->b:I

    packed-switch v0, :pswitch_data_52

    .line 1787
    :cond_22
    :goto_22
    return-void

    .line 1764
    :pswitch_23
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Lcom/mintegral/msdk/mtgnative/c/c;)Z

    .line 1765
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->h:Z

    if-nez v0, :cond_31

    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 1766
    :cond_31
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    const-string v1, "REQUEST_TIMEOUT"

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->e:I

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->g:Lcom/mintegral/msdk/b/a/a;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->i:Lcom/mintegral/msdk/out/AdMobClickListener;

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    goto :goto_22

    .line 1770
    :pswitch_41
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    const-string v1, "REQUEST_TIMEOUT"

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->e:I

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->g:Lcom/mintegral/msdk/b/a/a;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$b;->i:Lcom/mintegral/msdk/out/AdMobClickListener;

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    goto :goto_22

    .line 1756
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_23
        :pswitch_41
    .end packed-switch
.end method
