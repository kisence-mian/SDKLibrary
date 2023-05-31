.class final Lcom/mintegral/msdk/base/utils/j$4;
.super Ljava/lang/Object;
.source "CommonSDKUtil.java"

# interfaces
.implements Lcom/mintegral/msdk/optimize/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/j;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/utils/j$4;->a:Z

    iput-object p2, p0, Lcom/mintegral/msdk/base/utils/j$4;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object p3, p0, Lcom/mintegral/msdk/base/utils/j$4;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/mintegral/msdk/base/utils/j$4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mintegral/msdk/base/utils/j$4;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/utils/j$4;->a:Z

    if-eqz v0, :cond_e

    .line 688
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/j$4;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/j$4;->c:Landroid/content/Context;

    const-string v2, "start"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    :goto_d
    return-void

    .line 690
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/j$4;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/j$4;->c:Landroid/content/Context;

    const-string v2, "shortcuts_start"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 697
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 701
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/j$4;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isDowning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/j$4;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/j$4;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/j$4;->c:Landroid/content/Context;

    const-string v2, "end"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 704
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/g;->b(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/j$4;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/g;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)J

    .line 705
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_92

    iget-boolean v0, p0, Lcom/mintegral/msdk/base/utils/j$4;->a:Z

    if-eqz v0, :cond_92

    .line 706
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/j$4;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/j$4;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/base/utils/j$4;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/j$4;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    :cond_91
    :goto_91
    return-void

    .line 708
    :cond_92
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/utils/j$4;->a:Z

    if-nez v0, :cond_91

    .line 709
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/j$4;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_91
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 715
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/j$4;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/j$4;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/base/utils/j$4;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method
