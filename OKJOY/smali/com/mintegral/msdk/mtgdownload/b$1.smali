.class final Lcom/mintegral/msdk/mtgdownload/b$1;
.super Ljava/lang/Object;
.source "DownloadAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgdownload/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgdownload/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgdownload/b;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    .prologue
    .line 179
    invoke-static {}, Lcom/mintegral/msdk/mtgdownload/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection.onServiceConnected"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_15
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->d(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v3}, Lcom/mintegral/msdk/mtgdownload/b;->e(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgdownload/b;->f(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mintegral/msdk/mtgdownload/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->g(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->e:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->h(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->i(Lcom/mintegral/msdk/mtgdownload/b;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->a:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->j(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->g:[Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->k(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->i:[Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->l(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->j:[Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->m(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->k:[Ljava/lang/String;

    .line 191
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->n(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->l:[Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->o(Lcom/mintegral/msdk/mtgdownload/b;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->h:[Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->p(Lcom/mintegral/msdk/mtgdownload/b;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->m:Z

    .line 194
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->q(Lcom/mintegral/msdk/mtgdownload/b;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    .line 195
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v2}, Lcom/mintegral/msdk/mtgdownload/b;->r(Lcom/mintegral/msdk/mtgdownload/b;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->o:Z

    .line 1308
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1309
    const-string v3, "mComponentName"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v3, "mTitle"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v3, "mUrl"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v3, "mMd5"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v3, "mTargetMd5"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v3, "mReqClz"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v3, "succUrls"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->g:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1316
    const-string v3, "faiUrls"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->i:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1317
    const-string v3, "startUrls"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->j:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1318
    const-string v3, "pauseUrls"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->k:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1319
    const-string v3, "cancelUrls"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->l:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1320
    const-string v3, "carryonUrls"

    iget-object v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->h:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1321
    const-string v3, "rich_notification"

    iget-boolean v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->m:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1322
    const-string v3, "mSilent"

    iget-boolean v4, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1323
    const-string v3, "mWifiOnly"

    iget-boolean v1, v1, Lcom/mintegral/msdk/mtgdownload/b$a;->o:Z

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 198
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    iget-object v1, v1, Lcom/mintegral/msdk/mtgdownload/b;->a:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 199
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/b;->s(Lcom/mintegral/msdk/mtgdownload/b;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_110
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_110} :catch_111

    .line 202
    :goto_110
    return-void

    :catch_111
    move-exception v0

    goto :goto_110
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 206
    invoke-static {}, Lcom/mintegral/msdk/mtgdownload/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/b$1;->a:Lcom/mintegral/msdk/mtgdownload/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgdownload/b;->a(Lcom/mintegral/msdk/mtgdownload/b;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 208
    return-void
.end method
