.class Lcom/JoyFramework/module/login/d/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/login/d/v;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/v;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/w;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/w;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;)V

    .line 141
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/w;->a:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u62d2\u7edd\u8be5\u6743\u9650\uff0c\u4e0b\u6b21\u767b\u5f55\u5c06\u65e0\u6cd5\u4f7f\u7528\u81ea\u52a8\u767b\u5f55\u529f\u80fd"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/JoyFramework/module/login/d/x;

    invoke-direct {v3, p0}, Lcom/JoyFramework/module/login/d/x;-><init>(Lcom/JoyFramework/module/login/d/w;)V

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 160
    return-void
.end method
