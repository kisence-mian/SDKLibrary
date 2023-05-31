.class Lcom/bytedance/sdk/openadsdk/h/b/c$2;
.super Ljava/lang/Object;
.source "VideoProxyDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/b/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/h/b/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/b/c;I)V
    .registers 3

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$2;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$2;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->b(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "video_http_header_t"

    const-string v2, "flag=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$2;->a:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 178
    :goto_1d
    return-void

    .line 176
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
