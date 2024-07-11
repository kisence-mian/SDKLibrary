.class Lcom/bytedance/sdk/adnet/a/a$3;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


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
        "Lcom/bytedance/sdk/adnet/core/m$a<",
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

    .line 342
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iput p2, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 345
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    .line 346
    if-nez p1, :cond_10

    .line 347
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    .line 348
    return-void

    .line 350
    :cond_10
    const/4 v0, 0x0

    .line 352
    :try_start_11
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_18

    .line 354
    goto :goto_19

    .line 353
    :catch_18
    move-exception v1

    .line 355
    :goto_19
    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 356
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    .line 357
    return-void

    .line 360
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 361
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Lcom/bytedance/sdk/adnet/a/a;I)V

    goto :goto_44

    .line 363
    :cond_3b
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_44} :catch_45

    .line 366
    :goto_44
    goto :goto_46

    .line 365
    :catch_45
    move-exception p1

    .line 367
    :goto_46
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 371
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$3;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget v0, p0, Lcom/bytedance/sdk/adnet/a/a$3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Lcom/bytedance/sdk/adnet/a/a;I)V

    .line 372
    return-void
.end method
