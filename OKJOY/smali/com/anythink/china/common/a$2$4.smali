.class final Lcom/anythink/china/common/a$2$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$2;->a(Lcom/anythink/china/common/a/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/common/a/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/china/common/a$2;


# direct methods
.method constructor <init>(Lcom/anythink/china/common/a$2;Lcom/anythink/china/common/a/c;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 241
    iput-object p1, p0, Lcom/anythink/china/common/a$2$4;->c:Lcom/anythink/china/common/a$2;

    iput-object p2, p0, Lcom/anythink/china/common/a$2$4;->a:Lcom/anythink/china/common/a/c;

    iput-object p3, p0, Lcom/anythink/china/common/a$2$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .prologue
    .line 244
    iget-object v0, p0, Lcom/anythink/china/common/a$2$4;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$4;->a:Lcom/anythink/china/common/a/c;

    iget-object v1, v1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/anythink/china/common/a$2$4;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->c(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$4;->a:Lcom/anythink/china/common/a/c;

    iget-object v1, v1, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/anythink/china/common/a$2$4;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$2$4;->a:Lcom/anythink/china/common/a/c;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->d(Lcom/anythink/china/common/a/c;)V

    .line 248
    iget-object v0, p0, Lcom/anythink/china/common/a$2$4;->a:Lcom/anythink/china/common/a/c;

    iget-object v1, v0, Lcom/anythink/china/common/a/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a$2$4;->a:Lcom/anythink/china/common/a/c;

    iget-object v2, v0, Lcom/anythink/china/common/a/c;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/china/common/a$2$4;->a:Lcom/anythink/china/common/a/c;

    iget-object v3, v0, Lcom/anythink/china/common/a/c;->b:Ljava/lang/String;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/anythink/china/common/a$2$4;->b:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/anythink/china/common/a$2$4;->a:Lcom/anythink/china/common/a/c;

    iget-wide v8, v0, Lcom/anythink/china/common/a/c;->h:J

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 251
    iget-object v0, p0, Lcom/anythink/china/common/a$2$4;->c:Lcom/anythink/china/common/a$2;

    iget-object v0, v0, Lcom/anythink/china/common/a$2;->a:Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->b()V

    .line 252
    return-void
.end method
