.class Lcom/bytedance/sdk/adnet/core/h$a;
.super Ljava/io/FilterInputStream;
.source "HurlStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 3

    .prologue
    .line 173
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/h;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/h$a;->a:Ljava/net/HttpURLConnection;

    .line 175
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/h$a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 181
    return-void
.end method
