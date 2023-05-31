.class final Lcom/mintegral/msdk/mtgnative/c/b$d;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/download/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V
    .registers 6

    .prologue
    .line 3100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->d:Z

    .line 3101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->c:J

    .line 3102
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->a:Ljava/lang/String;

    .line 3103
    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 3104
    iput-boolean p3, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->d:Z

    .line 3105
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 3110
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->d:Z

    if-eqz v0, :cond_69

    .line 3111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->c:J

    sub-long v4, v0, v2

    .line 3113
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    .line 3114
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    const/16 v2, 0x14

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->a:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "2"

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3116
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 3117
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 3119
    :cond_4e
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 3120
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 3121
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    .line 3127
    :cond_69
    :goto_69
    return-void

    .line 3124
    :catch_6a
    move-exception v0

    .line 3125
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 3132
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->d:Z

    if-eqz v0, :cond_68

    .line 3133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->c:J

    sub-long v4, v0, v2

    .line 3135
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    .line 3136
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000043"

    const/16 v2, 0x15

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->a:Ljava/lang/String;

    const-string v8, "2"

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 3139
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 3140
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 3142
    :cond_56
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->h(Ljava/lang/String;)V

    .line 3144
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b$d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    .line 3149
    :cond_68
    :goto_68
    return-void

    .line 3146
    :catch_69
    move-exception v0

    .line 3147
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method
