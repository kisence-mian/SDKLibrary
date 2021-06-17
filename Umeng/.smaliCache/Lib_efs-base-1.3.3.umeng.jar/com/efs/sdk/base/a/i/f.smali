.class public final Lcom/efs/sdk/base/a/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/a/i/f$a;
    }
.end annotation


# instance fields
.field public a:Lcom/efs/sdk/base/a/i/c;

.field public b:Lcom/efs/sdk/base/a/d/a;

.field public c:Lcom/efs/sdk/base/a/i/d;

.field public d:Lcom/efs/sdk/base/a/i/g;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/efs/sdk/base/a/i/c;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/i/c;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    .line 38
    new-instance v0, Lcom/efs/sdk/base/a/i/d;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/i/d;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    .line 39
    new-instance v0, Lcom/efs/sdk/base/a/i/g;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/i/g;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/f;->d:Lcom/efs/sdk/base/a/i/g;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/efs/sdk/base/a/i/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;
    .registers 6

    .line 205
    new-instance v0, Lcom/efs/sdk/base/a/i/b;

    iget-object v1, p0, Lcom/efs/sdk/base/a/i/f;->a:Lcom/efs/sdk/base/a/i/c;

    iget-object v1, v1, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    const-string v2, "efs_core"

    invoke-direct {v0, v2, p1, v1}, Lcom/efs/sdk/base/a/i/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "cver"

    invoke-virtual {v0, p2, p1}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    return-object v0
.end method

.method public final a(I)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-eqz v0, :cond_d

    .line 178
    const-string v1, "flow_limit"

    invoke-virtual {p0, v1, p1}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 180
    :cond_d
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/efs/sdk/base/a/c/a;->d:Z

    .line 183
    if-eqz v0, :cond_1c

    .line 184
    :cond_c
    const-string v0, "flow_limit_type"

    invoke-virtual {p0, v0, p1}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;

    move-result-object p1

    .line 185
    const-string v0, "code"

    invoke-virtual {p1, v0, p2}, Lcom/efs/sdk/base/a/i/b;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    iget-object p2, p0, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 188
    :cond_1c
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/efs/sdk/base/a/i/f;->d:Lcom/efs/sdk/base/a/i/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/efs/sdk/base/a/i/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method
