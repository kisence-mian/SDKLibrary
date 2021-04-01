.class Lcom/JoyFramework/module/point/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/a/a$a;

.field final synthetic b:Lcom/JoyFramework/module/point/a/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/a/a;Lcom/JoyFramework/module/point/a/a$a;)V
    .registers 3

    .prologue
    .line 246
    iput-object p1, p0, Lcom/JoyFramework/module/point/a/g;->b:Lcom/JoyFramework/module/point/a/a;

    iput-object p2, p0, Lcom/JoyFramework/module/point/a/g;->a:Lcom/JoyFramework/module/point/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 250
    iget-object v0, p0, Lcom/JoyFramework/module/point/a/g;->a:Lcom/JoyFramework/module/point/a/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/point/a/a$a;->a(Z)V

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    return-void
.end method
