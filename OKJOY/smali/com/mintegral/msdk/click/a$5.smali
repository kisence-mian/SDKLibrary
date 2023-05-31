.class final Lcom/mintegral/msdk/click/a$5;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Lcom/mintegral/msdk/optimize/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mintegral/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/a;ZLcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    iput-boolean p2, p0, Lcom/mintegral/msdk/click/a$5;->a:Z

    iput-object p3, p0, Lcom/mintegral/msdk/click/a$5;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object p4, p0, Lcom/mintegral/msdk/click/a$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mintegral/msdk/click/a$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->i(Lcom/mintegral/msdk/click/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1975
    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v1}, Lcom/mintegral/msdk/click/a;->i(Lcom/mintegral/msdk/click/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1976
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a$5;->a:Z

    if-eqz v0, :cond_26

    .line 1977
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$5;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v1}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "start"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 1981
    :goto_25
    return-void

    .line 1979
    :cond_26
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$5;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v1}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "shortcuts_start"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public final a(I)V
    .registers 4

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->i(Lcom/mintegral/msdk/click/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1986
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1987
    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v1}, Lcom/mintegral/msdk/click/a;->i(Lcom/mintegral/msdk/click/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1988
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 1992
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$5;->c:Ljava/lang/String;

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

    .line 1993
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$5;->c:Ljava/lang/String;

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

    .line 1994
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$5;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v1}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "end"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 1995
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/g;->b(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/g;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)J

    .line 1996
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a$5;->a:Z

    if-eqz v0, :cond_9a

    .line 1997
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$5;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/click/a$5;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2002
    :cond_99
    :goto_99
    return-void

    .line 1999
    :cond_9a
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a$5;->a:Z

    if-nez v0, :cond_99

    .line 2000
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_99
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$5;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$5;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$5;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    return-void
.end method
