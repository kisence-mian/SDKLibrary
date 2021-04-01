.class Lcom/bytedance/sdk/a/b/a/e/g$c$2;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/a/e/g$c;->a(ZLcom/bytedance/sdk/a/b/a/e/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/a/e/g$c;


# direct methods
.method varargs constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g$c;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 705
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c$2;->a:Lcom/bytedance/sdk/a/b/a/e/g$c;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c$2;->a:Lcom/bytedance/sdk/a/b/a/e/g$c;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->c:Lcom/bytedance/sdk/a/b/a/e/g$b;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c$2;->a:Lcom/bytedance/sdk/a/b/a/e/g$c;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g$b;->a(Lcom/bytedance/sdk/a/b/a/e/g;)V

    .line 709
    return-void
.end method
