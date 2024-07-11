.class public final Lcom/efs/sdk/base/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/a/b/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 5

    .line 28
    nop

    .line 1174
    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 28
    if-nez v0, :cond_6

    .line 29
    return-void

    .line 32
    :cond_6
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b;->a(Lcom/efs/sdk/base/a/f/b;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    .line 2113
    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 33
    invoke-static {v1, v2}, Lcom/efs/sdk/base/a/h/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 34
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    nop

    .line 2174
    iget-object p1, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 36
    invoke-static {v2, p1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;[B)Z

    .line 3053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 3131
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/i/d;->b()V

    .line 4053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 4138
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/i/d;->c()V

    .line 39
    return-void
.end method

.method public final a(Ljava/io/File;)V
    .registers 4

    .line 45
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 5113
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 45
    invoke-static {v0, v1}, Lcom/efs/sdk/base/a/h/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;Ljava/io/File;)V

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 64
    return-void
.end method

.method public final a(Ljava/io/File;Lcom/efs/sdk/base/a/f/b;)Z
    .registers 4

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 52
    const/4 p1, 0x0

    return p1

    .line 55
    :cond_8
    nop

    .line 5199
    iput-object p1, p2, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 56
    invoke-virtual {p2}, Lcom/efs/sdk/base/a/f/b;->d()V

    .line 57
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/a/f/b;->b(I)V

    .line 58
    return p1
.end method
