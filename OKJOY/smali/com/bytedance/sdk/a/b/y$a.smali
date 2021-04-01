.class public Lcom/bytedance/sdk/a/b/y$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/a/b/s;

.field b:Ljava/lang/String;

.field c:Lcom/bytedance/sdk/a/b/r$a;

.field d:Lcom/bytedance/sdk/a/b/z;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "GET"

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->b:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->c:Lcom/bytedance/sdk/a/b/r$a;

    .line 111
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/y;)V
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y;->a:Lcom/bytedance/sdk/a/b/s;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->a:Lcom/bytedance/sdk/a/b/s;

    .line 115
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->b:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y;->d:Lcom/bytedance/sdk/a/b/z;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->d:Lcom/bytedance/sdk/a/b/z;

    .line 117
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->e:Ljava/lang/Object;

    .line 118
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/y;->c:Lcom/bytedance/sdk/a/b/r;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r;->b()Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->c:Lcom/bytedance/sdk/a/b/r$a;

    .line 119
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/y$a;
    .registers 3

    .prologue
    .line 207
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 3

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/r;->b()Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->c:Lcom/bytedance/sdk/a/b/r$a;

    .line 192
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 4

    .prologue
    .line 122
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_a
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/y$a;->a:Lcom/bytedance/sdk/a/b/s;

    .line 124
    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 3

    .prologue
    .line 215
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->c:Lcom/bytedance/sdk/a/b/r$a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 184
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 6

    .prologue
    .line 235
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_18
    if-eqz p2, :cond_3f

    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_3f
    if-nez p2, :cond_66

    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_66
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/y$a;->b:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/y$a;->d:Lcom/bytedance/sdk/a/b/z;

    .line 245
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->c:Lcom/bytedance/sdk/a/b/r$a;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 167
    return-object p0
.end method

.method public a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 5

    .prologue
    .line 155
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_a
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/s;->a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    .line 157
    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_29
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/s;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bytedance/sdk/a/b/y$a;
    .registers 3

    .prologue
    .line 211
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 3

    .prologue
    .line 219
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->c:Lcom/bytedance/sdk/a/b/r$a;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 179
    return-object p0
.end method

.method public c()Lcom/bytedance/sdk/a/b/y$a;
    .registers 2

    .prologue
    .line 223
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c;->d:Lcom/bytedance/sdk/a/b/z;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/y$a;->b(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 3

    .prologue
    .line 227
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;
    .registers 3

    .prologue
    .line 231
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/a/b/y;
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/y$a;->a:Lcom/bytedance/sdk/a/b/s;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_c
    new-instance v0, Lcom/bytedance/sdk/a/b/y;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/y;-><init>(Lcom/bytedance/sdk/a/b/y$a;)V

    return-object v0
.end method
