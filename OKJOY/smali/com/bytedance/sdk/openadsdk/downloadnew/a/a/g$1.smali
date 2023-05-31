.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;
.super Ljava/lang/Object;
.source "LibUrlConnection4DZ.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;->a(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:I

.field final synthetic d:Ljava/net/HttpURLConnection;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;Ljava/io/InputStream;Ljava/util/Map;ILjava/net/HttpURLConnection;)V
    .registers 6

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->b:Ljava/util/Map;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->c:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->d:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->c:I

    return v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g$1;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    :goto_5
    return-void

    .line 76
    :catch_6
    move-exception v0

    goto :goto_5
.end method
