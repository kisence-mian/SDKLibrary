.class public final Lcom/efs/sdk/base/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/a/e/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;Z)Lcom/efs/sdk/base/http/HttpResponse;
    .registers 11

    .line 27
    invoke-static {}, Lcom/efs/sdk/base/a/a/c;->a()Lcom/efs/sdk/base/a/a/c;

    move-result-object v0

    .line 28
    nop

    .line 1107
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->d:Ljava/lang/String;

    .line 28
    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->d:Ljava/lang/String;

    .line 29
    nop

    .line 1132
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v1, v1, Lcom/efs/sdk/base/a/f/a;->e:I

    .line 29
    iput v1, v0, Lcom/efs/sdk/base/a/a/c;->e:I

    .line 30
    nop

    .line 1140
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v1, v1, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 30
    iput-byte v1, v0, Lcom/efs/sdk/base/a/a/c;->g:B

    .line 31
    nop

    .line 1164
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    .line 31
    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->h:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/f/b;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/efs/sdk/base/a/a/c;->l:J

    .line 35
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/efs/sdk/base/a/c/a/c;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 41
    nop

    .line 2148
    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v2, v2, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 41
    const/4 v3, 0x1

    if-nez v2, :cond_b3

    .line 42
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    move-result-object v2

    .line 2174
    iget-object v4, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 42
    nop

    .line 2229
    iget-object v5, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v5, v5, Lcom/efs/sdk/base/a/f/c;->b:Z

    .line 42
    nop

    .line 3138
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/a/c;->b()Ljava/lang/String;

    move-result-object v6

    .line 3139
    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/a/a;->a(Ljava/lang/String;Lcom/efs/sdk/base/a/a/c;)Ljava/lang/String;

    move-result-object v1

    .line 3140
    iget-boolean v2, v2, Lcom/efs/sdk/base/a/a/a;->a:Z

    if-eqz v2, :cond_5e

    .line 3141
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "upload buffer file, url is "

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4024
    const-string v7, "efs.px.api"

    invoke-static {v7, v2}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    :cond_5e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 3144
    const-string v7, "wpk-header"

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3145
    new-instance v6, Lcom/efs/sdk/base/a/h/b/d;

    invoke-direct {v6, v1}, Lcom/efs/sdk/base/a/h/b/d;-><init>(Ljava/lang/String;)V

    .line 3146
    invoke-virtual {v6, v2}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/util/Map;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v1

    .line 3147
    nop

    .line 4057
    iget-object v2, v1, Lcom/efs/sdk/base/a/h/b/d;->a:Lcom/efs/sdk/base/a/h/b/b;

    iput-object v4, v2, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    .line 4058
    iget-object v2, v1, Lcom/efs/sdk/base/a/h/b/d;->a:Lcom/efs/sdk/base/a/h/b/b;

    iput-boolean v3, v2, Lcom/efs/sdk/base/a/h/b/b;->g:Z

    .line 4059
    nop

    .line 3147
    iget-object v2, v0, Lcom/efs/sdk/base/a/a/c;->h:Ljava/lang/String;

    .line 3148
    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/efs/sdk/base/a/a/c;->l:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3149
    const-string v2, "size"

    invoke-virtual {v1, v2, v0}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v0

    .line 3150
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flow_limit"

    invoke-virtual {v0, v2, v1}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v0

    .line 3151
    invoke-static {}, Lcom/efs/sdk/base/a/a/d;->a()Lcom/efs/sdk/base/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/h/b/d;->a(Lcom/efs/sdk/base/http/AbsHttpListener;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v0

    .line 3152
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/h/b/d;->a()Lcom/efs/sdk/base/a/h/b/c;

    move-result-object v0

    .line 3153
    invoke-virtual {v0}, Lcom/efs/sdk/base/a/h/b/c;->b()Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    .line 42
    goto :goto_cf

    .line 46
    :cond_b3
    nop

    .line 4148
    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v2, v2, Lcom/efs/sdk/base/a/f/a;->c:I

    .line 46
    if-ne v3, v2, :cond_ca

    .line 47
    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    move-result-object v2

    .line 4191
    iget-object v3, p1, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 47
    nop

    .line 4229
    iget-object v4, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v4, v4, Lcom/efs/sdk/base/a/f/c;->b:Z

    .line 47
    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/efs/sdk/base/a/a/a;->a(Ljava/lang/String;Lcom/efs/sdk/base/a/a/c;Ljava/io/File;Z)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    goto :goto_cf

    .line 52
    :cond_ca
    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    .line 56
    :goto_cf
    iget-boolean v1, v0, Lcom/efs/sdk/base/http/HttpResponse;->succ:Z

    if-eqz v1, :cond_db

    if-eqz p2, :cond_db

    .line 57
    nop

    .line 5191
    iget-object p1, p1, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 57
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 59
    :cond_db
    return-object v0
.end method
