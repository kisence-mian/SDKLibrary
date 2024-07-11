.class public final Lcom/bytedance/sdk/a/b/a/b/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/t;


# instance fields
.field public final a:Lcom/bytedance/sdk/a/b/v;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/v;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/a;->a:Lcom/bytedance/sdk/a/b/v;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/t$a;)Lcom/bytedance/sdk/a/b/aa;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/a/b/a/c/g;

    .line 41
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/c/g;->a()Lcom/bytedance/sdk/a/b/y;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/c/g;->f()Lcom/bytedance/sdk/a/b/a/b/g;

    move-result-object v2

    .line 45
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 46
    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/b/a;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v2, v4, p1, v3}, Lcom/bytedance/sdk/a/b/a/b/g;->a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Z)Lcom/bytedance/sdk/a/b/a/c/c;

    move-result-object p1

    .line 47
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/b/g;->b()Lcom/bytedance/sdk/a/b/a/b/c;

    move-result-object v3

    .line 49
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/bytedance/sdk/a/b/a/c/g;->a(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/c/c;Lcom/bytedance/sdk/a/b/a/b/c;)Lcom/bytedance/sdk/a/b/aa;

    move-result-object p1

    return-object p1
.end method
