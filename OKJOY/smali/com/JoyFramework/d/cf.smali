.class Lcom/JoyFramework/d/cf;
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

.field final synthetic b:Lcom/JoyFramework/d/ce;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/ce;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 114
    iput-object p1, p0, Lcom/JoyFramework/d/cf;->b:Lcom/JoyFramework/d/ce;

    iput-object p2, p0, Lcom/JoyFramework/d/cf;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 117
    const-string v0, "TopOnUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: fetchAdParametersFailed,message is[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/JoyFramework/d/cf;->b:Lcom/JoyFramework/d/ce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Z)Z

    .line 119
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 124
    :try_start_1
    const-string v0, "TopOnUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNext: [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/JoyFramework/remote/bean/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/remote/bean/d;

    .line 126
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/d;->a()Lcom/JoyFramework/remote/bean/d$a;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_4c

    .line 128
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/d$a;->a()I

    move-result v1

    if-ne v1, v3, :cond_4c

    .line 130
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/d$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/d$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 151
    :cond_4c
    :goto_4c
    return-void

    .line 135
    :cond_4d
    iget-object v1, p0, Lcom/JoyFramework/d/cf;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/d$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/d$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-boolean v1, Lcom/JoyFramework/a/a;->af:Z

    invoke-static {v1}, Lcom/anythink/core/api/ATSDK;->setNetworkLogDebug(Z)V

    .line 137
    iget-object v1, p0, Lcom/JoyFramework/d/cf;->b:Lcom/JoyFramework/d/ce;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Z)Z

    .line 138
    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/d$a;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 139
    iget-object v1, p0, Lcom/JoyFramework/d/cf;->b:Lcom/JoyFramework/d/ce;

    invoke-virtual {v0}, Lcom/JoyFramework/remote/bean/d$a;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;Ljava/util/List;)Ljava/util/List;

    .line 140
    const-string v0, "TopOnUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad infoList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/d/cf;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v2}, Lcom/JoyFramework/d/ce;->a(Lcom/JoyFramework/d/ce;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/JoyFramework/d/cf;->b:Lcom/JoyFramework/d/ce;

    invoke-static {v0}, Lcom/JoyFramework/d/ce;->b(Lcom/JoyFramework/d/ce;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9f} :catch_a0

    goto :goto_4c

    .line 148
    :catch_a0
    move-exception v0

    .line 149
    const-string v1, "TopOnUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method
