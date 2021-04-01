.class Lcom/sigmob/sdk/mraid/x$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V
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
.field final synthetic a:Lcom/sigmob/sdk/base/common/a;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/sigmob/sdk/mraid/x;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/x;Lcom/sigmob/sdk/base/common/a;Ljava/lang/Integer;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x$2;->c:Lcom/sigmob/sdk/mraid/x;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/x$2;->a:Lcom/sigmob/sdk/base/common/a;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/x$2;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-static {p1}, Lcom/sigmob/sdk/mraid/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$2;->a:Lcom/sigmob/sdk/base/common/a;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$2;->c:Lcom/sigmob/sdk/mraid/x;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(ZI)V

    :cond_19
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$2;->c:Lcom/sigmob/sdk/mraid/x;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$2;->a:Lcom/sigmob/sdk/base/common/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :goto_23
    return-void

    :cond_24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v2, v4

    if-lez v2, :cond_50

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$2;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$2;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_50

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$2;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    :cond_50
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$2;->a:Lcom/sigmob/sdk/base/common/a;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$2;->c:Lcom/sigmob/sdk/mraid/x;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    const/4 v2, 0x0

    float-to-int v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/base/common/w;->a(ZI)V

    :cond_63
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$2;->c:Lcom/sigmob/sdk/mraid/x;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$2;->a:Lcom/sigmob/sdk/base/common/a;

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_23

    :catch_6e
    move-exception v0

    goto :goto_23
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/x$2;->a(Ljava/lang/String;)V

    return-void
.end method
