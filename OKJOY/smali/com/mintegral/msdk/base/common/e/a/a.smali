.class public final Lcom/mintegral/msdk/base/common/e/a/a;
.super Ljava/lang/Object;
.source "CampaignRequestTimeUtil.java"


# instance fields
.field private a:Lcom/mintegral/msdk/base/entity/i;

.field private b:Lcom/mintegral/msdk/base/b/i;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/entity/i;)V
    .registers 5

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->b:Lcom/mintegral/msdk/base/b/i;

    .line 21
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    .line 22
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->c:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->b:Lcom/mintegral/msdk/base/b/i;

    .line 24
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_42

    .line 25
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/i;->d(I)V

    .line 27
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/e/a/a;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/i;->c(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->a()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 29
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/i;->c(I)V

    .line 36
    :cond_42
    :goto_42
    return-void

    .line 31
    :cond_43
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/i;->c(I)V

    goto :goto_42
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    if-eqz v0, :cond_9

    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->c()V

    .line 49
    :cond_9
    return-void
.end method

.method public final a(I)V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/i;->b(I)V

    .line 57
    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/i;->a(Ljava/lang/String;)V

    .line 43
    :cond_b
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->i()V

    .line 53
    :cond_9
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/i;->b(Ljava/lang/String;)V

    .line 74
    :cond_9
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    if-eqz v0, :cond_f

    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->b:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/n;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/n;->a(Lcom/mintegral/msdk/base/entity/i;)V

    .line 68
    :cond_f
    return-void
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/a/a;->a:Lcom/mintegral/msdk/base/entity/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/i;->a(I)V

    .line 79
    :cond_a
    return-void
.end method
