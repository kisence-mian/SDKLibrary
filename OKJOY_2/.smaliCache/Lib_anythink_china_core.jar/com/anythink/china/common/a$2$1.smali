.class final Lcom/anythink/china/common/a$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$2;->a(Lcom/anythink/china/common/a/e;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/anythink/china/common/a/e;

.field final synthetic d:Lcom/anythink/china/common/a$2;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a$2;JJLcom/anythink/china/common/a/e;)V
    .registers 7

    .line 235
    iput-object p1, p0, Lcom/anythink/china/common/a$2$1;->d:Lcom/anythink/china/common/a$2;

    iput-wide p2, p0, Lcom/anythink/china/common/a$2$1;->a:J

    iput-wide p4, p0, Lcom/anythink/china/common/a$2$1;->b:J

    iput-object p6, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 238
    iget-wide v0, p0, Lcom/anythink/china/common/a$2$1;->a:J

    iget-wide v2, p0, Lcom/anythink/china/common/a$2$1;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_48

    .line 239
    iget-object v0, p0, Lcom/anythink/china/common/a$2$1;->d:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v2, v2, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/anythink/china/common/a$2$1;->d:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/e;)V

    .line 241
    iget-object v0, p0, Lcom/anythink/china/common/a$2$1;->d:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    iget-wide v3, p0, Lcom/anythink/china/common/a$2$1;->a:J

    iget-wide v5, p0, Lcom/anythink/china/common/a$2$1;->b:J

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJ)V

    .line 244
    :cond_48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    const-string v1, "action_offer_download_start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/anythink/china/common/a$2$1;->d:Lcom/anythink/china/common/a$2;

    iget-object v1, v1, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    const-string v2, "receiver_extra_offer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->j:Ljava/lang/String;

    const-string v2, "receiver_extra_click_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/anythink/china/common/a$2$1;->d:Lcom/anythink/china/common/a$2;

    iget-object v1, v1, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    iget-object v0, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a$2$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v3, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/anythink/china/common/a$2$1;->b:J

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 252
    return-void
.end method
