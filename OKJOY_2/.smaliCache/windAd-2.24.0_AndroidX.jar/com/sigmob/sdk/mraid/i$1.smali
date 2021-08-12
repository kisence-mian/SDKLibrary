.class Lcom/sigmob/sdk/mraid/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V
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
.field final synthetic a:Lcom/sigmob/sdk/base/common/a;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/sigmob/sdk/mraid/i;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/i;Lcom/sigmob/sdk/base/common/a;Ljava/lang/Integer;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i$1;->c:Lcom/sigmob/sdk/mraid/i;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/i$1;->a:Lcom/sigmob/sdk/base/common/a;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/i$1;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-static {p1}, Lcom/sigmob/sdk/mraid/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$1;->a:Lcom/sigmob/sdk/base/common/a;

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/common/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$1;->c:Lcom/sigmob/sdk/mraid/i;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {p1, v1, v1}, Lcom/sigmob/sdk/base/common/p;->a(ZI)V

    :cond_18
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$1;->c:Lcom/sigmob/sdk/mraid/i;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$1;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    goto :goto_6a

    :cond_22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4c

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/i$1;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4c

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$1;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    :cond_4c
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$1;->a:Lcom/sigmob/sdk/base/common/a;

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/base/common/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$1;->c:Lcom/sigmob/sdk/mraid/i;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    float-to-int v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(ZI)V

    :cond_5e
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$1;->c:Lcom/sigmob/sdk/mraid/i;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i$1;->a:Lcom/sigmob/sdk/base/common/a;

    float-to-int v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V
    :try_end_68
    .catchall {:try_start_0 .. :try_end_68} :catchall_69

    goto :goto_6a

    :catchall_69
    move-exception p1

    :goto_6a
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/i$1;->a(Ljava/lang/String;)V

    return-void
.end method
