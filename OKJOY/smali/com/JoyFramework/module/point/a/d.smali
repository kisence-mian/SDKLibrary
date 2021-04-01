.class Lcom/JoyFramework/module/point/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/point/a/a$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/JoyFramework/module/point/a/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/a/a;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 158
    iput-object p1, p0, Lcom/JoyFramework/module/point/a/d;->b:Lcom/JoyFramework/module/point/a/a;

    iput-object p2, p0, Lcom/JoyFramework/module/point/a/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .prologue
    .line 161
    if-eqz p1, :cond_7

    .line 162
    iget-object v0, p0, Lcom/JoyFramework/module/point/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/module/point/a/a/b;->b(Landroid/content/Context;)V

    .line 174
    :cond_7
    return-void
.end method
