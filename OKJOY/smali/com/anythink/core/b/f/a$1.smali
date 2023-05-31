.class final Lcom/anythink/core/b/f/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/core/b/c/n;

.field final synthetic c:J

.field final synthetic d:Lcom/anythink/core/b/f/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/f/a;ILcom/anythink/core/b/c/n;J)V
    .registers 6

    .prologue
    .line 45
    iput-object p1, p0, Lcom/anythink/core/b/f/a$1;->d:Lcom/anythink/core/b/f/a;

    iput p2, p0, Lcom/anythink/core/b/f/a$1;->a:I

    iput-object p3, p0, Lcom/anythink/core/b/f/a$1;->b:Lcom/anythink/core/b/c/n;

    iput-wide p4, p0, Lcom/anythink/core/b/f/a$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 49
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v2

    .line 52
    new-instance v3, Lcom/anythink/core/b/c/c;

    invoke-direct {v3}, Lcom/anythink/core/b/c/c;-><init>()V

    .line 53
    iget v0, p0, Lcom/anythink/core/b/f/a$1;->a:I

    iput v0, v3, Lcom/anythink/core/b/c/c;->a:I

    .line 54
    iget-object v0, p0, Lcom/anythink/core/b/f/a$1;->b:Lcom/anythink/core/b/c/n;

    iput-object v0, v3, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    .line 55
    iget-wide v0, p0, Lcom/anythink/core/b/f/a$1;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_73

    iget-wide v0, p0, Lcom/anythink/core/b/f/a$1;->c:J

    :goto_2f
    iput-wide v0, v3, Lcom/anythink/core/b/c/c;->c:J

    .line 57
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/j;->a(Landroid/content/Context;)Lcom/anythink/core/b/j;

    move-result-object v0

    iget v1, p0, Lcom/anythink/core/b/f/a$1;->a:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/anythink/core/b/j;->a(ILcom/anythink/core/b/c/c;Lcom/anythink/core/c/a;)V

    .line 60
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->I()Ljava/util/Map;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_78

    iget v1, p0, Lcom/anythink/core/b/f/a$1;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 62
    iget v1, p0, Lcom/anythink/core/b/f/a$1;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lcom/anythink/core/b/f/a$1;->b:Lcom/anythink/core/b/c/n;

    invoke-virtual {v1}, Lcom/anythink/core/b/c/n;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 75
    :goto_72
    return-void

    .line 55
    :cond_73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_2f

    .line 74
    :cond_78
    iget-object v0, p0, Lcom/anythink/core/b/f/a$1;->d:Lcom/anythink/core/b/f/a;

    invoke-static {v0, v3}, Lcom/anythink/core/b/f/a;->a(Lcom/anythink/core/b/f/a;Lcom/anythink/core/b/c/h;)V

    goto :goto_72
.end method
