.class Lcom/ssjj/fnsdk/core/update/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/f;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 4

    sget p2, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->CODE_GET_SIZE_SUCCESS:I

    if-ne p1, p2, :cond_3f

    const-string p1, "size"

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/f;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/f;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/f;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/f;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->h(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)I

    move-result p2

    int-to-long p2, p2

    invoke-static {p2, p3}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setSize(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/f;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->i(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/f;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->j(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    goto :goto_41

    :cond_3f
    sget p1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->CODE_GET_SIZE_FAILURE:I

    :cond_41
    :goto_41
    return-void
.end method
