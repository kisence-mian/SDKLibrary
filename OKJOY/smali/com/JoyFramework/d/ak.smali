.class Lcom/JoyFramework/d/ak;
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
.field final synthetic a:Lcom/JoyFramework/d/aj;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/aj;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/JoyFramework/d/ak;->a:Lcom/JoyFramework/d/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 165
    const-string v0, "showMoreGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 172
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/MoreGameBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/MoreGameBean;

    .line 173
    if-eqz v0, :cond_60

    .line 174
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameBean;->a()Ljava/util/List;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_60

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 176
    iget-object v0, p0, Lcom/JoyFramework/d/ak;->a:Lcom/JoyFramework/d/aj;

    invoke-static {v0, v2}, Lcom/JoyFramework/d/aj;->a(Lcom/JoyFramework/d/aj;Ljava/util/List;)Ljava/util/List;

    .line 177
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 179
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 180
    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    if-ge v1, v3, :cond_5d

    .line 181
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/MoreGameItem;

    .line 183
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->h()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->d()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/MoreGameItem;->a()I

    move-result v0

    .line 188
    iget-object v7, p0, Lcom/JoyFramework/d/ak;->a:Lcom/JoyFramework/d/aj;

    sget-object v8, Lcom/JoyFramework/d/aj$a;->a:Lcom/JoyFramework/d/aj$a;

    invoke-virtual {v7, v5, v0, v8}, Lcom/JoyFramework/d/aj;->a(Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)Ljava/lang/Runnable;

    move-result-object v5

    .line 189
    if-eqz v5, :cond_4c

    .line 190
    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 192
    :cond_4c
    iget-object v5, p0, Lcom/JoyFramework/d/ak;->a:Lcom/JoyFramework/d/aj;

    sget-object v7, Lcom/JoyFramework/d/aj$a;->b:Lcom/JoyFramework/d/aj$a;

    invoke-virtual {v5, v6, v0, v7}, Lcom/JoyFramework/d/aj;->a(Ljava/lang/String;ILcom/JoyFramework/d/aj$a;)Ljava/lang/Runnable;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_59

    .line 194
    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 180
    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 198
    :cond_5d
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 202
    :cond_60
    return-void
.end method
