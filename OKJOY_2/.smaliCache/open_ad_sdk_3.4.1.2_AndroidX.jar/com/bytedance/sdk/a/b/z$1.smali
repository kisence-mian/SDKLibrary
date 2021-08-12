.class final Lcom/bytedance/sdk/a/b/z$1;
.super Lcom/bytedance/sdk/a/b/z;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[BII)Lcom/bytedance/sdk/a/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/u;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/u;I[BI)V
    .registers 5

    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/z$1;->a:Lcom/bytedance/sdk/a/b/u;

    iput p2, p0, Lcom/bytedance/sdk/a/b/z$1;->b:I

    iput-object p3, p0, Lcom/bytedance/sdk/a/b/z$1;->c:[B

    iput p4, p0, Lcom/bytedance/sdk/a/b/z$1;->d:I

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/u;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/z$1;->a:Lcom/bytedance/sdk/a/b/u;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/a/a/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/z$1;->c:[B

    iget v1, p0, Lcom/bytedance/sdk/a/b/z$1;->d:I

    iget v2, p0, Lcom/bytedance/sdk/a/b/z$1;->b:I

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/a/a/d;->c([BII)Lcom/bytedance/sdk/a/a/d;

    .line 116
    return-void
.end method

.method public b()J
    .registers 3

    .line 110
    iget v0, p0, Lcom/bytedance/sdk/a/b/z$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
