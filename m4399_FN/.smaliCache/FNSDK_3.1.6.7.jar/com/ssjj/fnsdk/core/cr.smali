.class Lcom/ssjj/fnsdk/core/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cr;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cr;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 4

    sget p2, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->CODE_START_BIND:I

    if-ne p1, p2, :cond_c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cr;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/cr;->b:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/app/Activity;)V

    goto :goto_12

    :cond_c
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cr;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Z)V

    :goto_12
    return-void
.end method
