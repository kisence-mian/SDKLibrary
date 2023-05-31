.class Lcom/JoyFramework/c/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 145
    iput-object p1, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 150
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_a0

    sparse-switch v0, :sswitch_data_114

    .line 253
    :cond_5
    :goto_5
    return-void

    .line 153
    :sswitch_6
    :try_start_6
    sget-object v1, Lcom/JoyFramework/c/e;->m:Lcom/JoyFramework/common/InitListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/JoyFramework/common/InitListener;->initSuccess(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    iget-object v1, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Landroid/app/Activity;)V

    .line 157
    iget-object v1, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/JoyFramework/c/e;->a(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_22

    goto :goto_5

    .line 158
    :catch_22
    move-exception v0

    goto :goto_5

    .line 165
    :sswitch_24
    :try_start_24
    sget-object v1, Lcom/JoyFramework/c/e;->m:Lcom/JoyFramework/common/InitListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/JoyFramework/common/InitListener;->fail(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_5

    .line 166
    :catch_2e
    move-exception v0

    goto :goto_5

    .line 173
    :sswitch_30
    :try_start_30
    invoke-static {}, Lcom/JoyFramework/c/e;->i()Lcom/JoyFramework/common/LoginListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/JoyFramework/common/LoginListener;->loginSuccess(Ljava/lang/Object;)V

    .line 174
    const/4 v0, 0x1

    sput-boolean v0, Lcom/JoyFramework/a/a;->n:Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_3d

    goto :goto_5

    .line 175
    :catch_3d
    move-exception v0

    goto :goto_5

    .line 182
    :sswitch_3f
    const/4 v0, 0x0

    :try_start_40
    sput-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/a/a;->n:Z

    .line 184
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->cleanUser()V

    .line 185
    invoke-static {}, Lcom/JoyFramework/c/e;->i()Lcom/JoyFramework/common/LoginListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/JoyFramework/common/LoginListener;->fail(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/JoyFramework/user/OnLineUser;->getInstance()Lcom/JoyFramework/user/OnLineUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/OnLineUser;->resetAlreadySave()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5e} :catch_5f

    goto :goto_5

    .line 188
    :catch_5f
    move-exception v0

    goto :goto_5

    .line 197
    :sswitch_61
    const/4 v0, 0x1

    :try_start_62
    sput-boolean v0, Lcom/JoyFramework/a/a;->m:Z

    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/a/a;->n:Z

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    .line 200
    iget-object v0, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Z)Z

    .line 201
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->cleanUser()V

    .line 202
    sget-object v0, Lcom/JoyFramework/c/e;->n:Lcom/JoyFramework/common/UserApiListenerInfo;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/common/UserApiListenerInfo;->onLogout(Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/JoyFramework/user/OnLineUser;->getInstance()Lcom/JoyFramework/user/OnLineUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/OnLineUser;->resetAlreadySave()V

    .line 206
    iget-object v0, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_8a} :catch_8c

    goto/16 :goto_5

    .line 208
    :catch_8c
    move-exception v0

    goto/16 :goto_5

    .line 214
    :sswitch_8f
    :try_start_8f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/JoyFramework/remote/bean/w;

    if-eqz v0, :cond_5

    .line 215
    iget-object v1, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/JoyFramework/remote/bean/w;

    invoke-static {v1, v0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Lcom/JoyFramework/remote/bean/w;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9e} :catch_a0

    goto/16 :goto_5

    .line 249
    :catch_a0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 220
    :sswitch_a6
    :try_start_a6
    iget-object v1, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/JoyFramework/c/e;->a(Lcom/JoyFramework/c/e;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 224
    :sswitch_b1
    sget-boolean v0, Lcom/JoyFramework/c/e;->a:Z

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->b(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/wight/k;

    move-result-object v0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->b(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/wight/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/k;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 228
    :cond_c9
    invoke-static {}, Lcom/JoyFramework/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Lcom/JoyFramework/a/a;->F:Z

    .line 230
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->b()V

    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/d/e;->a:Z

    goto/16 :goto_5

    .line 237
    :sswitch_de
    invoke-static {}, Lcom/JoyFramework/module/point/a;->a()Lcom/JoyFramework/module/point/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/point/a;->c()V

    .line 238
    invoke-static {}, Lcom/JoyFramework/d/e;->d()V

    .line 239
    iget-object v0, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->c(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 240
    iget-object v0, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->c(Lcom/JoyFramework/c/e;)Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;->a()V

    .line 242
    :cond_f9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v1, v0, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 244
    iget-object v0, p0, Lcom/JoyFramework/c/f;->a:Lcom/JoyFramework/c/e;

    const/4 v1, 0x6

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 245
    const/4 v0, 0x0

    sput-boolean v0, Lcom/JoyFramework/c/e;->a:Z
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_112} :catch_a0

    goto/16 :goto_5

    .line 150
    :sswitch_data_114
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_24
        0x2 -> :sswitch_30
        0x3 -> :sswitch_3f
        0x6 -> :sswitch_61
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_de
        0x3e9 -> :sswitch_8f
        0x3ea -> :sswitch_a6
    .end sparse-switch
.end method
