.class final Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;
    }
.end annotation


# instance fields
.field private a:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;

    return-void
.end method


# virtual methods
.method protected a()Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_28

    :cond_19
    new-instance v0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;-><init>()V

    invoke-static {v0, p2}, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->a(Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;->b(Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker;->a:Lcom/ssjj/fnsdk/unity/core/FNUnityInvoker$UnityBackHolder;

    const/4 p1, 0x1

    return p1

    :cond_28
    :goto_28
    const/4 p1, 0x0

    return p1
.end method
