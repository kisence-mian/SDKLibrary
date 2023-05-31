.class Lcom/JoyFramework/d/bs;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/d/bo;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/bo;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 218
    iput-object p1, p0, Lcom/JoyFramework/d/bs;->b:Lcom/JoyFramework/d/bo;

    iput-object p2, p0, Lcom/JoyFramework/d/bs;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u516c\u4f17\u53f7\u56fe\u7247\u7801\u8c03\u7528\u5931\u8d25 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/JoyFramework/d/bs;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 223
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u516c\u4f17\u53f7\u56fe\u7247\u7801\u8c03\u7528\u6210\u529f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/ak;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ak;

    .line 230
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ak;->b()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publicPic  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/bs;->a:Landroid/app/Activity;

    new-instance v3, Lcom/JoyFramework/d/bt;

    invoke-direct {v3, p0}, Lcom/JoyFramework/d/bt;-><init>(Lcom/JoyFramework/d/bs;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/remote/b/d/b$a;)V

    .line 249
    :cond_51
    return-void
.end method
