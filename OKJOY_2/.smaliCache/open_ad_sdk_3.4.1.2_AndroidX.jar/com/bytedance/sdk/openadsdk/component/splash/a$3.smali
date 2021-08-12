.class Lcom/bytedance/sdk/openadsdk/component/splash/a$3;
.super Ljava/lang/Object;
.source "SplashAdCacheManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/splash/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 3

    .line 734
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u7269\u6599\u9884\u52a0\u8f7d\u5931\u8d25...."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoad"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplashAdCacheManager"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 740
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 741
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 743
    :cond_4f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p1, :cond_60

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(JLjava/lang/String;)V

    .line 746
    :cond_60
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 11

    .line 750
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    .line 751
    const-string v0, "splashLoad"

    const-string v2, "\u5e7f\u544a\u7269\u6599\u9884\u52a0\u8f7d\u6210\u529f...."

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 755
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 758
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    move v2, v1

    .line 760
    :goto_28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->V()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v4

    .line 761
    if-nez v4, :cond_38

    .line 762
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 765
    :cond_38
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v5

    .line 766
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v4

    .line 767
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J

    .line 770
    if-eqz v2, :cond_4c

    const/4 v1, 0x2

    :cond_4c
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;I)V

    .line 772
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;J)J

    .line 773
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Landroid/content/Context;

    move-result-object v1

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;

    invoke-direct {v6, p0, p1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/a$3;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;Z)V

    invoke-static {v1, v5, v4, v6, v3}, Lcom/bytedance/sdk/openadsdk/utils/o;->a(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/utils/o$a;Z)V

    .line 821
    :cond_66
    goto :goto_83

    .line 822
    :cond_67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 823
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 824
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->b:Lcom/bytedance/sdk/openadsdk/component/splash/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->c(Lcom/bytedance/sdk/openadsdk/component/splash/a;)Lcom/bytedance/sdk/openadsdk/component/splash/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a$a;->a(Lcom/bytedance/sdk/openadsdk/component/splash/a$a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 827
    :cond_83
    :goto_83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p1, :cond_94

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/a$3;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(JLjava/lang/String;)V

    .line 830
    :cond_94
    return-void
.end method
