.class final Lcom/mintegral/msdk/mtgnative/c/c$a$2;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/c$a;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mintegral/msdk/mtgnative/c/c$a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c$a;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 1611
    const/4 v1, 0x0

    .line 1612
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    if-eqz v2, :cond_af

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_af

    .line 1613
    invoke-static {}, Landroid/os/Looper;->prepare()V

    move v6, v0

    .line 1616
    :goto_10
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c$a;->g(Lcom/mintegral/msdk/mtgnative/c/c$a;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 1618
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 1619
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "REMOVE CANCEL TASK ON onFailed"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/c;->b(Lcom/mintegral/msdk/mtgnative/c/c;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/mtgnative/c/c$a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1622
    :cond_3a
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgnative/c/c$a;->i()I

    move-result v1

    if-eq v1, v0, :cond_4a

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->h(Lcom/mintegral/msdk/mtgnative/c/c$a;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1623
    :cond_4a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgnative/c/c$a;->i()I

    move-result v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->i(Lcom/mintegral/msdk/mtgnative/c/c$a;)Lcom/mintegral/msdk/b/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgnative/c/c$a;->j(Lcom/mintegral/msdk/mtgnative/c/c$a;)Lcom/mintegral/msdk/out/AdMobClickListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 1633
    :cond_69
    :goto_69
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7b

    .line 1634
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->f(Lcom/mintegral/msdk/mtgnative/c/c$a;)I

    move-result v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/c;->b(ILjava/lang/String;)V

    .line 1636
    :cond_7b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_86

    if-eqz v6, :cond_86

    .line 1637
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1639
    :cond_86
    return-void

    .line 1627
    :cond_87
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->h(Lcom/mintegral/msdk/mtgnative/c/c$a;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1628
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgnative/c/c$a;->a:Lcom/mintegral/msdk/mtgnative/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgnative/c/c$a;->i()I

    move-result v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    iget-object v3, v3, Lcom/mintegral/msdk/mtgnative/c/c$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->i(Lcom/mintegral/msdk/mtgnative/c/c$a;)Lcom/mintegral/msdk/b/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/c$a$2;->c:Lcom/mintegral/msdk/mtgnative/c/c$a;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgnative/c/c$a;->j(Lcom/mintegral/msdk/mtgnative/c/c$a;)Lcom/mintegral/msdk/out/AdMobClickListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    goto :goto_69

    :cond_af
    move v6, v1

    goto/16 :goto_10
.end method
