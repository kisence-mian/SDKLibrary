.class final Lcom/mintegral/msdk/base/controller/a$1;
.super Ljava/lang/Object;
.source "MTGSDKContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/mintegral/msdk/base/controller/a$b;

.field final synthetic c:Lcom/mintegral/msdk/base/controller/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/controller/a;Landroid/os/Handler;Lcom/mintegral/msdk/base/controller/a$b;)V
    .registers 4

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    iput-object p2, p0, Lcom/mintegral/msdk/base/controller/a$1;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mintegral/msdk/base/controller/a$1;->b:Lcom/mintegral/msdk/base/controller/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 161
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 164
    :try_start_b
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 165
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    .line 166
    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/a;->a(Lcom/mintegral/msdk/base/controller/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->a(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/controller/a;->a(Lcom/mintegral/msdk/base/controller/a;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_7e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2a} :catch_b2

    .line 184
    :cond_2a
    :goto_2a
    :try_start_2a
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 185
    if-nez v0, :cond_42

    .line 186
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 188
    :cond_42
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 189
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    const/16 v0, 0x9

    iput v0, v1, Landroid/os/Message;->what:I

    .line 191
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$1;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_51} :catch_b8

    .line 197
    :goto_51
    :try_start_51
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/a;->a(Lcom/mintegral/msdk/base/controller/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;)V

    .line 201
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->e()V

    .line 202
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/a;->a(Lcom/mintegral/msdk/base/controller/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-static {v1}, Lcom/mintegral/msdk/base/controller/a;->b(Lcom/mintegral/msdk/base/controller/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->l()Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/a;->c(Lcom/mintegral/msdk/base/controller/a;)V

    .line 206
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a$1;->b:Lcom/mintegral/msdk/base/controller/a$b;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->a(Lcom/mintegral/msdk/base/controller/a$b;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7d} :catch_bd

    .line 222
    :goto_7d
    return-void

    .line 170
    :catch_7e
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->a:Ljava/lang/String;

    const-string v1, "GET ADID ERROR TRY TO GET FROM GOOGLE PLAY APP"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_86
    new-instance v0, Lcom/mintegral/msdk/base/controller/a$a;

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/controller/a$a;-><init>(Lcom/mintegral/msdk/base/controller/a;)V

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-static {v1}, Lcom/mintegral/msdk/base/controller/a;->a(Lcom/mintegral/msdk/base/controller/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a$a;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/controller/a$a$a;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a$a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/c;->a(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/a$1;->c:Lcom/mintegral/msdk/base/controller/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a$a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/controller/a;->a(Lcom/mintegral/msdk/base/controller/a;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_a7} :catch_a8

    goto :goto_2a

    .line 177
    :catch_a8
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/base/controller/a;->a:Ljava/lang/String;

    const-string v1, "GET ADID FROM GOOGLE PLAY APP ERROR"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 180
    :catch_b2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2a

    .line 193
    :catch_b8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    .line 222
    :catch_bd
    move-exception v0

    goto :goto_7d
.end method
