.class Lcom/bytedance/sdk/openadsdk/h/b/c$1;
.super Ljava/lang/Object;
.source "VideoProxyDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/b/a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/h/b/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/b/c;Lcom/bytedance/sdk/openadsdk/h/b/a;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    if-nez v0, :cond_6f

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/b/c;->b(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)"

    .line 94
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    .line 101
    :goto_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/h/b/a;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/h/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/h/b/a;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/h/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/h/b/a;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/h/b/a;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/h/b/a;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/h/b/a;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/h/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 110
    :goto_6e
    return-void

    .line 98
    :cond_6f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c$1;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_78} :catch_79

    goto :goto_1d

    .line 108
    :catch_79
    move-exception v0

    goto :goto_6e
.end method
