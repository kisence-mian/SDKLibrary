.class public Lcom/JoyFramework/module/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/JoyFramework/module/a/m;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 50
    iget-object v0, p0, Lcom/JoyFramework/module/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/bi;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 52
    iget-object v0, p0, Lcom/JoyFramework/module/a/m;->a:Landroid/content/Context;

    const-string v1, "PATCH_SDK_VERSION"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :try_start_13
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "joySdkVersion"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 56
    iput-object v1, p0, Lcom/JoyFramework/module/a/m;->b:Ljava/lang/String;

    .line 61
    :goto_25
    iget-object v1, p0, Lcom/JoyFramework/module/a/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 63
    iget-object v0, p0, Lcom/JoyFramework/module/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/bi;->c(Landroid/content/Context;)V

    .line 76
    :cond_32
    :goto_32
    return-void

    .line 58
    :cond_33
    const-string v1, "5.7"

    iput-object v1, p0, Lcom/JoyFramework/module/a/m;->b:Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_38

    goto :goto_25

    .line 72
    :catch_38
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatchLogic\u7c7b\u4e2d\u52a0\u8f7d\u672c\u5730\u8865\u4e01\u6587\u4ef6\u7684\u65b9\u6cd5\u62a5\u9519   ---->  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_32

    .line 66
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/JoyFramework/module/a/m;->a:Landroid/content/Context;

    const-string v1, "PATCH_DEX_VERSION"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bw;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 67
    if-le v0, v3, :cond_32

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/module/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/JoyFramework/b/b;->a(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_68} :catch_38

    goto :goto_32
.end method

.method public a(Lcom/JoyFramework/remote/bean/aa;)V
    .registers 7

    .prologue
    .line 42
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/a/m;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/aa;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p1}, Lcom/JoyFramework/remote/bean/aa;->c()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/JoyFramework/remote/b/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    return-void
.end method
