.class public Lcom/JoyFramework/remote/b/c/b;
.super Lrx/Subscriber;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lcom/JoyFramework/remote/b/c/a;"
    }
.end annotation


# instance fields
.field private a:Lcom/JoyFramework/remote/b/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/JoyFramework/remote/b/c/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Boolean;

.field private d:Lcom/JoyFramework/wight/Loading/af;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            "Lcom/JoyFramework/remote/b/c/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    .line 22
    iput-object p1, p0, Lcom/JoyFramework/remote/b/c/b;->c:Ljava/lang/Boolean;

    .line 23
    iput-object p2, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/JoyFramework/remote/b/c/b;->a:Lcom/JoyFramework/remote/b/c/c;

    .line 26
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_3c

    .line 27
    new-instance v0, Lcom/JoyFramework/wight/Loading/af$a;

    invoke-direct {v0, p2}, Lcom/JoyFramework/wight/Loading/af$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;

    const-string v2, "JoyGame_Dialog_theme"

    const-string v3, "style"

    .line 28
    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/wight/Loading/af$a;->a(I)Lcom/JoyFramework/wight/Loading/af$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af$a;->a()Lcom/JoyFramework/wight/Loading/af;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    .line 31
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0, v4}, Lcom/JoyFramework/wight/Loading/af;->setCanceledOnTouchOutside(Z)V

    .line 32
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0, v4}, Lcom/JoyFramework/wight/Loading/af;->setCancelable(Z)V

    .line 34
    :cond_3c
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 39
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 40
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->show()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 47
    :cond_2d
    :goto_2d
    return-void

    .line 43
    :catch_2e
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method private c()V
    .registers 2

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->d:Lcom/JoyFramework/wight/Loading/af;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/Loading/af;->dismiss()V

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_10

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 64
    :cond_10
    :goto_10
    return-void

    .line 61
    :catch_11
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/c/b;->c()V

    .line 146
    invoke-virtual {p0}, Lcom/JoyFramework/remote/b/c/b;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 147
    invoke-virtual {p0}, Lcom/JoyFramework/remote/b/c/b;->unsubscribe()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 152
    :cond_c
    :goto_c
    return-void

    .line 149
    :catch_d
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public onCompleted()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/c/b;->c()V

    .line 80
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/c/b;->c()V

    .line 87
    const-string v0, ""

    .line 88
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_a6

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 91
    const-string v0, "SocketTimeoutException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 92
    const-string v0, "\u8bf7\u6c42\u8fde\u63a5\u8d85\u65f6"

    .line 115
    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --->  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    .line 120
    :goto_37
    iget-object v1, p0, Lcom/JoyFramework/remote/b/c/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/JoyFramework/d/ar;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 121
    const-string v0, "\u65e0\u6cd5\u8bbf\u95ee\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u72b6\u6001"

    .line 124
    :cond_41
    iget-object v1, p0, Lcom/JoyFramework/remote/b/c/b;->a:Lcom/JoyFramework/remote/b/c/c;

    if-eqz v1, :cond_4a

    .line 125
    iget-object v1, p0, Lcom/JoyFramework/remote/b/c/b;->a:Lcom/JoyFramework/remote/b/c/c;

    invoke-interface {v1, v0}, Lcom/JoyFramework/remote/b/c/c;->a(Ljava/lang/String;)V

    .line 129
    :cond_4a
    return-void

    .line 93
    :cond_4b
    const-string v0, "JsonSyntaxException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 94
    const-string v0, "\u7f51\u7edc\u6ce2\u52a8\u4e86\u4e0b\u4e0b\uff0c\u8bf7\u91cd\u8bd5"

    goto :goto_1d

    .line 95
    :cond_56
    const-string v0, "IllegalStateException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 96
    const-string v0, "\u975e\u6cd5\u6570\u636e\u72b6\u6001\u5f02\u5e38"

    goto :goto_1d

    .line 97
    :cond_61
    const-string v0, "timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 98
    const-string v0, "\u8bf7\u6c42\u8fde\u63a5\u8d85\u65f6"

    goto :goto_1d

    .line 99
    :cond_6c
    const-string v0, "HTTP 404 Not Found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 100
    const-string v0, "\u8bf7\u6c42\u63a5\u53e3\u8bbf\u95ee\u5f02\u5e38-404"

    goto :goto_1d

    .line 101
    :cond_77
    const-string v0, "No address associated with hostname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 102
    const-string v0, "\u65e0\u6cd5\u8fde\u63a5\u5230API\u5730\u5740"

    goto :goto_1d

    .line 103
    :cond_82
    const-string v0, "ConnectException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 104
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u8bbe\u5907\u7f51\u7edc\u72b6\u6001"

    goto :goto_1d

    .line 110
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f02\u5e38\u4fe1\u606f -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d

    .line 113
    :cond_a2
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    goto/16 :goto_1d

    .line 117
    :cond_a6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/c/b;->c()V

    .line 136
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->a:Lcom/JoyFramework/remote/b/c/c;

    if-eqz v0, :cond_e

    .line 137
    iget-object v0, p0, Lcom/JoyFramework/remote/b/c/b;->a:Lcom/JoyFramework/remote/b/c/c;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/JoyFramework/remote/b/c/c;->b(Ljava/lang/String;)V

    .line 140
    :cond_e
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 73
    invoke-super {p0}, Lrx/Subscriber;->onStart()V

    .line 74
    invoke-direct {p0}, Lcom/JoyFramework/remote/b/c/b;->b()V

    .line 75
    return-void
.end method
