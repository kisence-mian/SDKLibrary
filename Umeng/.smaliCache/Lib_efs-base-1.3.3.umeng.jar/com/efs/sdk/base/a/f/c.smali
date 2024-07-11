.class public final Lcom/efs/sdk/base/a/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/efs/sdk/base/http/HttpResponse;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/f/c;->a:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/f/c;->b:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/efs/sdk/base/a/f/c;->c:Lcom/efs/sdk/base/http/HttpResponse;

    return-void
.end method
