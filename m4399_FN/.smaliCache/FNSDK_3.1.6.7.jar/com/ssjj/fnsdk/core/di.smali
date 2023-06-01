.class Lcom/ssjj/fnsdk/core/di;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/di;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/di;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/di;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/di;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->install(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
