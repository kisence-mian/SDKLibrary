.class public final Lcom/efs/sdk/base/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/a/b/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .registers 7

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/lang/String;)Lcom/efs/sdk/base/a/f/b;

    move-result-object v0

    .line 26
    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 1075
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    .line 27
    invoke-static {p1}, Lcom/efs/sdk/base/a/b/a;->b(Ljava/io/File;)V

    .line 28
    return v1

    .line 32
    :cond_12
    nop

    .line 1164
    iget-object v2, v0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v2, v2, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 32
    const-string v3, "wa"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 33
    invoke-static {}, Lcom/efs/sdk/base/a/e/b;->a()Lcom/efs/sdk/base/a/e/b;

    move-result-object v2

    .line 2164
    iget-object v0, v0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v0, v0, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_32

    return v1

    :cond_32
    const/4 p1, 0x0

    .line 32
    return p1
.end method
