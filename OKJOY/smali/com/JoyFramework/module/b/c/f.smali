.class Lcom/JoyFramework/module/b/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/b/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/c/e;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/JoyFramework/module/b/c/f;->a:Lcom/JoyFramework/module/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 135
    new-instance v0, Lcom/JoyFramework/d/a/b;

    invoke-direct {v0}, Lcom/JoyFramework/d/a/b;-><init>()V

    .line 136
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/a/b;->b(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/f;->a:Lcom/JoyFramework/module/b/c/e;

    iget-object v1, v1, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v1}, Lcom/JoyFramework/module/b/c/c;->a(Lcom/JoyFramework/module/b/c/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/a/b;->a(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/a/b;->d(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/JoyFramework/d/a/b;->c(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/JoyFramework/module/b/c/f;->a:Lcom/JoyFramework/module/b/c/e;

    iget-object v1, v1, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-virtual {v1}, Lcom/JoyFramework/module/b/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/JoyFramework/d/a/a;->a(Landroid/content/Context;)Lcom/JoyFramework/d/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/JoyFramework/d/a/a;->a(Lcom/JoyFramework/d/a/b;)V

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/JoyFramework/a/a;->K:Z

    .line 144
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/f;->a:Lcom/JoyFramework/module/b/c/e;

    iget-object v0, v0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v0}, Lcom/JoyFramework/module/b/c/c;->a(Lcom/JoyFramework/module/b/c/c;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/a/a;->L:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/JoyFramework/module/b/c/f;->a:Lcom/JoyFramework/module/b/c/e;

    iget-object v0, v0, Lcom/JoyFramework/module/b/c/e;->a:Lcom/JoyFramework/module/b/c/c;

    invoke-static {v0}, Lcom/JoyFramework/module/b/c/c;->b(Lcom/JoyFramework/module/b/c/c;)V

    .line 147
    return-void
.end method
