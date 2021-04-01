.class final Lcom/mintegral/msdk/mtgnative/c/b$g;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V
    .registers 6

    .prologue
    .line 3159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->d:Z

    .line 3160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->c:J

    .line 3161
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->a:Ljava/lang/String;

    .line 3162
    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 3163
    iput-boolean p3, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->d:Z

    .line 3164
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 3169
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->d:Z

    if-eqz v0, :cond_68

    .line 3170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->c:J

    sub-long v4, v0, v2

    .line 3172
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    .line 3174
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->a:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "1"

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 3177
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 3179
    :cond_4d
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 3180
    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 3181
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    .line 3187
    :cond_68
    :goto_68
    return-void

    .line 3184
    :catch_69
    move-exception v0

    .line 3185
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 3192
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->d:Z

    if-eqz v0, :cond_67

    .line 3193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->c:J

    sub-long v4, v0, v2

    .line 3195
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    .line 3197
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    const/4 v2, 0x3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->a:Ljava/lang/String;

    const-string v8, "1"

    move-object v4, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 3200
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 3202
    :cond_4c
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 3203
    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 3204
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$g;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    .line 3210
    :cond_67
    :goto_67
    return-void

    .line 3207
    :catch_68
    move-exception v0

    .line 3208
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67
.end method
