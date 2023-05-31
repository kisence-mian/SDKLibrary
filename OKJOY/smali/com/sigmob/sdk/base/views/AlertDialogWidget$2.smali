.class Lcom/sigmob/sdk/base/views/AlertDialogWidget$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/AlertDialogWidget;->setDialogListener(Lcom/sigmob/sdk/base/views/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/a;

.field final synthetic b:Lcom/sigmob/sdk/base/views/AlertDialogWidget;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/AlertDialogWidget;Lcom/sigmob/sdk/base/views/a;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget$2;->b:Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget$2;->a:Lcom/sigmob/sdk/base/views/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AlertDialogWidget$2;->a:Lcom/sigmob/sdk/base/views/a;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/a;->b()V

    return-void
.end method
