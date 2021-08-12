.class final Lcom/anythink/core/common/res/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/res/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/res/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/res/a;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/anythink/core/common/res/a$1;->a:Lcom/anythink/core/common/res/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/anythink/core/common/res/a$1;->a:Lcom/anythink/core/common/res/a;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Lcom/anythink/core/common/res/a$1;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->a(Lcom/anythink/core/common/res/a;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 245
    monitor-exit v0

    return-object v2

    .line 247
    :cond_e
    iget-object v1, p0, Lcom/anythink/core/common/res/a$1;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->b(Lcom/anythink/core/common/res/a;)V

    .line 248
    iget-object v1, p0, Lcom/anythink/core/common/res/a$1;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->c(Lcom/anythink/core/common/res/a;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 249
    iget-object v1, p0, Lcom/anythink/core/common/res/a$1;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->d(Lcom/anythink/core/common/res/a;)V

    .line 250
    iget-object v1, p0, Lcom/anythink/core/common/res/a$1;->a:Lcom/anythink/core/common/res/a;

    invoke-static {v1}, Lcom/anythink/core/common/res/a;->e(Lcom/anythink/core/common/res/a;)I

    .line 252
    :cond_25
    monitor-exit v0

    .line 253
    return-object v2

    .line 252
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    .line 240
    invoke-direct {p0}, Lcom/anythink/core/common/res/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
