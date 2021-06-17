.class public final Lcom/efs/sdk/base/a/g/a/c;
.super Lcom/efs/sdk/base/a/g/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method

.method private static c(Lcom/efs/sdk/base/a/f/b;)Z
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/f/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 2140
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v0, v0, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 54
    if-ne v1, v0, :cond_13

    .line 2215
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    .line 54
    if-eqz v0, :cond_1c

    .line 3148
    :cond_13
    iget-object p0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget p0, p0, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 55
    if-ne v1, p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    .line 53
    return p0

    .line 55
    :cond_1c
    :goto_1c
    return v1
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 5

    .line 25
    invoke-static {p1}, Lcom/efs/sdk/base/a/g/a/c;->c(Lcom/efs/sdk/base/a/f/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/c;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 27
    return-void

    .line 31
    :cond_a
    nop

    .line 1174
    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 31
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/c;->a([B)[B

    move-result-object v0

    .line 34
    if-nez v0, :cond_20

    .line 35
    nop

    .line 2025
    const/4 v0, 0x0

    const-string v1, "efs.base"

    const-string v2, "gzip error"

    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/c;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 37
    return-void

    .line 41
    :cond_20
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a([B)V

    .line 43
    const-string v0, "gzip"

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/c;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 45
    return-void
.end method
