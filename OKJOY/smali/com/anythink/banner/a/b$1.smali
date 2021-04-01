.class final Lcom/anythink/banner/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/a/b;->notfiyShow(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/b/c/a;

.field final synthetic c:Lcom/anythink/banner/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/banner/a/b;Landroid/content/Context;Lcom/anythink/core/b/c/a;)V
    .registers 4

    .prologue
    .line 22
    iput-object p1, p0, Lcom/anythink/banner/a/b$1;->c:Lcom/anythink/banner/a/b;

    iput-object p2, p0, Lcom/anythink/banner/a/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/banner/a/b$1;->b:Lcom/anythink/core/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anythink/banner/a/b$1;->c:Lcom/anythink/banner/a/b;

    invoke-virtual {v0}, Lcom/anythink/banner/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_5f

    .line 28
    iget-object v0, p0, Lcom/anythink/banner/a/b$1;->c:Lcom/anythink/banner/a/b;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->c:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/anythink/banner/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/anythink/core/b/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 1334
    :goto_21
    iput-object v0, v1, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 35
    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v3}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/b/c/b;->b(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/anythink/banner/a/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/m;->a(Landroid/content/Context;Lcom/anythink/core/b/c/b;)V

    .line 40
    iget-object v0, p0, Lcom/anythink/banner/a/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;J)V

    .line 41
    iget-object v0, p0, Lcom/anythink/banner/a/b$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 44
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/a/b$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/banner/a/b$1;->b:Lcom/anythink/core/b/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Lcom/anythink/core/b/c/a;)V

    .line 46
    :cond_5f
    return-void

    .line 32
    :cond_60
    const-string v0, ""

    goto :goto_21
.end method
