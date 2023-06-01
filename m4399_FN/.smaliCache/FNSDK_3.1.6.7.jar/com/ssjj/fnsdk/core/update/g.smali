.class Lcom/ssjj/fnsdk/core/update/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/g;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/g;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/g;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/UpdateUtil;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
