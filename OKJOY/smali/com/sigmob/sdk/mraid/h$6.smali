.class Lcom/sigmob/sdk/mraid/h$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/h;->e()Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$6;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4c

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$6;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$6;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->g(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/o;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$6;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->g(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/o;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$6;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->h(Lcom/sigmob/sdk/mraid/h;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid/o;->a(Ljava/lang/Integer;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4c} :catch_4d

    :cond_4c
    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    goto :goto_4c
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/h$6;->a(Ljava/lang/String;)V

    return-void
.end method
