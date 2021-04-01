.class Lcom/sigmob/sdk/base/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/a/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/sigmob/sdk/base/a/m;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/m;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/c;->a:Lcom/sigmob/sdk/base/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/base/a/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/a/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/a/c;->d:Lcom/sigmob/sdk/base/a/m;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c;->d:Lcom/sigmob/sdk/base/a/m;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c;->d:Lcom/sigmob/sdk/base/a/m;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/a/m;->onSuccess()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/c;->d:Lcom/sigmob/sdk/base/a/m;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/c;->d:Lcom/sigmob/sdk/base/a/m;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/base/a/m;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_19
.end method
