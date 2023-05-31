.class final Lcom/JoyFramework/d/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 171
    iput-object p1, p0, Lcom/JoyFramework/d/bc;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/JoyFramework/d/bc;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/JoyFramework/d/bc;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/JoyFramework/d/ba;->d(Landroid/app/Activity;)V

    .line 175
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/JoyFramework/d/bc;->b:Ljava/lang/String;

    const-string v1, "\u60a8\u5df2\u7981\u6b62\u624b\u673a\u72b6\u6001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 180
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/d/bc;->a:Landroid/app/Activity;

    sget-object v2, Lcom/JoyFramework/c/e;->m:Lcom/JoyFramework/common/InitListener;

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(Landroid/content/Context;Lcom/JoyFramework/common/InitListener;)V

    .line 182
    :cond_15
    return-void
.end method
