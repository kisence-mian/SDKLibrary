.class Lcom/JoyFramework/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/JoyFramework/c/m;->b:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1415
    sput-boolean v5, Lcom/JoyFramework/a/a;->t:Z

    .line 1416
    invoke-static {}, Lcom/JoyFramework/d/b/a;->a()V

    .line 1417
    iget-object v0, p0, Lcom/JoyFramework/c/m;->b:Lcom/JoyFramework/c/e;

    invoke-static {v0, v5}, Lcom/JoyFramework/c/e;->b(Lcom/JoyFramework/c/e;Z)Z

    .line 1418
    iget-object v0, p0, Lcom/JoyFramework/c/m;->b:Lcom/JoyFramework/c/e;

    invoke-static {v0, v5}, Lcom/JoyFramework/c/e;->c(Lcom/JoyFramework/c/e;Z)Z

    .line 1419
    iget-object v1, p0, Lcom/JoyFramework/c/m;->a:Ljava/lang/String;

    .line 1420
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1421
    const-string v1, "\u6e38\u620f\u5728\u7ebf\u65f6\u957f\u5df2\u8d85\u8fc7\u9650\u5236\uff0c\u5982\u9700\u7ee7\u7eed\u8bf7\u524d\u5f80\u5b9e\u540d\u8ba4\u8bc1\uff01"

    .line 1423
    :cond_1a
    iget-object v0, p0, Lcom/JoyFramework/c/m;->b:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->f(Lcom/JoyFramework/c/e;)I

    move-result v0

    if-nez v0, :cond_31

    .line 1425
    iget-object v0, p0, Lcom/JoyFramework/c/m;->b:Lcom/JoyFramework/c/e;

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v2, Lcom/JoyFramework/c/n;

    invoke-direct {v2, p0}, Lcom/JoyFramework/c/n;-><init>(Lcom/JoyFramework/c/m;)V

    const-string v3, "\u786e\u5b9a"

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$e;Ljava/lang/String;)V

    .line 1452
    :goto_30
    return-void

    .line 1433
    :cond_31
    iget-object v0, p0, Lcom/JoyFramework/c/m;->b:Lcom/JoyFramework/c/e;

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v2, Lcom/JoyFramework/c/o;

    invoke-direct {v2, p0}, Lcom/JoyFramework/c/o;-><init>(Lcom/JoyFramework/c/m;)V

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_30
.end method
