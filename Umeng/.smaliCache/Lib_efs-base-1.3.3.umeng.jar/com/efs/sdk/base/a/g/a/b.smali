.class public final Lcom/efs/sdk/base/a/g/a/b;
.super Lcom/efs/sdk/base/a/g/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 6

    .line 19
    nop

    .line 1215
    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    .line 19
    if-eqz v0, :cond_b

    .line 20
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/b;->b(Lcom/efs/sdk/base/a/f/b;)V

    .line 21
    return-void

    .line 2075
    :cond_b
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    move-result-object v0

    .line 24
    nop

    .line 2084
    nop

    .line 2164
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 2084
    const-string v2, "wa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-static {}, Lcom/efs/sdk/base/a/b/c;->a()Lcom/efs/sdk/base/a/b/c;

    move-result-object v1

    .line 3072
    iget-boolean v1, v1, Lcom/efs/sdk/base/a/b/c;->a:Z

    .line 2084
    if-nez v1, :cond_51

    .line 2086
    iget-boolean p1, v0, Lcom/efs/sdk/base/a/b/a;->a:Z

    if-nez p1, :cond_4d

    .line 4053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 2087
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    .line 4155
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 5103
    iget v1, v1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 2087
    nop

    .line 5195
    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-nez v2, :cond_42

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    .line 6186
    iget-boolean v2, v2, Lcom/efs/sdk/base/a/c/a;->d:Z

    .line 5195
    if-eqz v2, :cond_4d

    .line 5196
    :cond_42
    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    const-string v3, "disk_limit"

    invoke-virtual {p1, v3, v1}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 2089
    :cond_4d
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/efs/sdk/base/a/b/a;->a:Z

    .line 2090
    return-void

    .line 2093
    :cond_51
    nop

    .line 7148
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v1, v1, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 2093
    if-nez v1, :cond_62

    .line 7174
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 2094
    if-eqz v1, :cond_61

    .line 8174
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 2094
    array-length v1, v1

    if-nez v1, :cond_62

    .line 2095
    :cond_61
    return-void

    .line 2098
    :cond_62
    iget-object v0, v0, Lcom/efs/sdk/base/a/b/a;->c:Lcom/efs/sdk/base/a/b/b;

    .line 9140
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v1, v1, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 2098
    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/b/b;->a(B)Lcom/efs/sdk/base/a/b/e;

    move-result-object v0

    .line 2100
    if-eqz v0, :cond_71

    .line 2103
    invoke-interface {v0, p1}, Lcom/efs/sdk/base/a/b/e;->a(Lcom/efs/sdk/base/a/f/b;)V

    .line 25
    :cond_71
    return-void
.end method
