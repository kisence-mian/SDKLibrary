.class Lcom/ssjj/fnsdk/unity/sdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/unity/sdk/i;->a:Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V
    .registers 5

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNCode;->isSucc(I)Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/unity/sdk/i;->a:Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/unity/sdk/FNUnityActivity;->a(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method
