.class final Lcom/bytedance/sdk/a/b/a/c/b$a;
.super Lcom/bytedance/sdk/a/a/g;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/r;)V
    .registers 2

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/a/g;-><init>(Lcom/bytedance/sdk/a/a/r;)V

    .line 136
    return-void
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/a/a/c;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/a/a/g;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 141
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/c/b$a;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/c/b$a;->a:J

    .line 142
    return-void
.end method
