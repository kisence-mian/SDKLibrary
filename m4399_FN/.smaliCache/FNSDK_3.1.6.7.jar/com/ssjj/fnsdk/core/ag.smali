.class Lcom/ssjj/fnsdk/core/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/af;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/af;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ag;->a:Lcom/ssjj/fnsdk/core/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
