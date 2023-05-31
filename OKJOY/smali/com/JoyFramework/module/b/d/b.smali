.class Lcom/JoyFramework/module/b/d/b;
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
.field final synthetic a:Lcom/JoyFramework/module/b/d/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/b/d/a;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/JoyFramework/module/b/d/b;->a:Lcom/JoyFramework/module/b/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/b;->a:Lcom/JoyFramework/module/b/d/a;

    iget-object v0, v0, Lcom/JoyFramework/module/b/d/a;->a:Lcom/JoyFramework/module/b/b/a$b;

    invoke-interface {v0, p1}, Lcom/JoyFramework/module/b/b/a$b;->a(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/ac;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/ac;

    .line 73
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/ac;->a()[Lcom/JoyFramework/remote/bean/ad;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    array-length v3, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v3, :cond_22

    aget-object v4, v1, v0

    .line 77
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 79
    :cond_22
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/b;->a:Lcom/JoyFramework/module/b/d/a;

    iget-object v0, v0, Lcom/JoyFramework/module/b/d/a;->a:Lcom/JoyFramework/module/b/b/a$b;

    invoke-interface {v0, v2}, Lcom/JoyFramework/module/b/b/a$b;->a(Ljava/util/ArrayList;)V

    .line 84
    :goto_31
    return-void

    .line 82
    :cond_32
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/b;->a:Lcom/JoyFramework/module/b/d/a;

    iget-object v0, v0, Lcom/JoyFramework/module/b/d/a;->a:Lcom/JoyFramework/module/b/b/a$b;

    const-string v1, "\u6682\u65e0\u5145\u503c\u8bb0\u5f55"

    invoke-interface {v0, v1}, Lcom/JoyFramework/module/b/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_31
.end method
