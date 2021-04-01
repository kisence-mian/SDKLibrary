.class public final Lcom/mintegral/msdk/base/common/e/a;
.super Ljava/lang/Object;
.source "PlayableReportUtils.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mintegral/msdk/base/common/e/a;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v3, 0x1

    .line 28
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 40
    :cond_9
    :goto_9
    return-void

    .line 31
    :cond_a
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_67

    move v2, v3

    .line 32
    :goto_15
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    if-eqz v2, :cond_6a

    move v2, v3

    :goto_1c
    const-string v3, "0"

    const-string v4, ""

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaRst()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p3}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 38
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_6c

    sget v1, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_58
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 39
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    .line 31
    :cond_67
    const/4 v0, 0x0

    move v2, v0

    goto :goto_15

    .line 32
    :cond_6a
    const/4 v2, 0x3

    goto :goto_1c

    .line 38
    :cond_6c
    sget v1, Lcom/mintegral/msdk/base/entity/q;->b:I

    goto :goto_58
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 49
    if-eqz p0, :cond_10

    .line 50
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/q;->b(Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/q;->d(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    :cond_10
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 92
    if-eqz p1, :cond_1c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 96
    new-instance v0, Lcom/mintegral/msdk/base/common/g/a;

    invoke-direct {v0, p0, p2}, Lcom/mintegral/msdk/base/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    sget-object v1, Lcom/mintegral/msdk/base/common/e/a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1c

    .line 1135
    sget-object v1, Lcom/mintegral/msdk/base/common/e/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_1c
    return-void
.end method

.method public static b(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 65
    const-string v0, "2000060"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 68
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/q;->b(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static c(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 75
    const-string v0, "2000059"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 78
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/q;->b(Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/q;->c(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static d(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 104
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/q;->h(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static e(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 112
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/q;->i(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static f(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 125
    const-string v0, "2000063"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 128
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/q;->a(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0, p1, p2}, Lcom/mintegral/msdk/base/common/e/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    return-void
.end method
