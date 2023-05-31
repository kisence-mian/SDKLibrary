.class final Lcom/JoyFramework/d/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>([ZLandroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 76
    iput-object p1, p0, Lcom/JoyFramework/d/cd;->a:[Z

    iput-object p2, p0, Lcom/JoyFramework/d/cd;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/JoyFramework/d/cd;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/d/cd;->a:[Z

    array-length v0, v0

    if-lez v0, :cond_25

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/d/cd;->a:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_19

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/d/cd;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/cd;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    :goto_18
    return-void

    .line 83
    :cond_19
    iget-object v0, p0, Lcom/JoyFramework/d/cd;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/cd;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 86
    :cond_25
    iget-object v0, p0, Lcom/JoyFramework/d/cd;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/cd;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method
