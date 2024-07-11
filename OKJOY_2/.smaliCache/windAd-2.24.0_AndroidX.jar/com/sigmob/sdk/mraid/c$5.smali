.class Lcom/sigmob/sdk/mraid/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/c;->e()Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/c;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/c;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c$5;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4e

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$5;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid/c;->a(Lcom/sigmob/sdk/mraid/c;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c$5;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/c;->g(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/c$f;

    move-result-object p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/c$5;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/c;->g(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/c$f;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$5;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->h(Lcom/sigmob/sdk/mraid/c;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/mraid/c$f;->a(Ljava/lang/Integer;)V
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    goto :goto_4e

    :catchall_4d
    move-exception p1

    :cond_4e
    :goto_4e
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/c$5;->a(Ljava/lang/String;)V

    return-void
.end method
