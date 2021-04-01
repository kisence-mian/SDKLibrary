.class Lcom/JoyFramework/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;)V
    .registers 2

    .prologue
    .line 969
    iput-object p1, p0, Lcom/JoyFramework/c/h;->a:Lcom/JoyFramework/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 973
    sget-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    if-nez v0, :cond_f

    .line 975
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->b()V

    .line 977
    :cond_f
    return-void
.end method
