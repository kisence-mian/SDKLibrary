.class public final Lcom/efs/sdk/base/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/efs/sdk/base/a/f/b;

.field private b:Lcom/efs/sdk/base/a/e/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/a/f/b;Lcom/efs/sdk/base/a/e/c;Ljava/lang/String;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/efs/sdk/base/a/e/e;->a:Lcom/efs/sdk/base/a/f/b;

    .line 29
    iput-object p2, p0, Lcom/efs/sdk/base/a/e/e;->b:Lcom/efs/sdk/base/a/e/c;

    .line 30
    iput-object p3, p0, Lcom/efs/sdk/base/a/e/e;->c:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/e;->a:Lcom/efs/sdk/base/a/f/b;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/efs/sdk/base/a/e/e;->b:Lcom/efs/sdk/base/a/e/c;

    if-eqz v1, :cond_e

    .line 38
    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/efs/sdk/base/a/e/c;->a(Lcom/efs/sdk/base/a/f/b;Z)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    goto :goto_13

    .line 42
    :cond_e
    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    .line 45
    :goto_13
    invoke-static {}, Lcom/efs/sdk/base/a/e/d;->a()Lcom/efs/sdk/base/a/e/d;

    move-result-object v1

    iget-object v2, p0, Lcom/efs/sdk/base/a/e/e;->c:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    if-eqz v3, :cond_1f

    const/4 v0, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpResponse;->getHttpCode()I

    move-result v0

    :goto_23
    invoke-virtual {v1, v2, v0}, Lcom/efs/sdk/base/a/e/d;->a(Ljava/lang/Object;I)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/efs/sdk/base/a/e/e;->c:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/efs/sdk/base/a/e/e;->b:Lcom/efs/sdk/base/a/e/c;

    .line 48
    return-void
.end method
