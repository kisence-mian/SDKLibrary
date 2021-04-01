.class Lcom/JoyFramework/wight/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/a;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/JoyFramework/wight/b;->a:Lcom/JoyFramework/wight/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/JoyFramework/wight/b;->a:Lcom/JoyFramework/wight/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/a;->a(Lcom/JoyFramework/wight/a;Z)Z

    .line 124
    iget-object v0, p0, Lcom/JoyFramework/wight/b;->a:Lcom/JoyFramework/wight/a;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/a;->d()V

    .line 125
    return-void
.end method
