.class final Lcom/alphab/a/b/c$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "ReqCampaignManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alphab/a/b/c;


# direct methods
.method constructor <init>(Lcom/alphab/a/b/c;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    iget-object v1, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    invoke-static {v1}, Lcom/alphab/a/b/c;->a(Lcom/alphab/a/b/c;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    invoke-static {v2}, Lcom/alphab/a/b/c;->b(Lcom/alphab/a/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alphab/a/b/c;->a(Lcom/alphab/a/b/c;Ljava/util/List;Ljava/lang/String;)V

    .line 56
    const-string v0, ""

    .line 58
    :try_start_13
    iget-object v1, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    iget-object v1, v1, Lcom/alphab/a/b/c;->e:Lcom/mintegral/msdk/base/common/net/l;

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/net/a/e;->d(Lcom/mintegral/msdk/base/common/net/l;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_50

    .line 62
    :goto_1a
    iget-object v1, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    iget-object v1, v1, Lcom/alphab/a/b/c;->e:Lcom/mintegral/msdk/base/common/net/l;

    if-eqz v1, :cond_2c

    .line 64
    iget-object v0, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    iget-object v0, v0, Lcom/alphab/a/b/c;->e:Lcom/mintegral/msdk/base/common/net/l;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/net/l;->c()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/alphab/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 68
    iget-object v1, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alphab/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alphab/a/b/c;->b:Ljava/lang/String;

    .line 70
    :cond_4f
    return-void

    .line 59
    :catch_50
    move-exception v1

    .line 60
    iget-object v2, p0, Lcom/alphab/a/b/c$1;->a:Lcom/alphab/a/b/c;

    invoke-static {v2}, Lcom/alphab/a/b/c;->c(Lcom/alphab/a/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method
