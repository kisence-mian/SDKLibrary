.class final Lcom/anythink/china/common/a$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$2;->a(Lcom/anythink/china/common/a/c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/a/c;

.field final synthetic b:J

.field final synthetic c:Lcom/anythink/china/common/a$2;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/c;J)V
    .registers 6

    .prologue
    .line 207
    iput-object p1, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iput-object p2, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    iput-wide p3, p0, Lcom/anythink/china/common/a$2$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .prologue
    .line 210
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    iget-object v1, v1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->c(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    iget-object v1, v1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_34

    .line 213
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Ljava/util/Map;)Ljava/util/Map;

    .line 215
    :cond_34
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    iget-object v1, v1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/c;)V

    .line 218
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/c;)V

    .line 220
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    iget-object v1, v0, Lcom/anythink/china/common/a/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    iget-object v2, v0, Lcom/anythink/china/common/a/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    iget-object v3, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/anythink/china/common/a$2$2;->b:J

    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->a:Lcom/anythink/china/common/a/c;

    iget-wide v8, v0, Lcom/anythink/china/common/a/c;->h:J

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 223
    iget-object v0, p0, Lcom/anythink/china/common/a$2$2;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->b()V

    .line 224
    return-void
.end method
