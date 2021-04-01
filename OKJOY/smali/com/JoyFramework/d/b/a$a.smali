.class Lcom/JoyFramework/d/b/a$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/JoyFramework/d/b/b;)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/JoyFramework/d/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 56
    :try_start_0
    const-string v0, "\u6ce8\u610f"

    const-string v1, "\u4e0b\u9762\u51fa\u73b0\u7684\u65e5\u5fd7\uff0c\u4e0d\u5f71\u54cd\u6e38\u620f\uff0c\u53ef\u4ee5\u5ffd\u7565\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v0

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/JoyFramework/c/e;->e()I

    move-result v2

    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/c/e;->f()I

    move-result v3

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lcom/JoyFramework/remote/b/d/b;->a(Ljava/lang/String;II)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 62
    :goto_2a
    return-void

    .line 59
    :catch_2b
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method
