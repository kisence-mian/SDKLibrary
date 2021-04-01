.class public Lcom/JoyFramework/wight/Loading/af$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/wight/Loading/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x50

    iput v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->b:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->d:I

    .line 77
    iput-boolean v1, p0, Lcom/JoyFramework/wight/Loading/af$a;->e:Z

    .line 79
    iput-boolean v1, p0, Lcom/JoyFramework/wight/Loading/af$a;->f:Z

    .line 82
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/af$a;->a:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/Loading/af$a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/JoyFramework/wight/Loading/af$a;)I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->d:I

    return v0
.end method

.method static synthetic c(Lcom/JoyFramework/wight/Loading/af$a;)Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/JoyFramework/wight/Loading/af$a;)Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->f:Z

    return v0
.end method


# virtual methods
.method public a(I)Lcom/JoyFramework/wight/Loading/af$a;
    .registers 2

    .prologue
    .line 86
    iput p1, p0, Lcom/JoyFramework/wight/Loading/af$a;->d:I

    .line 87
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/JoyFramework/wight/Loading/af$a;
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/af$a;->c:Ljava/lang/CharSequence;

    .line 97
    return-object p0
.end method

.method public a(Z)Lcom/JoyFramework/wight/Loading/af$a;
    .registers 2

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/JoyFramework/wight/Loading/af$a;->e:Z

    .line 107
    iput-boolean p1, p0, Lcom/JoyFramework/wight/Loading/af$a;->f:Z

    .line 108
    return-object p0
.end method

.method public a()Lcom/JoyFramework/wight/Loading/af;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Lcom/JoyFramework/wight/Loading/af;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/JoyFramework/wight/Loading/af;-><init>(Lcom/JoyFramework/wight/Loading/af$a;Lcom/JoyFramework/wight/Loading/ag;)V

    return-object v0
.end method

.method public b(I)Lcom/JoyFramework/wight/Loading/af$a;
    .registers 2

    .prologue
    .line 91
    iput p1, p0, Lcom/JoyFramework/wight/Loading/af$a;->b:I

    .line 92
    return-object p0
.end method

.method public b(Z)Lcom/JoyFramework/wight/Loading/af$a;
    .registers 2

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/JoyFramework/wight/Loading/af$a;->f:Z

    .line 113
    return-object p0
.end method

.method public b()Lcom/JoyFramework/wight/Loading/af;
    .registers 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/JoyFramework/wight/Loading/af$a;->a()Lcom/JoyFramework/wight/Loading/af;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 123
    invoke-virtual {v1}, Lcom/JoyFramework/wight/Loading/af;->show()V

    .line 124
    :cond_1d
    return-object v1
.end method

.method public c(I)Lcom/JoyFramework/wight/Loading/af$a;
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/Loading/af$a;->c:Ljava/lang/CharSequence;

    .line 102
    return-object p0
.end method
