.class Lcom/bytedance/sdk/a/b/a/e/g$c$3;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/e/g$c;->a(Lcom/bytedance/sdk/a/b/a/e/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/a/e/n;

.field final synthetic c:Lcom/bytedance/sdk/a/b/a/e/g$c;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g$c;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 5

    .line 727
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c$3;->c:Lcom/bytedance/sdk/a/b/a/e/g$c;

    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/e/g$c$3;->a:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c$3;->c:Lcom/bytedance/sdk/a/b/a/e/g$c;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->p:Lcom/bytedance/sdk/a/b/a/e/j;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c$3;->a:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->a(Lcom/bytedance/sdk/a/b/a/e/n;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 733
    goto :goto_d

    .line 732
    :catch_c
    move-exception v0

    .line 734
    :goto_d
    return-void
.end method
