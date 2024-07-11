.class final Lcom/anythink/china/common/a$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$2;->a(Lcom/anythink/china/common/a/e;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/a/e;

.field final synthetic b:J

.field final synthetic c:Lcom/anythink/china/common/a$2;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/e;J)V
    .registers 5

    .line 259
    iput-object p1, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iput-object p2, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iput-wide p3, p0, Lcom/anythink/china/common/a$2$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 262
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->c(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_34

    .line 265
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Ljava/util/Map;)Ljava/util/Map;

    .line 267
    :cond_34
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/e;)V

    .line 270
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;)V

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    const-string v1, "action_offer_download_end"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v1, v1, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    const-string v2, "receiver_extra_offer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->j:Ljava/lang/String;

    const-string v2, "receiver_extra_click_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v1, v1, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v3, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/anythink/china/common/a$2$2;->b:J

    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/e;

    iget-wide v8, v0, Lcom/anythink/china/common/a/e;->h:J

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 282
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->b()V

    .line 283
    return-void
.end method
