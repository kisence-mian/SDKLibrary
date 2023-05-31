.class final Lcom/JoyFramework/d/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 211
    invoke-static {}, Lcom/JoyFramework/d/e;->f()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 212
    invoke-static {}, Lcom/JoyFramework/d/e;->f()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 214
    :cond_d
    return-void
.end method
