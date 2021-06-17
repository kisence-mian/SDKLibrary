.class final Lcom/tendcloud/tenddata/game/cx;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/dt;


# instance fields
.field final synthetic val$features:Lcom/tendcloud/tenddata/game/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/a;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cx;->val$features:Lcom/tendcloud/tenddata/game/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoreFailed()V
    .registers 3

    .line 272
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "init event store failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 278
    goto :goto_f

    .line 273
    :catchall_b
    move-exception v0

    .line 277
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 279
    :goto_f
    return-void
.end method

.method public onStoreSuccess()V
    .registers 3

    .line 257
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cx;->val$features:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/as;->a(ZLcom/tendcloud/tenddata/game/a;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 262
    goto :goto_8

    .line 258
    :catchall_7
    move-exception v0

    .line 264
    :goto_8
    return-void
.end method
