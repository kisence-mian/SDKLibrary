.class public Lcom/JoyFramework/module/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/a/n$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "0"

.field private static final e:Ljava/lang/String; = "1"

.field private static final f:Ljava/lang/String; = "2"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/JoyFramework/wight/z;

.field public c:Lcom/JoyFramework/wight/z;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/JoyFramework/module/a/n;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, -0x1

    .line 174
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 231
    :cond_11
    :goto_11
    return-void

    .line 177
    :cond_12
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->c:Lcom/JoyFramework/wight/z;

    if-nez v0, :cond_30

    .line 178
    new-instance v0, Lcom/JoyFramework/wight/z;

    iget-object v1, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    const-string v3, "JoyGame_Dialog_theme"

    const-string v4, "style"

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    new-instance v5, Lcom/JoyFramework/module/a/p;

    invoke-direct {v5, p0, p2}, Lcom/JoyFramework/module/a/p;-><init>(Lcom/JoyFramework/module/a/n;Ljava/lang/String;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/z;-><init>(Landroid/content/Context;ILjava/lang/String;ZLcom/JoyFramework/wight/z$a;)V

    iput-object v0, p0, Lcom/JoyFramework/module/a/n;->c:Lcom/JoyFramework/wight/z;

    .line 214
    :cond_30
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->c:Lcom/JoyFramework/wight/z;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->c:Lcom/JoyFramework/wight/z;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/z;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 215
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->c:Lcom/JoyFramework/wight/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/z;->setCancelable(Z)V

    .line 216
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 217
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->c:Lcom/JoyFramework/wight/z;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/z;->show()V

    .line 219
    :cond_5b
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->c:Lcom/JoyFramework/wight/z;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/z;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 223
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 225
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 227
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_11
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/module/a/n$a;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 91
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 168
    :cond_12
    :goto_12
    return-void

    .line 94
    :cond_13
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->b:Lcom/JoyFramework/wight/z;

    if-nez v0, :cond_30

    .line 95
    new-instance v0, Lcom/JoyFramework/wight/z;

    iget-object v1, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    const-string v3, "JoyGame_Dialog_theme"

    const-string v5, "style"

    invoke-static {v2, v3, v5}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v5, Lcom/JoyFramework/module/a/o;

    invoke-direct {v5, p0, p2, p3}, Lcom/JoyFramework/module/a/o;-><init>(Lcom/JoyFramework/module/a/n;Ljava/lang/String;Lcom/JoyFramework/module/a/n$a;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/z;-><init>(Landroid/content/Context;ILjava/lang/String;ZLcom/JoyFramework/wight/z$a;)V

    iput-object v0, p0, Lcom/JoyFramework/module/a/n;->b:Lcom/JoyFramework/wight/z;

    .line 151
    :cond_30
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->b:Lcom/JoyFramework/wight/z;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->b:Lcom/JoyFramework/wight/z;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/z;->isShowing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 152
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->b:Lcom/JoyFramework/wight/z;

    invoke-virtual {v0, v4}, Lcom/JoyFramework/wight/z;->setCancelable(Z)V

    .line 153
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 154
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->b:Lcom/JoyFramework/wight/z;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/z;->show()V

    .line 156
    :cond_5a
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->b:Lcom/JoyFramework/wight/z;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/z;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 160
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 162
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 164
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_12
.end method


# virtual methods
.method public a(Lcom/JoyFramework/remote/bean/as;Lcom/JoyFramework/module/a/n$a;)V
    .registers 5

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/as;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    const-string v0, "success"

    invoke-interface {p2, v0}, Lcom/JoyFramework/module/a/n$a;->a(Ljava/lang/String;)V

    .line 66
    :goto_11
    return-void

    .line 54
    :cond_12
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/as;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 56
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/as;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/JoyFramework/module/a/n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/module/a/n$a;)V

    goto :goto_11

    .line 64
    :catch_2a
    move-exception v0

    goto :goto_11

    .line 57
    :cond_2c
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/as;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 59
    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/as;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/as;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/module/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "update"

    invoke-interface {p2, v0}, Lcom/JoyFramework/module/a/n$a;->a(Ljava/lang/String;)V

    goto :goto_11

    .line 62
    :cond_49
    const-string v0, "success"

    invoke-interface {p2, v0}, Lcom/JoyFramework/module/a/n$a;->a(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_2a

    goto :goto_11
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lcom/JoyFramework/wight/i;

    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    iget-object v2, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    const-string v3, "JoyGame_Dialog_theme"

    const-string v4, "style"

    invoke-static {v2, v3, v4}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lcom/JoyFramework/wight/i;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/JoyFramework/module/a/n;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 80
    invoke-virtual {v1}, Lcom/JoyFramework/wight/i;->show()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 85
    :cond_2c
    :goto_2c
    return-void

    .line 82
    :catch_2d
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " UpdateNoticeLogic --->  Downloadwebview  \u51fa\u9519   :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_2c
.end method
