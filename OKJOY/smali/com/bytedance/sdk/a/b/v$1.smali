.class final Lcom/bytedance/sdk/a/b/v$1;
.super Lcom/bytedance/sdk/a/b/a/a;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/aa$a;)I
    .registers 3

    .prologue
    .line 184
    iget v0, p1, Lcom/bytedance/sdk/a/b/aa$a;->c:I

    return v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;
    .registers 6

    .prologue
    .line 158
    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/sdk/a/b/j;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/ac;)Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/j;)Lcom/bytedance/sdk/a/b/a/b/d;
    .registers 3

    .prologue
    .line 179
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/j;->a:Lcom/bytedance/sdk/a/b/a/b/d;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;)Ljava/net/Socket;
    .registers 5

    .prologue
    .line 169
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/a/b/j;->a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a/b/g;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/k;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    .prologue
    .line 189
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/a/b/k;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 190
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 136
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 137
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 141
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 142
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/a;Lcom/bytedance/sdk/a/b/a;)Z
    .registers 4

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/a;->a(Lcom/bytedance/sdk/a/b/a;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a/b/c;)Z
    .registers 4

    .prologue
    .line 152
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/j;->b(Lcom/bytedance/sdk/a/b/a/b/c;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/bytedance/sdk/a/b/j;Lcom/bytedance/sdk/a/b/a/b/c;)V
    .registers 3

    .prologue
    .line 174
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/j;->a(Lcom/bytedance/sdk/a/b/a/b/c;)V

    .line 175
    return-void
.end method
