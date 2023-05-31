.class Lcom/bytedance/sdk/adnet/a/a$3;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/a/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/n$a",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/adnet/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/a/a;I)V
    .registers 3

    .prologue
    .line 340
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iput p2, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 344
    if-nez v0, :cond_10

    .line 345
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    .line 365
    :goto_f
    return-void

    .line 348
    :cond_10
    const/4 v1, 0x0

    .line 350
    :try_start_11
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_45

    move-result-object v1

    .line 353
    :goto_17
    const-string v2, "success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    goto :goto_f

    .line 358
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 359
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->b(Lcom/bytedance/sdk/adnet/a/a;I)V

    goto :goto_f

    .line 363
    :catch_39
    move-exception v0

    goto :goto_f

    .line 361
    :cond_3b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_44} :catch_39

    goto :goto_f

    .line 351
    :catch_45
    move-exception v2

    goto :goto_17
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    .line 370
    return-void
.end method
