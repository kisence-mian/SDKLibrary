.class Lcom/sigmob/sdk/common/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/a/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/sigmob/sdk/common/a/c$a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/common/a/a$b;->a:Lcom/sigmob/sdk/common/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/common/a/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/common/a/a$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/common/a/a$b;->d:Lcom/sigmob/sdk/common/a/c$a;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/common/a/a$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/common/a/a$b;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sigmob/sdk/common/a/a$b;->d:Lcom/sigmob/sdk/common/a/c$a;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lcom/sigmob/sdk/common/a/c$a;->onSuccess()V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    goto :goto_20

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/sigmob/sdk/common/a/a$b;->d:Lcom/sigmob/sdk/common/a/c$a;

    if-eqz v1, :cond_20

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/common/a/c$a;->onFailed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void
.end method
