.class Lcom/ssjj/fnsdk/core/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;


# instance fields
.field private final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ak;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ak;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ak;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_c

    const-string v1, "\u7528\u6237\u53d6\u6d88"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/ak;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_c
    return-void
.end method

.method public onPick(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ak;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v1, "outputPath"

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ak;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_13

    const-string v0, "\u6210\u529f"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ak;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_13
    return-void
.end method
