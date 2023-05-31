.class Lcom/JoyFramework/wight/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/n;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/n;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/JoyFramework/wight/o;->a:Lcom/JoyFramework/wight/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/JoyFramework/wight/o;->a:Lcom/JoyFramework/wight/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/n;->a(Lcom/JoyFramework/wight/n;Z)Z

    .line 121
    iget-object v0, p0, Lcom/JoyFramework/wight/o;->a:Lcom/JoyFramework/wight/n;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/n;->d()V

    .line 122
    return-void
.end method
