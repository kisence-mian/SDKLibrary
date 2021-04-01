.class public abstract Lcom/JoyFramework/module/login/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/ViewGroup;

.field protected c:I

.field protected d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/JoyFramework/module/login/f/a;->c:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/login/f/a;->d:Z

    .line 34
    iput-object p1, p0, Lcom/JoyFramework/module/login/f/a;->a:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, Lcom/JoyFramework/module/login/f/a;->c:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 22
    iput p1, p0, Lcom/JoyFramework/module/login/f/a;->c:I

    .line 23
    return-void
.end method

.method public abstract a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end method

.method public abstract a(Landroid/view/View$OnClickListener;)V
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/JoyFramework/module/login/f/a;->d:Z

    return v0
.end method

.method public abstract b(I)Z
.end method

.method public c()Landroid/view/ViewGroup;
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/JoyFramework/module/login/f/a;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_25

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "must be inflate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_25
    iget-object v0, p0, Lcom/JoyFramework/module/login/f/a;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public c(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 75
    iget v0, p0, Lcom/JoyFramework/module/login/f/a;->c:I

    if-eq p1, v0, :cond_10

    .line 76
    iget-object v0, p0, Lcom/JoyFramework/module/login/f/a;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/module/login/f/a;->d:Z

    .line 82
    :goto_f
    return-void

    .line 79
    :cond_10
    iget-object v0, p0, Lcom/JoyFramework/module/login/f/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 80
    iput-boolean v1, p0, Lcom/JoyFramework/module/login/f/a;->d:Z

    goto :goto_f
.end method

.method public d()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/JoyFramework/module/login/f/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/login/f/a;->b:Landroid/view/ViewGroup;

    .line 90
    return-void
.end method
