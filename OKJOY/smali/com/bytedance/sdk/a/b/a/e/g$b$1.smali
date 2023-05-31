.class final Lcom/bytedance/sdk/a/b/a/e/g$b$1;
.super Lcom/bytedance/sdk/a/b/a/e/g$b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/e/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/a/b/a/e/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 908
    return-void
.end method
