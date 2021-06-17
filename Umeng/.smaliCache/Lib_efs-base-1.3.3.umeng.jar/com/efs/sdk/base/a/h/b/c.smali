.class public final Lcom/efs/sdk/base/a/h/b/c;
.super Lcom/efs/sdk/base/a/h/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/efs/sdk/base/a/h/a/e<",
        "Lcom/efs/sdk/base/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/a/h/b/b;


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/a/h/b/b;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/a/h/a/e;-><init>(Lcom/efs/sdk/base/a/h/a/c;)V

    .line 24
    iput-object p1, p0, Lcom/efs/sdk/base/a/h/b/c;->a:Lcom/efs/sdk/base/a/h/b/b;

    .line 25
    return-void
.end method


# virtual methods
.method public final b()Lcom/efs/sdk/base/http/HttpResponse;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/efs/sdk/base/a/h/b/c;->a:Lcom/efs/sdk/base/a/h/b/b;

    const-string v1, "post"

    iput-object v1, v0, Lcom/efs/sdk/base/a/h/b/b;->e:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/h/b/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/base/http/HttpResponse;

    return-object v0
.end method
