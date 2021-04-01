.class final Lcom/mintegral/msdk/click/a$9;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Lcom/mintegral/msdk/click/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;IZLjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/Boolean;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/mintegral/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;ZLjava/lang/Boolean;IZ)V
    .registers 7

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    iput-object p2, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-boolean p3, p0, Lcom/mintegral/msdk/click/a$9;->b:Z

    iput-object p4, p0, Lcom/mintegral/msdk/click/a$9;->c:Ljava/lang/Boolean;

    iput p5, p0, Lcom/mintegral/msdk/click/a$9;->d:I

    iput-boolean p6, p0, Lcom/mintegral/msdk/click/a$9;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 1108
    sget-object v0, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    if-eqz v0, :cond_f

    .line 1109
    sget-object v0, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1112
    :cond_f
    if-eqz p1, :cond_6f

    instance-of v0, p1, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    if-eqz v0, :cond_6f

    move-object v2, p1

    .line 1113
    check-cast v2, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 1114
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Redirection done...   code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->e(Lcom/mintegral/msdk/click/a;)Z

    .line 1117
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setJumpResult(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;)V

    .line 1120
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-boolean v3, p0, Lcom/mintegral/msdk/click/a$9;->b:Z

    iget-object v4, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    invoke-static {v4}, Lcom/mintegral/msdk/click/a;->f(Lcom/mintegral/msdk/click/a;)Z

    move-result v4

    iget-object v5, p0, Lcom/mintegral/msdk/click/a$9;->c:Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZLjava/lang/Boolean;)V

    .line 1121
    invoke-virtual {v2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->isjumpDone()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1122
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v0

    .line 1123
    iget-object v1, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    invoke-static {v2}, Lcom/mintegral/msdk/click/a;->c(Lcom/mintegral/msdk/click/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)J

    .line 1125
    :cond_66
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    iget-boolean v1, p0, Lcom/mintegral/msdk/click/a$9;->e:Z

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;ZLcom/mintegral/msdk/out/Campaign;)V

    .line 1128
    :cond_6f
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1132
    sget-object v0, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    if-eqz v0, :cond_f

    .line 1133
    sget-object v0, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1135
    :cond_f
    if-eqz p1, :cond_23

    instance-of v0, p1, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    if-eqz v0, :cond_23

    .line 1136
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->e(Lcom/mintegral/msdk/click/a;)Z

    .line 1137
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    check-cast p1, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1139
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1140
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-interface {v0, v1, p2}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1142
    :cond_36
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$9;->f:Lcom/mintegral/msdk/click/a;

    iget-boolean v1, p0, Lcom/mintegral/msdk/click/a$9;->e:Z

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$9;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;ZLcom/mintegral/msdk/out/Campaign;)V

    .line 1143
    return-void
.end method
