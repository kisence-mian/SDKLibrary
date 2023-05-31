.class Lcom/androidquery/auth/GoogleHandle$Task;
.super Landroid/os/AsyncTask;
.source "GoogleHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/GoogleHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/GoogleHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/GoogleHandle;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/GoogleHandle;Lcom/androidquery/auth/GoogleHandle$Task;)V
    .registers 3

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;-><init>(Lcom/androidquery/auth/GoogleHandle;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 162
    const/4 v8, 0x0

    .line 165
    .local v8, "bundle":Landroid/os/Bundle;
    :try_start_1
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    # getter for: Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;
    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$0(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    # getter for: Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/androidquery/auth/GoogleHandle;->access$1(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    # getter for: Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;
    invoke-static {v3}, Lcom/androidquery/auth/GoogleHandle;->access$2(Lcom/androidquery/auth/GoogleHandle;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    # getter for: Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;
    invoke-static {v5}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    .line 166
    .local v10, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {v10}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    move-object v8, v0
    :try_end_28
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_28} :catch_33
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_28} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2e

    .line 175
    .end local v10    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :goto_28
    return-object v8

    .line 168
    :catch_29
    move-exception v9

    .line 169
    .local v9, "e":Landroid/accounts/AuthenticatorException;
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_28

    .line 170
    .end local v9    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2e
    move-exception v9

    .line 171
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_28

    .line 167
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_33
    move-exception v1

    goto :goto_28
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 182
    if-eqz p1, :cond_21

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 183
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/auth/GoogleHandle;->access$4(Lcom/androidquery/auth/GoogleHandle;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    # getter for: Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;
    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/GoogleHandle;->success(Landroid/content/Context;)V

    .line 190
    :goto_20
    return-void

    .line 187
    :cond_21
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    # getter for: Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;
    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, -0x66

    const-string v3, "rejected"

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidquery/auth/GoogleHandle;->failure(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_20
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
