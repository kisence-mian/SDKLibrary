.class Lcom/JoyFramework/module/login/e/m;
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
.field final synthetic a:Lcom/JoyFramework/module/login/e/j;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/e/j;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/JoyFramework/module/login/e/m;->a:Lcom/JoyFramework/module/login/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/m;->a:Lcom/JoyFramework/module/login/e/j;

    invoke-static {v0}, Lcom/JoyFramework/module/login/e/j;->a(Lcom/JoyFramework/module/login/e/j;)Lcom/JoyFramework/module/login/b/g$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/login/b/g$b;->a(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 114
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/w;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/w;

    .line 115
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/w;->l()I

    move-result v1

    .line 117
    if-nez v1, :cond_49

    .line 120
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/w;->a(Ljava/lang/String;)V

    .line 122
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/JoyFramework/remote/bean/w;->i(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/JoyFramework/module/login/e/m;->a:Lcom/JoyFramework/module/login/e/j;

    invoke-static {v1}, Lcom/JoyFramework/module/login/e/j;->a(Lcom/JoyFramework/module/login/e/j;)Lcom/JoyFramework/module/login/b/g$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/login/b/g$b;->a(Lcom/JoyFramework/remote/bean/w;)V

    .line 131
    :goto_48
    return-void

    .line 124
    :cond_49
    const/4 v2, 0x1

    if-ne v1, v2, :cond_56

    .line 126
    iget-object v1, p0, Lcom/JoyFramework/module/login/e/m;->a:Lcom/JoyFramework/module/login/e/j;

    invoke-static {v1}, Lcom/JoyFramework/module/login/e/j;->a(Lcom/JoyFramework/module/login/e/j;)Lcom/JoyFramework/module/login/b/g$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/login/b/g$b;->b(Lcom/JoyFramework/remote/bean/w;)V

    goto :goto_48

    .line 129
    :cond_56
    iget-object v1, p0, Lcom/JoyFramework/module/login/e/m;->a:Lcom/JoyFramework/module/login/e/j;

    invoke-static {v1}, Lcom/JoyFramework/module/login/e/j;->a(Lcom/JoyFramework/module/login/e/j;)Lcom/JoyFramework/module/login/b/g$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/JoyFramework/module/login/b/g$b;->c(Lcom/JoyFramework/remote/bean/w;)V

    goto :goto_48
.end method
