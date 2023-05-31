.class Lcom/JoyFramework/module/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/JoyFramework/remote/b/c/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/JoyFramework/module/a/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/JoyFramework/module/a/e;->b:Lcom/JoyFramework/module/a/c;

    iput-object p2, p0, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 110
    const-string v0, "isEmulator:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 111
    iget-object v0, p0, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_27

    .line 112
    iget-object v0, p0, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "isEmulator:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 122
    :goto_26
    return-void

    .line 114
    :cond_27
    iget-object v0, p0, Lcom/JoyFramework/module/a/e;->b:Lcom/JoyFramework/module/a/c;

    invoke-static {v0, p1}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;Ljava/lang/String;)V

    goto :goto_26

    .line 117
    :cond_2d
    iget-object v0, p0, Lcom/JoyFramework/module/a/e;->b:Lcom/JoyFramework/module/a/c;

    invoke-static {v0, p1}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;Ljava/lang/String;)V

    goto :goto_26

    .line 120
    :cond_33
    iget-object v0, p0, Lcom/JoyFramework/module/a/e;->b:Lcom/JoyFramework/module/a/c;

    invoke-static {v0, p1}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 127
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/v;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/v;

    .line 129
    if-eqz v0, :cond_2a

    .line 131
    iget-object v1, p0, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_29

    .line 132
    iget-object v1, p0, Lcom/JoyFramework/module/a/e;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "\u62d2\u7edd\u8be5\u6743\u9650\uff0c\u4e0b\u6b21\u767b\u5f55\u5c06\u65e0\u6cd5\u4f7f\u7528\u81ea\u52a8\u767b\u5f55\u529f\u80fd"

    new-instance v4, Lcom/JoyFramework/module/a/f;

    invoke-direct {v4, p0, v0}, Lcom/JoyFramework/module/a/f;-><init>(Lcom/JoyFramework/module/a/e;Lcom/JoyFramework/remote/bean/v;)V

    invoke-static {v1, v2, v3, v4}, Lcom/JoyFramework/d/ba;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 153
    :cond_29
    :goto_29
    return-void

    .line 150
    :cond_2a
    iget-object v1, p0, Lcom/JoyFramework/module/a/e;->b:Lcom/JoyFramework/module/a/c;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/v;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/JoyFramework/module/a/c;->a(Lcom/JoyFramework/module/a/c;Ljava/lang/String;)V

    goto :goto_29
.end method
