.class Lcom/JoyFramework/d/bp;
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
    .line 59
    iput-object p1, p0, Lcom/JoyFramework/d/bp;->b:Lcom/JoyFramework/d/bo;

    iput-object p2, p0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 68
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/ao;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ao;

    .line 69
    if-eqz v0, :cond_35

    .line 70
    iget-object v1, p0, Lcom/JoyFramework/d/bp;->b:Lcom/JoyFramework/d/bo;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ao;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/d/bo;->a(Lcom/JoyFramework/d/bo;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ao;->b()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ao;->c()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/JoyFramework/d/bp;->a:Landroid/app/Activity;

    new-instance v3, Lcom/JoyFramework/d/bq;

    invoke-direct {v3, p0, v2, v0}, Lcom/JoyFramework/d/bq;-><init>(Lcom/JoyFramework/d/bp;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Lcom/JoyFramework/d/e$b;)V

    .line 158
    :cond_35
    return-void
.end method
