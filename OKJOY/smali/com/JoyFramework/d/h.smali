.class final Lcom/JoyFramework/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-static {}, Lcom/JoyFramework/d/e;->g()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 360
    invoke-static {}, Lcom/JoyFramework/d/e;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 361
    invoke-static {v1}, Lcom/JoyFramework/d/e;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 362
    invoke-static {v1}, Lcom/JoyFramework/d/e;->a(Landroid/view/View;)Landroid/view/View;

    .line 364
    :cond_14
    return-void
.end method
