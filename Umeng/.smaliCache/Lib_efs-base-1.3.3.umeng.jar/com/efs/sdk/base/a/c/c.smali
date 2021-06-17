.class public final Lcom/efs/sdk/base/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/c/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/a/c/b;

.field public b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/efs/sdk/base/a/c/c;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/c;->a:Lcom/efs/sdk/base/a/c/b;

    const-string v1, "net"

    const-string v2, "disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/efs/sdk/base/a/c/b;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method
